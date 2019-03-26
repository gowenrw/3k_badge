EESchema Schematic File Version 4
LIBS:3000_Society_Badge_K5-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "3000 Society Badge Schematic"
Date "2019-03-25"
Rev "1"
Comp "Created by @alt_bier a.k.a. Richard Gowen"
Comment1 "https://github.com/gowenrw/3k_badge"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 3000_Society_Badge:Trinket_M0 IC1
U 1 1 5C97A81D
P 3500 1250
F 0 "IC1" H 3500 1949 50  0000 C CNB
F 1 "Trinket_M0" H 3500 1858 50  0000 C CNN
F 2 "3000_Society_Badge:Trinket_M0" H 3500 1767 50  0000 C CIN
F 3 "https://www.adafruit.com/product/3500" H 3500 1676 50  0000 C CNN
	1    3500 1250
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_8mm D40
U 1 1 5C992F63
P 3400 3350
F 0 "D40" H 3744 3487 50  0000 L CNB
F 1 "LED_NeoPixel_THT_8mm" H 3744 3396 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D8.0mm-4_RGB" H 3744 3305 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1734" H 3744 3214 50  0000 L CNN
	1    3400 3350
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D21
U 1 1 5C994F3E
P 5200 4450
F 0 "D21" H 5544 4587 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 5544 4496 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 5544 4405 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 5544 4314 50  0000 L CNN
	1    5200 4450
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D22
U 1 1 5C99581E
P 5200 5450
F 0 "D22" H 5544 5587 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 5544 5496 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 5544 5405 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 5544 5314 50  0000 L CNN
	1    5200 5450
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D41
U 1 1 5C995E18
P 3450 6250
F 0 "D41" H 3794 6387 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 3794 6296 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 3794 6205 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 3794 6114 50  0000 L CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D42
U 1 1 5C996167
P 3450 7200
F 0 "D42" H 3794 7337 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 3794 7246 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 3794 7155 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 3794 7064 50  0000 L CNN
	1    3450 7200
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:CP1 C03
U 1 1 5C9C271F
P 2250 2500
F 0 "C03" V 2592 2500 50  0000 C CNB
F 1 "CP 100uF" V 2501 2500 50  0000 C CNN
F 2 "3000_Society_Badge:CP_Radial_D6.3mm_P2.50mm" V 2410 2500 50  0000 C CIN
F 3 "~" H 2250 2500 50  0001 C CNN
	1    2250 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 7800 3450 7800
Wire Wire Line
	3450 7800 3450 7500
Wire Wire Line
	2500 6650 3450 6650
Wire Wire Line
	3450 6650 3450 6550
Wire Wire Line
	2500 3850 3400 3850
Wire Wire Line
	3400 3850 3400 3650
Connection ~ 2500 3850
Connection ~ 2500 6650
Wire Wire Line
	2500 3850 2500 4450
Wire Wire Line
	2500 6650 2500 7800
Wire Wire Line
	2500 4850 5200 4850
Wire Wire Line
	5200 4850 5200 4750
Connection ~ 2500 4850
Wire Wire Line
	2500 4850 2500 5750
Wire Wire Line
	2500 5750 5200 5750
Connection ~ 2500 5750
Wire Wire Line
	2500 5750 2500 6250
Wire Wire Line
	2500 2850 5200 2850
Connection ~ 2500 2850
Wire Wire Line
	2500 2850 2500 3850
Wire Wire Line
	3400 3050 3400 2950
Wire Wire Line
	3400 2950 2000 2950
Wire Wire Line
	2000 2950 2000 2500
Wire Wire Line
	2400 2500 2500 2500
Connection ~ 2500 2500
Wire Wire Line
	2500 2500 2500 2850
Wire Wire Line
	2100 2500 2000 2500
Connection ~ 2000 2500
$Comp
L 3000_Society_Badge:R R04
U 1 1 5CA32A8C
P 1700 3850
F 0 "R04" H 1770 3941 50  0000 L CNB
F 1 "R 470ohm" H 1770 3850 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 1770 3759 50  0000 L CIN
F 3 "~" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4050 5200 4150
Wire Wire Line
	2000 4050 2000 4450
Connection ~ 2000 4050
Wire Wire Line
	2000 4050 5200 4050
