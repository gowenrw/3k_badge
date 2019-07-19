# Godzilla vs. Blade Runner Badge Code

[HOME](/) - [DETAILS](3kbadge_details.md) - [PARTS](3kbadge_components.md) - [ASSEMBLY](3kbadge_assembly.md) - [CODE](3kbadge_code.md) - [I WANT ONE!](3kbadge_i_want_one.md)

This is where you will find detailed step by step instructions on how to update the firmware and add or change code on the trinket m0 that controls the badge.

If you received your trinket m0 as part of a badge kit or with your badge then the firmware is already at the proper version and it will already have working badge code on it.
So, you need to do nothing unless you want to change the code (see modifying code section below)

If you have sourced your own trinket m0 for a PCB only badge then you will need to update the firmware to a version that has been tested to work with our badge code unless you are planning to write your own code for it.

## Get Your Trinket M0 To Work With Our Badge

The code that runs the badge was written in CircuitPython version 2.3.1 and has been tested to work on most 2.x CircuitPython firmware versions.  
It is also known that this code does not work (for some reason that we have not had time to troubleshoot) on the CircuitPython 3.x or 4.x versions that are shipping with Trinkets now.

### Updating the CircuitPython Firmware

To update the firmware is a fairly simple process.

* Connect the trinket m0 to a PC via the USB port.
  * This should pop open a USB drive called CIRCUITPY that is used for adding code
* Click the small Reset button on the trinket twice.  Not like a mouse Double-click, but more like Click-pause-Click.
  * You should see the Dotstar RGB LED turn green and the Red LED turn on and a new disk drive appear called TRINKETBOOT.
* Drag the .uf2 extension firmware file (e.g. adafruit-circuitpython-trinket_m0-2.3.1.uf2) to TRINKETBOOT to copy it there.
  * The Red LED will flash then the TRINKETBOOT drive will disappear and the CIRCUITPY drive will reappear.
* That's it, the trinket is now running the new firmware for the Circuit Python version that you copied to it.

### Updating the CircuitPython Libraries and Code

The library files and code used are firmware version dependent.  So, if you update the firmware you need to make sure that you also update any libraries and code used to that specific firmware version.
This is very easy to do.

* Connect the trinket m0 to a PC via the USB port.
  * This should pop open a USB drive called CIRCUITPY that is used for adding code
* You will see a main.py file which contains the code and a lib directory that contains the libraries
* Copy your new code and library files to this drive overwriting the existing files.
  * This is the same process you would use on any USB drive
* That's it, the trinket should start running the new code and libraries immediately.
  * If for some reason it does not simply press the Reset button once

### Using the Firmware, Libraries and Code Provided Here

If you are going to install the badge code that has been provided here then you can use the firmware and library files that have also been provided here.

* The 2.3.1 firmware is in this GitHub repositories [code directory](https://GitHub.com/gowenrw/3k_badge/tree/master/code).
* The main.py file which contains all the code for the badge in this GitHub repositories [code/3kcode directory](https://GitHub.com/gowenrw/3k_badge/tree/master/code/3kcode).
* The 2.3.1 library files used by the code are in this GitHub repositories [code/3kcode/lib directory](https://GitHub.com/gowenrw/3k_badge/tree/master/code/3kcode/lib).

### Using the Firmware and Libraries provided by Adafruit CircuitPython

If you are going to write your own badge code and use a different version of CircuitPython than what has been provided then you will need to download the Firmware and Libraries from Adafruit CircuitPython.

Find the CircuitPython firmware release you wish to use from the [Adafruit GitHub CircuitPython releases repository](https://GitHub.com/adafruit/circuitpython/releases) or from [https://circuitpython.org/downloads](https://circuitpython.org/downloads)

The proper firmware file will have a .uf2 extension and will contain trinket_m0 in the name.

Find the CircuitPython libraries that match your firmware release from the [Adafruit GitHub CircuitPython_Bundle releases repository](https://GitHub.com/adafruit/Adafruit_CircuitPython_Bundle/releases) or from [https://circuitpython.org/libraries](https://circuitpython.org/libraries)

If you are just looking to update a specific library or driver file there is a good listing of those downloads on the [CircuitPython Libraries Page](https://circuitpython.readthedocs.io/projects/bundle/en/latest/drivers.html)

## Modifying Code

The code that runs the badge is written in a version of Python called CircuitPython.

If you are new to CircuitPython then you will find this [Adafruit CircuitPython Guide](https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/what-is-circuitpython) useful.

To get started changing the badge code you will need to plug the trinket m0 to a PC via the USB port.
This should pop open a USB drive called CIRCUITPY that is used for adding or modifying code.

All of the badge code is located in a file named main.py that is on the root directory of the CIRCUITPY drive.

Since this is a text file you can use any editor you like to modify the code.

Certain editors such as [GitHub's ATOM](https://atom.io/) or [Notepad++](https://notepad-plus-plus.org/) can highlight the python code syntax to make editing easier.

Adafruit has provided a [CircuitPython editor named MU](https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/installing-mu-editor) that can be used to edit the code and interface with the trinket m0 serial output to display diagnostic information from commands like print.
This can be extremely helpful in troubleshooting your changes.

The trinket m0 should start executing your new code as soon as you save the main.py file.
If for some reason it does not simply press the Reset button once to force it to reload the code.
