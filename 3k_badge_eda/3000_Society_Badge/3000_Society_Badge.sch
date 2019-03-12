EESchema Schematic File Version 2
LIBS:3000_Society_Badge
LIBS:LED
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:3000_Society_Badge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Trinket3v3 IC1
U 1 1 5C86C918
P 4400 2550
F 0 "IC1" H 3900 2950 50  0000 C CNN
F 1 "Trinket3v3" H 4800 2150 50  0000 C CNN
F 2 "3000_Society_Badge:Trinket_3v3" H 4400 2550 50  0000 C CIN
F 3 "" H 4400 2550 50  0000 C CNN
	1    4400 2550
	1    0    0    -1  
$EndComp
$Comp
L WS2812B D1
U 1 1 5C872748
P 2550 2550
F 0 "D1" H 2750 2775 50  0000 R BNN
F 1 "WS2812B" H 2600 2325 50  0000 L TNN
F 2 "3000_Society_Badge:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2600 2250 50  0001 L TNN
F 3 "" H 2650 2175 50  0001 L TNN
	1    2550 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