$Comp
L 3000_Society_Badge:CP1 C04
U 1 1 5CA3FE5B
P 2250 4450
F 0 "C04" V 2592 4450 50  0000 C CNB
F 1 "CP 100uF" V 2501 4450 50  0000 C CNN
F 2 "3000_Society_Badge:CP_Radial_D6.3mm_P2.50mm" V 2410 4450 50  0000 C CIN
F 3 "~" H 2250 4450 50  0001 C CNN
	1    2250 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 4450 2500 4450
Connection ~ 2500 4450
Wire Wire Line
	2500 4450 2500 4850
Wire Wire Line
	2100 4450 2000 4450
Connection ~ 2000 4450
Wire Wire Line
	2000 4450 2000 4950
$Comp
L 3000_Society_Badge:R R05
U 1 1 5CA46FE5
P 1700 5500
F 0 "R05" H 1770 5591 50  0000 L CNB
F 1 "R 470ohm" H 1770 5500 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 1770 5409 50  0000 L CIN
F 3 "~" H 1700 5500 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5850 3450 5950
Wire Wire Line
	2000 5850 2000 6250
Wire Wire Line
	2000 6800 3450 6800
Wire Wire Line
	3450 6800 3450 6900
Connection ~ 2000 5850
Wire Wire Line
	2000 5850 3450 5850
$Comp
L 3000_Society_Badge:CP1 C05
U 1 1 5CA4D7DA
P 2250 6250
F 0 "C05" V 2592 6250 50  0000 C CNB
F 1 "CP 100uF" V 2501 6250 50  0000 C CNN
F 2 "3000_Society_Badge:CP_Radial_D6.3mm_P2.50mm" V 2410 6250 50  0000 C CIN
F 3 "~" H 2250 6250 50  0001 C CNN
	1    2250 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 6250 2500 6250
Connection ~ 2500 6250
Wire Wire Line
	2500 6250 2500 6650
Wire Wire Line
	2100 6250 2000 6250
Connection ~ 2000 6250
Wire Wire Line
	2000 6250 2000 6800
Wire Wire Line
	5600 3950 4700 3950
Wire Wire Line
	4700 3950 4700 4450
Wire Wire Line
	4700 4450 4900 4450
Wire Wire Line
	2000 4950 5200 4950
Wire Wire Line
	5500 4450 5600 4450
Wire Wire Line
	5600 4450 5600 4900
Wire Wire Line
	5600 4900 4700 4900
Wire Wire Line
	3700 3350 3850 3350
Wire Wire Line
	3850 3350 3850 5800
Wire Wire Line
	3850 5800 3000 5800
Wire Wire Line
	3000 5800 3000 6250
Wire Wire Line
	3000 6250 3150 6250
Wire Wire Line
	3750 6250 3850 6250
Wire Wire Line
	3850 6250 3850 6700
Wire Wire Line
	3850 6700 3000 6700
Wire Wire Line
	3000 6700 3000 7200
Wire Wire Line
	3000 7200 3150 7200
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_8mm D20
U 1 1 5C9941BC
P 5200 2400
F 0 "D20" H 5544 2537 50  0000 L CNB
F 1 "LED_NeoPixel_THT_8mm" H 5544 2446 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D8.0mm-4_RGB" H 5544 2355 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1734" H 5544 2264 50  0000 L CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:R R40
U 1 1 5CA6CF67
P 2800 2650
F 0 "R40" H 2870 2741 50  0000 L CNB
F 1 "R 470ohm" H 2870 2650 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 2870 2559 50  0000 L CIN
F 3 "~" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:R R20
U 1 1 5CA6E66F
P 4800 1350
F 0 "R20" H 4870 1441 50  0000 L CNB
F 1 "R 470ohm" H 4870 1350 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 4870 1259 50  0000 L CIN
F 3 "~" H 4800 1350 50  0001 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1100 1350 1100
Wire Wire Line
	2800 1300 2500 1300
Wire Wire Line
	4200 1400 4300 1400
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D10
U 1 1 5CB7E756
P 8150 3150
F 0 "D10" H 8494 3287 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 8494 3196 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 8494 3105 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 8494 3014 50  0000 L CNN
	1    8150 3150
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D11
U 1 1 5CB7E760
P 8150 4050
F 0 "D11" H 8494 4187 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 8494 4096 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 8494 4005 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 8494 3914 50  0000 L CNN
	1    8150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3550 8150 3450
Wire Wire Line
	8150 4450 8150 4350
Wire Wire Line
	8150 2750 8150 2850
