# Test program for the 3k badge
# Note this code has been designed with CircuitPython 2.0 libraries

import board
from digitalio import DigitalInOut, Direction, Pull
import touchio
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode
import adafruit_dotstar as dotstar
import time

# One pixel connected internally!
dot = dotstar.DotStar(board.APA102_SCK, board.APA102_MOSI, 1, brightness=0.4)

# Built in red LED
led = DigitalInOut(board.D13)
led.direction = Direction.OUTPUT

# My new D0 and D1 defs
ledrd = DigitalInOut(board.D0)
ledbl = DigitalInOut(board.D1)
ledwt = DigitalInOut(board.D2)
ledyl = DigitalInOut(board.D4)
ledrd.direction = Direction.OUTPUT
ledbl.direction = Direction.OUTPUT
ledwt.direction = Direction.OUTPUT
ledyl.direction = Direction.OUTPUT

# Capacitive touch on D3
touch = touchio.TouchIn(board.D3)

# Used if we do HID output, see below
kbd = Keyboard()

######################### HELPERS ##############################

def alloff():
    ledrd.value = False
    ledbl.value = False
    ledwt.value = False
    ledyl.value = False
    dot[0] = (0,0,0)

def redon():
    ledrd.value = True
    dot[0] = (255,0,0)

def blueon():
    ledbl.value = True
    dot[0] = (0,0,255)

def whiteon():
    ledwt.value = True
    dot[0] = (0,0,0)

def yellowon():
    ledyl.value = True
    dot[0] = (255,255,0)

def modeone():
    redon()
    time.sleep(0.5)
    alloff()
    time.sleep(0.5)
    blueon()
    time.sleep(0.5)
    alloff()
    time.sleep(0.5)

def modetwo():
    redon()
    time.sleep(1.5)
    alloff()
    time.sleep(1.5)
    blueon()
    time.sleep(1.5)
    alloff()
    time.sleep(1.5)

def modethree():
    redon()
    time.sleep(3.5)
    alloff()
    time.sleep(3.5)
    blueon()
    time.sleep(3.5)
    alloff()
    time.sleep(3.5)

######################### MAIN LOOP ##############################
mode = 0
while True:
    alloff()

    if (mode == 0):
        modeone()
    elif (mode == 1):
        modetwo()
    else:
        modethree()

    if touch.value:
        print("D3 touched! Changing mode")
        mode = (mode+1)
    if (mode > 2):
        mode = 0

    print("Loop Complete")
