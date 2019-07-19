# code

Code for programming the badge

The trinket m0 can run multiple versions of Circuit Python and may come shipped with different versions loaded.

For consistency in code and deployment I have standardized on Circuit Python version 2.3.1

The trinket m0 firmware for the version we are using has been included here in file adafruit-circuitpython-trinket_m0-2.3.1.uf2

To upgrade or downgrade the trinket m0 to run Circuit Python version 2.3.1 follow these steps.

* Connect the trinket m0 to a PC via the USB port.
  * This should pop open a USB drive called CIRCUITPY that is used for adding code
* Click the small Reset button on the trinket twice.  Not like a mouse Double-click, but more like Click-pause-Click.
  * You should see the Dotstar RGB LED turn green and the Red LED turn on and a new disk drive appear called TRINKETBOOT.
* Drag the adafruit-circuitpython-trinket_m0-2.3.1.uf2 firmware file to TRINKETBOOT to copy it there.
  * The Red LED will flash then the TRINKETBOOT drive will disappear and the CIRCUITPY drive will reappear.
* That's it, the trinket is now running the new firmware for Circuit Python version 2.3.1

More information about the trinket m0 and Circuit Python can be found here https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/circuitpython