Wire Wire Line
	8150 3650 8150 3750
Wire Wire Line
	7650 3150 7850 3150
Wire Wire Line
	8450 3150 8550 3150
Wire Wire Line
	8550 3150 8550 3600
Wire Wire Line
	8550 3600 7650 3600
Wire Wire Line
	7650 3600 7650 4050
Wire Wire Line
	7650 4050 7850 4050
Wire Wire Line
	2500 1300 2500 1650
Wire Wire Line
	2500 1650 7450 1650
Wire Wire Line
	7450 4450 8150 4450
Connection ~ 2500 1650
Wire Wire Line
	2500 1650 2500 2500
Wire Wire Line
	8150 3550 7450 3550
Wire Wire Line
	7450 3550 7450 4450
$Comp
L 3000_Society_Badge:CP1 C01
U 1 1 5CBC5B6A
P 6850 3200
F 0 "C01" V 7192 3200 50  0000 C CNB
F 1 "CP 100uF" V 7101 3200 50  0000 C CNN
F 2 "3000_Society_Badge:CP_Radial_D6.3mm_P2.50mm" V 7010 3200 50  0000 C CIN
F 3 "~" H 6850 3200 50  0001 C CNN
	1    6850 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 1100 1350 1500
$Comp
L 3000_Society_Badge:R R01
U 1 1 5CBCEB3A
P 6200 2000
F 0 "R01" H 6270 2091 50  0000 L CNB
F 1 "R 470ohm" H 6270 2000 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 6270 1909 50  0000 L CIN
F 3 "~" H 6200 2000 50  0001 C CNN
	1    6200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2750 6950 2750
Connection ~ 7450 3550
$Comp
L 3000_Society_Badge:R R10
U 1 1 5CC25A8D
P 7650 1700
F 0 "R10" H 7720 1791 50  0000 L CNB
F 1 "R 470ohm" H 7720 1700 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 7720 1609 50  0000 L CIN
F 3 "~" H 7650 1700 50  0001 C CNN
	1    7650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1750 2100 1500
Wire Wire Line
	2100 1500 1350 1500
Connection ~ 1350 1500
Wire Wire Line
	1350 1500 1350 1700
$Comp
L 3000_Society_Badge:R R03
U 1 1 5CC895C0
P 1700 1850
F 0 "R03" H 1770 1941 50  0000 L CNB
F 1 "R 470ohm" H 1770 1850 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 1770 1759 50  0000 L CIN
F 3 "~" H 1700 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
Connection ~ 1350 1700
Wire Wire Line
	1350 1700 1350 3650
Wire Wire Line
	1700 1700 1350 1700
Wire Wire Line
	1700 2000 2000 2000
Wire Wire Line
	6200 2150 6200 2300
Wire Wire Line
	6200 2300 6550 2300
Wire Wire Line
	6950 2300 6950 2750
Wire Wire Line
	6200 1750 6200 1850
Wire Wire Line
	2100 1750 6000 1750
Wire Wire Line
	7650 1850 7650 3150
Wire Wire Line
	7650 1550 7650 1100
Wire Wire Line
	7650 1100 4200 1100
Wire Wire Line
	6550 3650 6550 3200
Connection ~ 6550 2300
Wire Wire Line
	6550 2300 6950 2300
Wire Wire Line
	7450 1650 7450 3200
Wire Wire Line
	6550 3650 8150 3650
Wire Wire Line
	6550 3200 6700 3200
Connection ~ 6550 3200
Wire Wire Line
	6550 3200 6550 2300
Wire Wire Line
	7000 3200 7450 3200
Connection ~ 7450 3200
Wire Wire Line
	7450 3200 7450 3550
Wire Wire Line
	1700 4050 1700 4000
Wire Wire Line
	1700 4050 2000 4050
Wire Wire Line
	1700 3700 1700 3650
Wire Wire Line
	1700 3650 1350 3650
Connection ~ 1350 3650
Wire Wire Line
	1350 3650 1350 5200
Wire Wire Line
	1700 5850 1700 5650
Wire Wire Line
	1700 5850 2000 5850
Wire Wire Line
	1700 5350 1700 5200
Wire Wire Line
	1700 5200 1350 5200
Wire Wire Line
	4200 1200 4800 1200
Wire Wire Line
	4800 1500 4800 2400
Wire Wire Line
	2800 3350 3100 3350
