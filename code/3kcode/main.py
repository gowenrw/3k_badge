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
NUMPIXELSD4 = 3
neopixelsd4 = neopixel.NeoPixel(board.D4, NUMPIXELSD4, brightness=0.2, auto_write=False)

# NeoPixel strip connected on D2
NUMPIXELSD2 = 3
neopixelsd2 = neopixel.NeoPixel(board.D2, NUMPIXELSD2, brightness=0.2, auto_write=False)

# NeoPixel strip connected on D2
NUMPIXELSD1 = 4
neopixelsd1 = neopixel.NeoPixel(board.D1, NUMPIXELSD1, brightness=0.2, auto_write=False)

# Used if we do HID output, see below
kbd = Keyboard()

######################### FUNCTIONS ##############################

# Function to give us a nice color swirl on DOT (R,G,B)
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

# Function to give us a nice color swirl on NeoPixel (G,R,B)
def wheeln(pos, sft):
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if (pos < 0) or (pos > 255):
        return (0, 0, 0)
    if pos < 85:
        return (int(pos*3), int(255 - pos*3), 0)
    elif pos < 170:
        pos -= 85
        return (int(255 - (pos*3)), 0, int(pos*3))
    else:
        pos -= 170
        return (0, int(pos*3), int(255 - pos*3))

# Function to simulate a red/blue siren on NeoPixel (G,R,B)
def siren(pos, sft):
    # pos = position, sft = shift
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if pos < 32:
        # Red Low-High
        return (0, int(pos*8), 0)
    elif (pos > 31) and (pos < 64):
        # Red High-Low
        return (0, int(510 - (pos*8)), 0)
    elif (pos > 63) and (pos < 96):
        # Blue Low-High
        return (0, 0, int((pos*8) - 510))
    elif (pos > 95) and (pos < 128):
        # Blue High-Low
        return (0, 0, int(1020 - (pos*8)))
    elif (pos > 127) and (pos < 160):
        # Red Low-High
        return (0, int((pos*8) - 1020), 0)
    elif (pos > 159) and (pos < 192):
        # Red High-Low
        return (0, int(1530 - (pos*8)), 0)
    elif (pos > 191) and (pos < 224):
        # Blue Low-High
        return (0, 0, int((pos*8) - 1530))
    elif (pos > 223):
        # Blue High-Low
        return (0, 0, int(2040 - (pos*8)))
    else:
        return (0, 0, 0)

# Function to flash red and white on NeoPixel (G,R,B)
def flashrw(pos, sft):
    # pos = position, sft = shift
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

# Function to flash blue and yellow on NeoPixel (G,R,B)
def flashby(pos, sft):
    # pos = position, sft = shift
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

# Function to flash red and blue on NeoPixel (G,R,B) or Dot (R,G,B)
def flashrb(pos, sft, nd):
    # pos = position, sft = shift, nd = 0 neopixel 1 dot (flips red and green)
    posred = [1,2,3,4,9,10,11,12,17,18,19,20,25,26,27,28,129,130,131,132,137,138,139,140,145,146,147,148,153,154,155,156]
    posblue = [65,66,67,68,73,74,75,76,81,82,83,84,89,90,91,92,193,194,195,196,201,202,203,204,209,210,211,212,217,218,219,220]
    poswhite = [262,263]
    posyellow = [264,265]
    if (pos + sft) > 255:
        pos = (pos + sft) - 256
    else:
        pos = (pos + sft)
    if pos in posred:
        if nd == 1:
            return (255, 0, 0)
        else:
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
mode = 0
touched = 0
i = 0
while True:
    # NeoPixels are on D1 and D2 and D4
    # NeoPixel values are in the color order (G, R, B)
    # The onboard Dot uses color order (R, G, B)

    if (mode == 0):
        # Bad boys, bad boys, whatchya gonna do?
        neopixelsd1[0] = siren(i, 16)
        neopixelsd1[1] = siren(i, 8)
        neopixelsd1[2] = siren(i, 0)
        neopixelsd1[3] = siren(i, 0)
        neopixelsd1.show()
        neopixelsd2[0] = siren(i, 0)
        neopixelsd2[1] = flashrw(i, 0)
        neopixelsd2[2] = flashby(i, 128)
        neopixelsd2.show()
        neopixelsd4[0] = siren(i, 64)
        neopixelsd4[1] = flashby(i, 0)
        neopixelsd4[2] = flashrw(i, 128)
        neopixelsd4.show()
        dot[0] = flashrb(i, 128, 1)
    elif (mode == 1):
        # Candy is dandy but liquor is quicker!
        neopixelsd1[0] = wheeln(i, 0)
        neopixelsd1[1] = wheeln(i, 16)
        neopixelsd1[2] = wheeln(i, 48)
        neopixelsd1[3] = wheeln(i, 32)
        neopixelsd1.show()
        neopixelsd2[0] = wheeln(i, 80)
        neopixelsd2[1] = wheeln(i, 64)
        neopixelsd2[2] = wheeln(i, 96)
        neopixelsd2.show()
        neopixelsd4[0] = wheeln(i, 128)
        neopixelsd4[1] = wheeln(i, 112)
        neopixelsd4[2] = wheeln(i, 144)
        neopixelsd4.show()
        dot[0] = wheeld(i)
    else:
        # All Off
        neopixelsd1[0] = (0, 0, 0)
        neopixelsd1[1] = (0, 0, 0)
        neopixelsd1[2] = (0, 0, 0)
        neopixelsd1[3] = (0, 0, 0)
        neopixelsd1.show()
        neopixelsd2[0] = (0, 0, 0)
        neopixelsd2[1] = (0, 0, 0)
        neopixelsd2[2] = (0, 0, 0)
        neopixelsd2.show()
        neopixelsd4[0] = (0, 0, 0)
        neopixelsd4[1] = (0, 0, 0)
        neopixelsd4[2] = (0, 0, 0)
        neopixelsd4.show()
        dot[0] = (0, 0, 0)

    # use D3 as capacitive touch to turn on internal LED and change mode
    if touch.value:
        print("D3 touched! Changing mode")
        touched = 1
    led.value = touch.value

    if (i == 255) and (touched == 1):
        mode = (mode+1)
        touched = 0
        if (mode > 2):
            mode = 0

    # print (i)
    i = (i+1) % 256

    # time.sleep(0.001) # make bigger to slow down
    # print("Loop Complete")
