# 3000 Society Badge Components

This is a list of the components used on the badge and where you can get them (in case you have just the PCB and need to source your own parts).

* 1x Adafruit Trinket M0
    * https://www.adafruit.com/product/3500
    * https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/pinouts
    * https://learn.adafruit.com/welcome-to-circuitpython
* 8x NeoPixel Diffused 5mm Through-Hole LED
    * I used an APA106 variant, but the Adafruit WS2812 type work as well
    * https://www.adafruit.com/product/1938
    * https://cdn-shop.adafruit.com/970x728/1938-05.jpg
* 2x NeoPixel Diffused 8mm Through-Hole LED
    * I used an APA106 variant, but the Adafruit WS2812 type work as well
    * https://www.adafruit.com/product/1734
    * https://cdn-shop.adafruit.com/970x728/1734-04.jpg
* 5x 100uF 16V Aluminum Electrolytic Radial Capacitor 6.3 mm x 7 mm
    * https://www.adafruit.com/product/2193
        * Note the Adafruit capacitors are larger than what I used but will work or at least give you an idea of what to google.
* 7x 470ohm 1/4w Resistor
    * https://www.adafruit.com/product/2781
* 1x 100ohm 1/4w Resistor
    * https://www.sparkfun.com/products/14493
    * This resistor is needed for the power line for the 8mm Neopixels.  Since they draw slightly more power than the 5mm using a 470ohm resistor was causing current drops when both 8mm LEDs were fully on.  If this does not concern you then a 470ohm resistor or some value in between can work in its place.

![3kbadge_components](3kbadge_components.JPG)