Wire Wire Line
	4300 1400 4300 2450
Wire Wire Line
	4900 2400 4800 2400
Wire Wire Line
	2000 2000 5200 2000
Wire Wire Line
	5200 2000 5200 2100
Connection ~ 2000 2000
Wire Wire Line
	2000 2000 2000 2500
Wire Wire Line
	5500 2400 5600 2400
Wire Wire Line
	5600 2400 5600 3950
Wire Wire Line
	5200 2700 5200 2850
Wire Wire Line
	2800 2800 2800 3350
Wire Wire Line
	4300 2450 2800 2450
Wire Wire Line
	2800 2450 2800 2500
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D12
U 1 1 5CEDEB4C
P 8150 5300
F 0 "D12" H 8494 5437 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 8494 5346 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 8494 5255 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 8494 5164 50  0000 L CNN
	1    8150 5300
	1    0    0    -1  
$EndComp
$Comp
L 3000_Society_Badge:LED_NeoPixel_THT_5mm D13
U 1 1 5CEE4F34
P 8150 6200
F 0 "D13" H 8494 6337 50  0000 L CNB
F 1 "LED_NeoPixel_THT_5mm" H 8494 6246 50  0000 L CNN
F 2 "3000_Society_Badge:LED_D5.0mm-4_RGB_Wide_Pins" H 8494 6155 50  0000 L CIN
F 3 "https://www.adafruit.com/product/1938" H 8494 6064 50  0000 L CNN
	1    8150 6200
	1    0    0    -1  
$EndComp
Connection ~ 7450 4450
Wire Wire Line
	7450 6600 8150 6600
Wire Wire Line
	8150 6600 8150 6500
Wire Wire Line
	7450 4450 7450 5350
Wire Wire Line
	7450 5700 8150 5700
Wire Wire Line
	8150 5700 8150 5600
Connection ~ 7450 5700
Wire Wire Line
	7450 5700 7450 6600
Wire Wire Line
	8150 4950 8150 5000
$Comp
L 3000_Society_Badge:R R02
U 1 1 5CEF6F33
P 6150 4800
F 0 "R02" H 6220 4891 50  0000 L CNB
F 1 "R 470ohm" H 6220 4800 50  0000 L CNN
F 2 "3000_Society_Badge:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 6220 4709 50  0000 L CIN
F 3 "~" H 6150 4800 50  0001 C CNN
	1    6150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4950 6550 4950
Wire Wire Line
	6150 4650 6150 2700
Wire Wire Line
	6150 2700 6000 2700
Wire Wire Line
	6000 2700 6000 1750
Connection ~ 6000 1750
Wire Wire Line
	6000 1750 6200 1750
Wire Wire Line
	6550 4950 6550 5350
Wire Wire Line
	6550 5850 8150 5850
Wire Wire Line
	8150 5850 8150 5900
Connection ~ 6550 4950
Wire Wire Line
	6550 4950 8150 4950
$Comp
L 3000_Society_Badge:CP1 C02
U 1 1 5CF53251
P 6900 5350
F 0 "C02" V 7242 5350 50  0000 C CNB
F 1 "CP 100uF" V 7151 5350 50  0000 C CNN
F 2 "3000_Society_Badge:CP_Radial_D6.3mm_P2.50mm" V 7060 5350 50  0000 C CIN
F 3 "~" H 6900 5350 50  0001 C CNN
	1    6900 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5450 4900 5450
Wire Wire Line
	4700 4900 4700 5450
Wire Wire Line
	5200 4950 5200 5150
Wire Wire Line
	6750 5350 6550 5350
Connection ~ 6550 5350
Wire Wire Line
	6550 5350 6550 5850
Wire Wire Line
	7050 5350 7450 5350
Connection ~ 7450 5350
Wire Wire Line
	7450 5350 7450 5700
Wire Wire Line
	8450 4050 8550 4050
Wire Wire Line
	8550 4050 8550 4650
Wire Wire Line
	8550 4650 7700 4650
Wire Wire Line
	7700 4650 7700 5300
Wire Wire Line
	7700 5300 7850 5300
Wire Wire Line
	8450 5300 8550 5300
Wire Wire Line
	8550 5300 8550 5800
Wire Wire Line
	8550 5800 7700 5800
Wire Wire Line
	7700 5800 7700 6200
Wire Wire Line
	7700 6200 7850 6200
$EndSCHEMATC
