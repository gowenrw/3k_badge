# Godzilla vs. Blade Runner Badge Components

[HOME](/) [DETAILS](3kbadge_details.md) [PARTS](3kbadge_components.md) [ASSEMBLY](3kbadge_assembly.md) [CODE](3kbadge_code.md)

If you received this badge at the 3000 Society conference then you should have all the components listed below.
If you got the badge kit at Defcon 27 then you should have everything except the battery.
If you only have the PCB then this is the list of components that you will need to procure to make the badge.

Complete list of components used on the badge (with links):

* 1x Adafruit Trinket M0
    * [Adafruit Product Page](https://www.adafruit.com/product/3500)
    * [Trinket M0 Pinouts](https://learn.adafruit.com/adafruit-trinket-m0-circuitpython-arduino/pinouts)
    * [circuitpython](https://learn.adafruit.com/welcome-to-circuitpython)
* 8x NeoPixel Diffused 5mm Through-Hole LED
    * [Adafruit Product Page](https://www.adafruit.com/product/1938)
    * [Neopixel Pinouts](https://cdn-shop.adafruit.com/970x728/1938-05.jpg)
    * I used an APA106 variant, but the Adafruit WS2812 type work as well
* 2x NeoPixel Diffused 8mm Through-Hole LED
    * [Adafruit Product Page](https://www.adafruit.com/product/1734)
    * [Neopixel Pinouts](https://cdn-shop.adafruit.com/970x728/1734-04.jpg)
    * I used an APA106 variant, but the Adafruit WS2812 type work as well
* 5x 100uF 16V (or 25V) Aluminum Electrolytic Radial Capacitor 6.3 mm x 7 mm
    * [Adafruit Product Page](https://www.adafruit.com/product/2193)
    * The Adafruit capacitors above are larger than what I used but will work or at least give you an idea of what to google.
    * The original badge used 100uF 16V caps but due to a shortage 100uF 25V caps were used on later badges without issue.
* 7x 470ohm 1/4w Resistor
    * [Adafruit Product Page](https://www.adafruit.com/product/2781)
* 1x 100ohm 1/4w Resistor
    * [Sparkfun Product Page](https://www.sparkfun.com/products/14493)
    * This resistor is needed for the power line for the 8mm Neopixels.  Since they draw slightly more power than the 5mm using a 470ohm resistor was causing current drops when both 8mm LEDs were fully on.  If this does not concern you then a 470ohm resistor or some value in between can work in its place.
* 2x Male-Female 1x5pin Headers (Optional to allow easy removal of Trinket from badge)
* 1x Velcro strip 2in (Optional for battery attachment)
* 1x 2500mAh USB Power Bank - Slim Credit Card Sized
    * The badge was designed to hold a slim credit card sized USB power bank on the back that would allow the Trinket M0 to be powered via its USB micro port.
    * The model that I provided with the 3kbadges was made by [Attom Tech](https://www.attomtech.com/) and can be purchased on [their site](https://www.attomtech.com/product/attom-tech-2500mah-ultra-slim-mini-power-bank/) or on [Amazon](https://www.amazon.com/Attom-Tech-External-Emergency-Charging/dp/B076HJTNYJ) and elsewhere.
    * There are many manufacturers of these slim credit card sized USB power banks and any of them should work to power this badge as long as the physical dimensions and attributes are similar to the above. The built in charging cable and its length are of particular importance to fit the badge.

![3kbadge_components](3kbadge_components.JPG)
