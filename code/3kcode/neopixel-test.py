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

######################### MAIN LOOP ##############################
i = 0
while True:
  # spin internal LED around! autoshow is on
  dot[0] = wheeld(i & 255)
#  dot[0] = (0,255,0)

  # also make the neopixels swirl around
  #for p in range(NUMPIXELS):
  #    idx = int ((p * 256 / NUMPIXELS) + i)
  #    neopixels[p] = wheel(idx & 255)
  #neopixels.show()
#  neopixels[0] = (0, 255, 0)
  neopixels[0] = wheeln(i & 255)
  neopixels[1] = wheeln(i & 255)
  neopixels[2] = wheeln(i & 255)
  neopixels[3] = wheeln(i & 255)
  neopixels.show()

  # use D3 as capacitive touch to turn on internal LED
#  if touch.value:
#      print("D3 touched!")
#  led.value = touch.value

#  print (i)
  i = (i+1) % 256  # run from 0 to 255
  time.sleep(0.02) # make bigger to slow down
