# Test program for the 3k badge
# Note this code has been designed with CircuitPython 2.0 libraries

import board
from digitalio import DigitalInOut, Direction, Pull
import touchio
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode
import adafruit_dotstar as dotstar
import time
import neopixel

# One pixel connected internally!
dot = dotstar.DotStar(board.APA102_SCK, board.APA102_MOSI, 1, brightness=0.4)

# Built in red LED
led = DigitalInOut(board.D13)
led.direction = Direction.OUTPUT

# Capacitive touch on D3
touch = touchio.TouchIn(board.D3)

# NeoPixel strip connected on D4
NUMPIXELS = 4
neopixels = neopixel.NeoPixel(board.D4, NUMPIXELS, brightness=0.2, auto_write=False)

# Used if we do HID output, see below
kbd = Keyboard()

######################### HELPERS ##############################

# Helper to give us a nice color swirl on DOT (R,G,B)
def wheeld(pos):
    # Input a value 0 to 255 to get a color value.
    # The colours are a transition r - g - b - back to r.
    if (pos < 0) or (pos > 255):
        return (0, 0, 0)
    if pos < 85:
        return (int(255 - pos*3), int(pos*3), 0)
    elif pos < 170:
        pos -= 85
        return (0, int(255 - (pos*3)), int(pos*3))
    else:
        pos -= 170
        return (int(pos*3), 0, int(255 - pos*3))

# Helper to give us a nice color swirl on NeoPixel (G,R,B)
def wheeln(pos):
    # Input a value 0 to 255 to get a color value.
    # The colours are a transition r - g - b - back to r.
    if (pos < 0) or (pos > 255):
        return (0, 0, 0)
    if pos < 85:
        # return (int(255 - pos*3), int(pos*3), 0)
        return (int(pos*3), int(255 - pos*3), 0)
    elif pos < 170:
        pos -= 85
        # return (0, int(255 - (pos*3)), int(pos*3))
        return (int(255 - (pos*3)), 0, int(pos*3))
    else:
        pos -= 170
        # return (int(pos*3), 0, int(255 - pos*3))
        return (0, int(pos*3), int(255 - pos*3))

# Helper to simulate a red siren on NeoPixel (G,R,B)
def sirenred(pos, sft):
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if pos < 64:
        return (0, int(pos*4), 0)
    elif (pos > 63) and (pos < 128):
        return (0, int(510 - (pos*4)), 0)
    elif (pos > 127) and (pos < 192):
        return (0, int(pos*4), 0)
    elif (pos > 191):
        return (0, int(510 - (pos*4)), 0)
    else:
        return (0, 0, 0)
# Helper to simulate a blue siren on NeoPixel (G,R,B)
def sirenblue(pos, sft):
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if pos < 64:
        return (0, 0, int(pos*4))
    elif (pos > 63) and (pos < 128):
        return (0, 0, int(510 - (pos*4)))
    elif (pos > 127) and (pos < 192):
        return (0, 0, int(pos*4))
    elif (pos > 191):
        return (0, 0, int(510 - (pos*4)))
    else:
        return (0, 0, 0)

def flashrw(pos, sft):
    posred = [1,2,3,4,9,10,11,12,17,18,19,20,25,26,27,28,129,130,131,132,137,138,139,140,145,146,147,148,153,154,155,156]
    posblue = [262,263]
    poswhite = [42,43,49,50,106,107,113,114,170,171,177,178,234,235,241,242]
    posyellow = [264,265]
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if pos in posred:
        return (0, 255, 0)
    elif pos in posblue:
        return (0, 0, 255)
    elif pos in poswhite:
        return (255, 255, 255)
    elif pos in posyellow:
        return (255, 255, 0)
    else:
        return (0, 0, 0)

def flashby(pos, sft):
    posred = [262,263]
    posblue = [65,66,67,68,73,74,75,76,81,82,83,84,89,90,91,92,193,194,195,196,201,202,203,204,209,210,211,212,217,218,219,220]
    poswhite = [264,265]
    posyellow = [45,46,52,53,109,110,116,117,173,174,180,181,237,238,244,245]
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if pos in posred:
        return (0, 255, 0)
    elif pos in posblue:
        return (0, 0, 255)
    elif pos in poswhite:
        return (255, 255, 255)
    elif pos in posyellow:
        return (255, 255, 0)
    else:
        return (0, 0, 0)

######################### MAIN LOOP ##############################
i = 0
while True:
  # spin internal LED around! autoshow is on
#  dot[0] = wheeld(i & 255)
  dot[0] = (0,0,0)

# neopixel values = (G,R,B)
#  neopixels[0] = sirenred(i, 0)
#  neopixels[1] = sirenred(i, 16)
#  neopixels[2] = sirenblue(i, 32)
#  neopixels[3] = sirenblue(i, 8)
  neopixels[0] = sirenred(i, 0)
  neopixels[1] = sirenblue(i, 32)
  neopixels[2] = flashrw(i, 0)
  neopixels[3] = flashby(i, 0)
  neopixels.show()

  # use D3 as capacitive touch to turn on internal LED
#  if touch.value:
#      print("D3 touched!")
#  led.value = touch.value

#  print (i)
  i = (i+1) % 256
#  time.sleep(0.001) # make bigger to slow down
