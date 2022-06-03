EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 11
Title "Memory: ROM, RAM, Bank RAM, and NVRAM with RTC"
Date "2022-01-22"
Rev "3"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4550 3050 4550 3150
Text Label 3950 2850 0    50   ~ 0
A14
Text Label 3950 2750 0    50   ~ 0
A13
Text Label 3950 2650 0    50   ~ 0
A12
Text Label 3950 2550 0    50   ~ 0
A11
Text Label 3950 2450 0    50   ~ 0
A10
Text Label 3950 2350 0    50   ~ 0
A9
Text Label 3950 2250 0    50   ~ 0
A8
Text Label 3950 2150 0    50   ~ 0
A7
Text Label 3950 2050 0    50   ~ 0
A6
Text Label 3950 1950 0    50   ~ 0
A5
Text Label 3950 1850 0    50   ~ 0
A4
Text Label 3950 1750 0    50   ~ 0
A3
Text Label 3950 1650 0    50   ~ 0
A2
Text Label 3950 1550 0    50   ~ 0
A1
Text Label 3950 1450 0    50   ~ 0
A0
Wire Wire Line
	4550 1250 4550 1150
$Comp
L power:+5V #PWR?
U 1 1 61ED3287
P 4550 1150
AR Path="/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61ED3287" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 4550 1000 50  0001 C CNN
F 1 "+5V" H 4565 1323 50  0000 C CNN
F 2 "" H 4550 1150 50  0001 C CNN
F 3 "" H 4550 1150 50  0001 C CNN
	1    4550 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ED328D
P 4550 3150
AR Path="/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61ED328D" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4550 2900 50  0001 C CNN
F 1 "GND" H 4555 2977 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1450 4150 1450
Wire Wire Line
	3950 1550 4150 1550
Wire Wire Line
	3950 1650 4150 1650
Wire Wire Line
	3950 1750 4150 1750
Wire Wire Line
	3950 1850 4150 1850
Wire Wire Line
	3950 1950 4150 1950
Wire Wire Line
	3950 2050 4150 2050
Wire Wire Line
	3950 2150 4150 2150
Wire Wire Line
	3950 2250 4150 2250
Wire Wire Line
	3950 2350 4150 2350
Wire Wire Line
	3950 2450 4150 2450
Wire Wire Line
	3950 2550 4150 2550
Wire Wire Line
	3950 2650 4150 2650
Wire Wire Line
	3950 2750 4150 2750
Wire Wire Line
	3950 2850 4150 2850
Text Notes 4850 3050 2    50   ~ 0
32K
Text Label 5250 1450 2    50   ~ 0
D0
Text Label 5250 1550 2    50   ~ 0
D1
Text Label 5250 1650 2    50   ~ 0
D2
Text Label 5250 1750 2    50   ~ 0
D3
Text Label 5250 1850 2    50   ~ 0
D4
Text Label 5250 1950 2    50   ~ 0
D5
Text Label 5250 2050 2    50   ~ 0
D6
Text Label 5250 2150 2    50   ~ 0
D7
Text Notes 2750 3050 2    50   ~ 0
32K
Wire Wire Line
	2450 1250 2450 1150
Wire Wire Line
	2950 2650 2850 2650
Wire Wire Line
	2950 2550 2950 2650
$Comp
L power:+5V #PWR?
U 1 1 61EC8311
P 2950 2550
AR Path="/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8311" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 2950 2400 50  0001 C CNN
F 1 "+5V" H 2965 2723 50  0000 C CNN
F 2 "" H 2950 2550 50  0001 C CNN
F 3 "" H 2950 2550 50  0001 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3050 2450 3150
$Comp
L power:+5V #PWR?
U 1 1 61EC8312
P 2450 1150
AR Path="/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8312" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 2450 1000 50  0001 C CNN
F 1 "+5V" H 2465 1323 50  0000 C CNN
F 2 "" H 2450 1150 50  0001 C CNN
F 3 "" H 2450 1150 50  0001 C CNN
	1    2450 1150
	1    0    0    -1  
$EndComp
Text Label 3150 2150 2    50   ~ 0
D7
Text Label 3150 2050 2    50   ~ 0
D6
Text Label 3150 1950 2    50   ~ 0
D5
Text Label 3150 1850 2    50   ~ 0
D4
Text Label 3150 1750 2    50   ~ 0
D3
Text Label 3150 1650 2    50   ~ 0
D2
Text Label 3150 1550 2    50   ~ 0
D1
Text Label 3150 1450 2    50   ~ 0
D0
Text Label 1850 2850 0    50   ~ 0
A14
Text Label 1850 2750 0    50   ~ 0
A13
Text Label 1850 2650 0    50   ~ 0
A12
Text Label 1850 2550 0    50   ~ 0
A11
Text Label 1850 2450 0    50   ~ 0
A10
Text Label 1850 2350 0    50   ~ 0
A9
Text Label 1850 2250 0    50   ~ 0
A8
Text Label 1850 2150 0    50   ~ 0
A7
Text Label 1850 2050 0    50   ~ 0
A6
Text Label 1850 1950 0    50   ~ 0
A5
Text Label 1850 1850 0    50   ~ 0
A4
Text Label 1850 1750 0    50   ~ 0
A3
Text Label 1850 1650 0    50   ~ 0
A2
Text Label 1850 1550 0    50   ~ 0
A1
Text Label 1850 1450 0    50   ~ 0
A0
Wire Wire Line
	1850 2850 2050 2850
Wire Wire Line
	2050 2750 1850 2750
Wire Wire Line
	1850 2650 2050 2650
Wire Wire Line
	2050 2550 1850 2550
Wire Wire Line
	1850 2450 2050 2450
Wire Wire Line
	2050 2350 1850 2350
Wire Wire Line
	1850 2250 2050 2250
Wire Wire Line
	1850 2150 2050 2150
Wire Wire Line
	1850 2050 2050 2050
Wire Wire Line
	1850 1950 2050 1950
Wire Wire Line
	1850 1850 2050 1850
Wire Wire Line
	2050 1750 1850 1750
Wire Wire Line
	1850 1650 2050 1650
Wire Wire Line
	2050 1550 1850 1550
Wire Wire Line
	1850 1450 2050 1450
$Comp
L power:GND #PWR?
U 1 1 61EC8313
P 2450 3150
AR Path="/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8313" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 2450 2900 50  0001 C CNN
F 1 "GND" H 2455 2977 50  0000 C CNN
F 2 "" H 2450 3150 50  0001 C CNN
F 3 "" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	1750 2950 1850 2850
Entry Wire Line
	1750 2850 1850 2750
Entry Wire Line
	1750 2750 1850 2650
Entry Wire Line
	1750 2650 1850 2550
Entry Wire Line
	1750 2550 1850 2450
Entry Wire Line
	1750 2450 1850 2350
Entry Wire Line
	1750 2350 1850 2250
Entry Wire Line
	1750 2250 1850 2150
Entry Wire Line
	1750 2150 1850 2050
Entry Wire Line
	1750 2050 1850 1950
Entry Wire Line
	1750 1950 1850 1850
Entry Wire Line
	1750 1850 1850 1750
Entry Wire Line
	1750 1750 1850 1650
Entry Wire Line
	1750 1650 1850 1550
Entry Wire Line
	1750 1550 1850 1450
Entry Wire Line
	3250 2250 3150 2150
Entry Wire Line
	3250 2150 3150 2050
Entry Wire Line
	3250 2050 3150 1950
Entry Wire Line
	3250 1950 3150 1850
Entry Wire Line
	3250 1850 3150 1750
Entry Wire Line
	3250 1750 3150 1650
Entry Wire Line
	3250 1650 3150 1550
Entry Wire Line
	3250 1550 3150 1450
Text Label 5000 2750 0    50   ~ 0
~RD
Text Label 5000 2650 0    50   ~ 0
~WR
Text Label 2900 2750 0    50   ~ 0
~RD
Wire Wire Line
	2850 1450 3150 1450
Wire Wire Line
	2850 1550 3150 1550
Wire Wire Line
	2850 1650 3150 1650
Wire Wire Line
	2850 1750 3150 1750
Wire Wire Line
	2850 1850 3150 1850
Wire Wire Line
	2850 1950 3150 1950
Wire Wire Line
	2850 2050 3150 2050
Wire Wire Line
	2850 2150 3150 2150
Wire Wire Line
	4950 1450 5250 1450
Wire Wire Line
	4950 1550 5250 1550
Wire Wire Line
	4950 1650 5250 1650
Wire Wire Line
	4950 1750 5250 1750
Wire Wire Line
	4950 1850 5250 1850
Wire Wire Line
	4950 1950 5250 1950
Wire Wire Line
	4950 2050 5250 2050
Wire Wire Line
	4950 2150 5250 2150
Wire Wire Line
	2850 2750 3450 2750
Wire Wire Line
	4950 2650 5650 2650
Wire Wire Line
	4950 2750 5550 2750
Wire Wire Line
	2850 2850 3350 2850
Text Label 2900 2850 0    50   ~ 0
~ROM_CS
Wire Wire Line
	4950 2850 5450 2850
Text Label 5000 2850 0    50   ~ 0
~RAM_CS
Wire Wire Line
	5450 2850 5450 4300
Wire Wire Line
	3350 4200 3350 2850
Wire Wire Line
	5550 4700 5550 2750
Wire Wire Line
	3450 4700 3450 2750
Entry Wire Line
	3850 2950 3950 2850
Entry Wire Line
	3850 2850 3950 2750
Entry Wire Line
	3850 2750 3950 2650
Entry Wire Line
	3850 2650 3950 2550
Entry Wire Line
	3850 2550 3950 2450
Entry Wire Line
	3850 2450 3950 2350
Entry Wire Line
	3850 2350 3950 2250
Entry Wire Line
	3850 2250 3950 2150
Entry Wire Line
	3850 2150 3950 2050
Entry Wire Line
	3850 2050 3950 1950
Entry Wire Line
	3850 1950 3950 1850
Entry Wire Line
	3850 1850 3950 1750
Entry Wire Line
	3850 1750 3950 1650
Entry Wire Line
	3850 1650 3950 1550
Entry Wire Line
	3850 1550 3950 1450
Entry Wire Line
	5350 2250 5250 2150
Entry Wire Line
	5350 2150 5250 2050
Entry Wire Line
	5350 2050 5250 1950
Entry Wire Line
	5350 1950 5250 1850
Entry Wire Line
	5350 1850 5250 1750
Entry Wire Line
	5350 1750 5250 1650
Entry Wire Line
	5350 1650 5250 1550
Entry Wire Line
	5350 1550 5250 1450
Wire Bus Line
	1750 4000 3850 4000
$Comp
L 0_Fred's_Local_Library:M48T02-70 U?
U 1 1 61EC8314
P 6650 1300
AR Path="/61EC8314" Ref="U?"  Part="1" 
AR Path="/62716C39/61EC8314" Ref="U4"  Part="1" 
F 0 "U4" H 6700 1400 50  0000 L CNN
F 1 "M48T02" H 6700 1300 50  0000 L CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 6650 1300 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/m48t02.pdf" H 6650 1300 50  0001 C CNN
	1    6650 1300
	1    0    0    -1  
$EndComp
Text Label 7350 1450 2    50   ~ 0
D0
Text Label 7350 1550 2    50   ~ 0
D1
Text Label 7350 1650 2    50   ~ 0
D2
Text Label 7350 1750 2    50   ~ 0
D3
Text Label 7350 1850 2    50   ~ 0
D4
Text Label 7350 1950 2    50   ~ 0
D5
Text Label 7350 2050 2    50   ~ 0
D6
Text Label 7350 2150 2    50   ~ 0
D7
Text Label 7100 2450 0    50   ~ 0
~RD
Text Label 7100 2350 0    50   ~ 0
~WR
Wire Wire Line
	7050 1450 7350 1450
Wire Wire Line
	7050 1550 7350 1550
Wire Wire Line
	7050 1650 7350 1650
Wire Wire Line
	7050 1750 7350 1750
Wire Wire Line
	7050 1850 7350 1850
Wire Wire Line
	7050 1950 7350 1950
Wire Wire Line
	7050 2050 7350 2050
Wire Wire Line
	7050 2150 7350 2150
Wire Wire Line
	7050 2350 7750 2350
Wire Wire Line
	7050 2450 7650 2450
Wire Wire Line
	7050 2550 7550 2550
Text Label 7100 2550 0    50   ~ 0
~NVRAM_CS
Wire Wire Line
	7550 2550 7550 4400
Entry Wire Line
	7450 2250 7350 2150
Entry Wire Line
	7450 2150 7350 2050
Entry Wire Line
	7450 2050 7350 1950
Entry Wire Line
	7450 1950 7350 1850
Entry Wire Line
	7450 1850 7350 1750
Entry Wire Line
	7450 1750 7350 1650
Entry Wire Line
	7450 1650 7350 1550
Entry Wire Line
	7450 1550 7350 1450
Text Label 6050 2450 0    50   ~ 0
A10
Text Label 6050 2350 0    50   ~ 0
A9
Text Label 6050 2250 0    50   ~ 0
A8
Text Label 6050 2150 0    50   ~ 0
A7
Text Label 6050 2050 0    50   ~ 0
A6
Text Label 6050 1950 0    50   ~ 0
A5
Text Label 6050 1850 0    50   ~ 0
A4
Text Label 6050 1750 0    50   ~ 0
A3
Text Label 6050 1650 0    50   ~ 0
A2
Text Label 6050 1550 0    50   ~ 0
A1
Text Label 6050 1450 0    50   ~ 0
A0
Wire Wire Line
	6050 1450 6250 1450
Wire Wire Line
	6050 1550 6250 1550
Wire Wire Line
	6050 1650 6250 1650
Wire Wire Line
	6050 1750 6250 1750
Wire Wire Line
	6050 1850 6250 1850
Wire Wire Line
	6050 1950 6250 1950
Wire Wire Line
	6050 2050 6250 2050
Wire Wire Line
	6050 2150 6250 2150
Wire Wire Line
	6050 2250 6250 2250
Wire Wire Line
	6050 2350 6250 2350
Wire Wire Line
	6050 2450 6250 2450
Entry Wire Line
	5950 2450 6050 2350
Entry Wire Line
	5950 2350 6050 2250
Entry Wire Line
	5950 2250 6050 2150
Entry Wire Line
	5950 2150 6050 2050
Entry Wire Line
	5950 2050 6050 1950
Entry Wire Line
	5950 1950 6050 1850
Entry Wire Line
	5950 1850 6050 1750
Entry Wire Line
	5950 1750 6050 1650
Entry Wire Line
	5950 1650 6050 1550
Entry Wire Line
	5950 1550 6050 1450
Entry Wire Line
	5950 2550 6050 2450
Wire Wire Line
	6650 1250 6650 1150
$Comp
L power:+5V #PWR?
U 1 1 61EC8315
P 6650 1150
AR Path="/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8315" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6650 1000 50  0001 C CNN
F 1 "+5V" H 6665 1323 50  0000 C CNN
F 2 "" H 6650 1150 50  0001 C CNN
F 3 "" H 6650 1150 50  0001 C CNN
	1    6650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2750 6650 2850
$Comp
L power:GND #PWR?
U 1 1 61EC8316
P 6650 2850
AR Path="/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8316" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 6650 2600 50  0001 C CNN
F 1 "GND" H 6655 2677 50  0000 C CNN
F 2 "" H 6650 2850 50  0001 C CNN
F 3 "" H 6650 2850 50  0001 C CNN
	1    6650 2850
	1    0    0    -1  
$EndComp
Wire Bus Line
	1450 4000 1750 4000
Connection ~ 1750 4000
Wire Wire Line
	3450 4700 5550 4700
Wire Wire Line
	7650 2450 7650 4700
Wire Wire Line
	7750 2350 7750 4800
Connection ~ 3450 4700
Wire Wire Line
	1450 4700 3450 4700
Wire Wire Line
	1450 4200 3350 4200
$Comp
L power:GND #PWR?
U 1 1 62221080
P 950 7600
AR Path="/5F86B098/62221080" Ref="#PWR?"  Part="1" 
AR Path="/62221080" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62221080" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62221080" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62221080" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/62221080" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/62221080" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 950 7350 50  0001 C CNN
F 1 "GND" H 955 7427 50  0000 C CNN
F 2 "" H 950 7600 50  0001 C CNN
F 3 "" H 950 7600 50  0001 C CNN
	1    950  7600
	1    0    0    -1  
$EndComp
Connection ~ 1300 7500
Connection ~ 1300 7100
Connection ~ 950  7100
Wire Wire Line
	950  7500 1300 7500
Wire Wire Line
	950  7450 950  7500
Wire Wire Line
	950  7100 1300 7100
Wire Wire Line
	950  7150 950  7100
$Comp
L Device:C C?
U 1 1 61EC8318
P 950 7300
AR Path="/61EC8318" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/61EC8318" Ref="C?"  Part="1" 
AR Path="/60CF5668/61EC8318" Ref="C?"  Part="1" 
AR Path="/63885FFC/61EC8318" Ref="C?"  Part="1" 
AR Path="/61BE126B/61EC8318" Ref="C?"  Part="1" 
AR Path="/61D74077/61EC8318" Ref="C?"  Part="1" 
AR Path="/623467B9/61EC8318" Ref="C?"  Part="1" 
AR Path="/62716C39/61EC8318" Ref="C10"  Part="1" 
F 0 "C10" H 1000 7400 50  0000 L CNN
F 1 "0.1µF" H 1000 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 988 7150 50  0001 C CNN
F 3 "~" H 950 7300 50  0001 C CNN
	1    950  7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7000 950  7100
Wire Wire Line
	1300 7500 1650 7500
Wire Wire Line
	1650 7450 1650 7500
Wire Wire Line
	1650 7150 1650 7100
$Comp
L Device:C C?
U 1 1 61EC8319
P 1650 7300
AR Path="/61EC8319" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/61EC8319" Ref="C?"  Part="1" 
AR Path="/60CF5668/61EC8319" Ref="C?"  Part="1" 
AR Path="/63885FFC/61EC8319" Ref="C?"  Part="1" 
AR Path="/61BE126B/61EC8319" Ref="C?"  Part="1" 
AR Path="/61D74077/61EC8319" Ref="C?"  Part="1" 
AR Path="/623467B9/61EC8319" Ref="C?"  Part="1" 
AR Path="/62716C39/61EC8319" Ref="C12"  Part="1" 
F 0 "C12" H 1700 7400 50  0000 L CNN
F 1 "0.1µF" H 1700 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1688 7150 50  0001 C CNN
F 3 "~" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7450 1300 7500
Wire Wire Line
	1300 7100 1650 7100
Wire Wire Line
	1300 7150 1300 7100
$Comp
L Device:C C?
U 1 1 61EC831A
P 1300 7300
AR Path="/61EC831A" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/61EC831A" Ref="C?"  Part="1" 
AR Path="/60CF5668/61EC831A" Ref="C?"  Part="1" 
AR Path="/63885FFC/61EC831A" Ref="C?"  Part="1" 
AR Path="/61BE126B/61EC831A" Ref="C?"  Part="1" 
AR Path="/61D74077/61EC831A" Ref="C?"  Part="1" 
AR Path="/623467B9/61EC831A" Ref="C?"  Part="1" 
AR Path="/62716C39/61EC831A" Ref="C11"  Part="1" 
F 0 "C11" H 1350 7400 50  0000 L CNN
F 1 "0.1µF" H 1350 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1338 7150 50  0001 C CNN
F 3 "~" H 1300 7300 50  0001 C CNN
	1    1300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 622210B2
P 950 7000
AR Path="/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/622210B2" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/622210B2" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 950 6850 50  0001 C CNN
F 1 "+5V" H 965 7173 50  0000 C CNN
F 2 "" H 950 7000 50  0001 C CNN
F 3 "" H 950 7000 50  0001 C CNN
	1    950  7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7600 950  7500
Text Notes 1000 7050 0    50   ~ 0
Bypass capacitors
Connection ~ 950  7500
Text Notes 6950 2750 2    50   ~ 0
2K
Wire Bus Line
	3850 4000 5950 4000
Connection ~ 3850 4000
Connection ~ 5550 4700
$Comp
L 0_Fred's_Local_Library:28C256 U?
U 1 1 61EC831C
P 2450 2350
AR Path="/61EC831C" Ref="U?"  Part="1" 
AR Path="/62716C39/61EC831C" Ref="U7"  Part="1" 
F 0 "U7" H 2500 3500 50  0000 L CNN
F 1 "28C256" H 2500 3400 50  0000 L CNN
F 2 "0_Fred's_Local_Library:ZIF-28" H 2450 2350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:CY62256-70PC U?
U 1 1 627186D4
P 4550 2150
AR Path="/627186D4" Ref="U?"  Part="1" 
AR Path="/62716C39/627186D4" Ref="U6"  Part="1" 
F 0 "U6" H 4600 3100 50  0000 L CNN
F 1 "71256" H 4600 3000 50  0000 L CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 4550 2050 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 4550 2050 50  0001 C CNN
	1    4550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4300 5450 4300
Wire Wire Line
	1450 4400 7550 4400
Text Label 7950 2450 0    50   ~ 0
A10
Text Label 7950 2350 0    50   ~ 0
A9
Text Label 7950 2250 0    50   ~ 0
A8
Text Label 7950 2150 0    50   ~ 0
A7
Text Label 7950 2050 0    50   ~ 0
A6
Text Label 7950 1950 0    50   ~ 0
A5
Text Label 7950 1850 0    50   ~ 0
A4
Text Label 7950 1750 0    50   ~ 0
A3
Text Label 7950 1650 0    50   ~ 0
A2
Text Label 7950 1550 0    50   ~ 0
A1
Text Label 7950 1450 0    50   ~ 0
A0
Entry Wire Line
	7850 2450 7950 2350
Entry Wire Line
	7850 2350 7950 2250
Entry Wire Line
	7850 2250 7950 2150
Entry Wire Line
	7850 2150 7950 2050
Entry Wire Line
	7850 2050 7950 1950
Entry Wire Line
	7850 1950 7950 1850
Entry Wire Line
	7850 1850 7950 1750
Entry Wire Line
	7850 1750 7950 1650
Entry Wire Line
	7850 1650 7950 1550
Entry Wire Line
	7850 1550 7950 1450
Entry Wire Line
	7850 2550 7950 2450
Text Label 9550 1450 2    50   ~ 0
D0
Text Label 9550 1550 2    50   ~ 0
D1
Text Label 9550 1650 2    50   ~ 0
D2
Text Label 9550 1750 2    50   ~ 0
D3
Text Label 9550 1850 2    50   ~ 0
D4
Text Label 9550 1950 2    50   ~ 0
D5
Text Label 9550 2050 2    50   ~ 0
D6
Text Label 9550 2150 2    50   ~ 0
D7
Entry Wire Line
	9650 2250 9550 2150
Entry Wire Line
	9650 2150 9550 2050
Entry Wire Line
	9650 2050 9550 1950
Entry Wire Line
	9650 1950 9550 1850
Entry Wire Line
	9650 1850 9550 1750
Entry Wire Line
	9650 1750 9550 1650
Entry Wire Line
	9650 1650 9550 1550
Entry Wire Line
	9650 1550 9550 1450
Wire Wire Line
	8750 1250 8750 1150
$Comp
L power:+5V #PWR?
U 1 1 6276B992
P 8750 1150
AR Path="/6276B992" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6276B992" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6276B992" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/6276B992" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/6276B992" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/6276B992" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 8750 1000 50  0001 C CNN
F 1 "+5V" H 8765 1323 50  0000 C CNN
F 2 "" H 8750 1150 50  0001 C CNN
F 3 "" H 8750 1150 50  0001 C CNN
	1    8750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3400 8750 3500
$Comp
L power:GND #PWR?
U 1 1 62772BEC
P 8750 3500
AR Path="/62772BEC" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62772BEC" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62772BEC" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/62772BEC" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/62772BEC" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/62772BEC" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 8750 3250 50  0001 C CNN
F 1 "GND" H 8755 3327 50  0000 C CNN
F 2 "" H 8750 3500 50  0001 C CNN
F 3 "" H 8750 3500 50  0001 C CNN
	1    8750 3500
	1    0    0    -1  
$EndComp
Text Label 9200 2550 0    50   ~ 0
~BANK_CS
Wire Wire Line
	9150 1450 9550 1450
Wire Wire Line
	9150 1550 9550 1550
Wire Wire Line
	9150 1650 9550 1650
Wire Wire Line
	9150 1750 9550 1750
Wire Wire Line
	9150 1850 9550 1850
Wire Wire Line
	9150 1950 9550 1950
Wire Wire Line
	9150 2050 9550 2050
Wire Wire Line
	9150 2150 9550 2150
Wire Wire Line
	9150 2550 9750 2550
Wire Wire Line
	9150 2450 9850 2450
Wire Wire Line
	9150 2350 9950 2350
Wire Wire Line
	7950 1450 8350 1450
Wire Wire Line
	7950 1550 8350 1550
Wire Wire Line
	7950 1650 8350 1650
Wire Wire Line
	7950 1750 8350 1750
Wire Wire Line
	7950 1850 8350 1850
Wire Wire Line
	7950 1950 8350 1950
Wire Wire Line
	7950 2050 8350 2050
Wire Wire Line
	7950 2150 8350 2150
Wire Wire Line
	7950 2250 8350 2250
Wire Wire Line
	7950 2350 8350 2350
Wire Wire Line
	7950 2450 8350 2450
Wire Wire Line
	8350 2650 7950 2650
Wire Wire Line
	8350 2750 8150 2750
Wire Wire Line
	8350 2850 8150 2850
Wire Wire Line
	8350 2950 8150 2950
Wire Wire Line
	8350 3050 8150 3050
Wire Wire Line
	8350 3150 8150 3150
Wire Wire Line
	8350 3250 8150 3250
$Comp
L 0_Fred's_Local_Library:AS6C4008 U?
U 1 1 628F39A4
P 8750 1350
AR Path="/628F39A4" Ref="U?"  Part="1" 
AR Path="/62716C39/628F39A4" Ref="U5"  Part="1" 
F 0 "U5" H 8800 1500 50  0000 L CNN
F 1 "AS6C4008" H 8800 1400 50  0000 L CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 8850 450 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 8850 450 50  0001 C CNN
	1    8750 1350
	1    0    0    -1  
$EndComp
Wire Bus Line
	5950 4000 7850 4000
Connection ~ 5950 4000
Wire Wire Line
	7750 4800 9950 4800
Wire Wire Line
	9950 4800 9950 2350
Connection ~ 7750 4800
Wire Wire Line
	7650 4700 9850 4700
Wire Wire Line
	9850 4700 9850 2450
Connection ~ 7650 4700
Wire Wire Line
	9750 2550 9750 4500
Wire Wire Line
	9750 4500 1450 4500
Text HLabel 1450 4500 0    50   Input ~ 0
~BANK_CS
Text HLabel 1450 4400 0    50   Input ~ 0
~NVRAM_CS
Text HLabel 1450 4300 0    50   Input ~ 0
~RAM_CS
Text HLabel 1450 4200 0    50   Input ~ 0
~ROM_CS
Text HLabel 1450 4700 0    50   Input ~ 0
~RD
Text HLabel 1450 4000 0    50   Input ~ 0
A[0..15]
Wire Bus Line
	7450 3800 9650 3800
Connection ~ 7450 3800
Connection ~ 5350 3800
Wire Bus Line
	5350 3800 7450 3800
Text HLabel 1450 3800 0    50   BiDi ~ 0
D[0..7]
Connection ~ 3250 3800
Wire Bus Line
	1450 3800 3250 3800
Text Label 9200 2350 0    50   ~ 0
~WR
Text Label 9200 2450 0    50   ~ 0
~RD
Text Label 7950 2650 0    50   ~ 0
A12
Text Label 8150 2750 0    50   ~ 0
L13
Text Label 8150 2850 0    50   ~ 0
L14
Text Label 8150 2950 0    50   ~ 0
L15
Text Label 8150 3050 0    50   ~ 0
L16
Text Label 8150 3150 0    50   ~ 0
L17
Text Label 8150 3250 0    50   ~ 0
L18
Entry Wire Line
	8150 2750 8050 2850
Entry Wire Line
	8150 2850 8050 2950
Entry Wire Line
	8150 2950 8050 3050
Entry Wire Line
	8150 3050 8050 3150
Entry Wire Line
	8150 3150 8050 3250
Entry Wire Line
	8150 3250 8050 3350
Wire Wire Line
	7650 4700 5550 4700
Wire Wire Line
	7750 4800 5650 4800
Wire Wire Line
	5650 2650 5650 4800
Text HLabel 1450 4800 0    50   Input ~ 0
~WR
Connection ~ 5650 4800
Wire Wire Line
	1450 4800 5650 4800
$Comp
L 74xx:74LS573 U8
U 1 1 62B17D63
P 4550 5950
F 0 "U8" H 4600 6700 50  0000 L CNN
F 1 "74HC573" H 4600 6600 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4550 5950 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 4550 5950 50  0001 C CNN
	1    4550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5450 5300 5450
Wire Wire Line
	5050 5550 5300 5550
Wire Wire Line
	5050 5650 5300 5650
Wire Wire Line
	5050 5750 5300 5750
Wire Wire Line
	5050 5850 5300 5850
Wire Wire Line
	5050 5950 5300 5950
Entry Wire Line
	5300 5550 5400 5450
Entry Wire Line
	5300 5650 5400 5550
Entry Wire Line
	5300 5750 5400 5650
Entry Wire Line
	5300 5850 5400 5750
Text Label 3800 5450 0    50   ~ 0
D0
Text Label 3800 5550 0    50   ~ 0
D1
Text Label 3800 5650 0    50   ~ 0
D2
Text Label 3800 5750 0    50   ~ 0
D3
Text Label 3800 5850 0    50   ~ 0
D4
Text Label 3800 5950 0    50   ~ 0
D5
Text Label 3800 6050 0    50   ~ 0
D6
Text Label 3800 6150 0    50   ~ 0
D7
Entry Wire Line
	3800 6150 3700 6050
Entry Wire Line
	3800 6050 3700 5950
Entry Wire Line
	3800 5950 3700 5850
Entry Wire Line
	3800 5850 3700 5750
Entry Wire Line
	3800 5750 3700 5650
Entry Wire Line
	3800 5650 3700 5550
Entry Wire Line
	3800 5550 3700 5450
Entry Wire Line
	3800 5450 3700 5350
Entry Wire Line
	5300 5950 5400 5850
Wire Wire Line
	3800 5450 4050 5450
Wire Wire Line
	3800 5550 4050 5550
Wire Wire Line
	3800 5650 4050 5650
Wire Wire Line
	3800 5750 4050 5750
Wire Wire Line
	3800 5850 4050 5850
Wire Wire Line
	3800 5950 4050 5950
Wire Wire Line
	3800 6050 4050 6050
Wire Wire Line
	3800 6150 4050 6150
$Comp
L power:GND #PWR?
U 1 1 62C70B9F
P 4550 6800
AR Path="/62C70B9F" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62C70B9F" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62C70B9F" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/62C70B9F" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/62C70B9F" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/62C70B9F" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4550 6550 50  0001 C CNN
F 1 "GND" H 4555 6627 50  0000 C CNN
F 2 "" H 4550 6800 50  0001 C CNN
F 3 "" H 4550 6800 50  0001 C CNN
	1    4550 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62C7C246
P 4550 5150
AR Path="/62C7C246" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62C7C246" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62C7C246" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/62C7C246" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/62C7C246" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/62C7C246" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 4550 5000 50  0001 C CNN
F 1 "+5V" H 4550 5300 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6750 4550 6800
Wire Wire Line
	4550 6750 4050 6750
Wire Wire Line
	4050 6750 4050 6450
Connection ~ 4550 6750
Wire Wire Line
	4050 6350 3450 6350
Wire Wire Line
	3450 5000 1450 5000
Text HLabel 1450 5000 0    50   Input ~ 0
BANK_SEL
Wire Wire Line
	1650 7500 2000 7500
Wire Wire Line
	2000 7450 2000 7500
Wire Wire Line
	2000 7150 2000 7100
$Comp
L Device:C C?
U 1 1 62CECA67
P 2000 7300
AR Path="/62CECA67" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/62CECA67" Ref="C?"  Part="1" 
AR Path="/60CF5668/62CECA67" Ref="C?"  Part="1" 
AR Path="/63885FFC/62CECA67" Ref="C?"  Part="1" 
AR Path="/61BE126B/62CECA67" Ref="C?"  Part="1" 
AR Path="/61D74077/62CECA67" Ref="C?"  Part="1" 
AR Path="/623467B9/62CECA67" Ref="C?"  Part="1" 
AR Path="/62716C39/62CECA67" Ref="C13"  Part="1" 
F 0 "C13" H 2050 7400 50  0000 L CNN
F 1 "0.1µF" H 2050 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2038 7150 50  0001 C CNN
F 3 "~" H 2000 7300 50  0001 C CNN
	1    2000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7100 2000 7100
Wire Wire Line
	2000 7500 2350 7500
Wire Wire Line
	2350 7450 2350 7500
Wire Wire Line
	2350 7150 2350 7100
$Comp
L Device:C C?
U 1 1 62CF99F4
P 2350 7300
AR Path="/62CF99F4" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/62CF99F4" Ref="C?"  Part="1" 
AR Path="/60CF5668/62CF99F4" Ref="C?"  Part="1" 
AR Path="/63885FFC/62CF99F4" Ref="C?"  Part="1" 
AR Path="/61BE126B/62CF99F4" Ref="C?"  Part="1" 
AR Path="/61D74077/62CF99F4" Ref="C?"  Part="1" 
AR Path="/623467B9/62CF99F4" Ref="C?"  Part="1" 
AR Path="/62716C39/62CF99F4" Ref="C14"  Part="1" 
F 0 "C14" H 2400 7400 50  0000 L CNN
F 1 "0.1µF" H 2400 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2388 7150 50  0001 C CNN
F 3 "~" H 2350 7300 50  0001 C CNN
	1    2350 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7100 2350 7100
Connection ~ 2000 7100
Connection ~ 1650 7100
Connection ~ 1650 7500
Connection ~ 2000 7500
Wire Wire Line
	3450 6350 3450 5000
Wire Bus Line
	3250 3800 3700 3800
Connection ~ 3700 3800
Wire Bus Line
	3700 3800 5350 3800
Text Label 5100 5950 0    50   ~ 0
L18
Text Label 5100 5850 0    50   ~ 0
L17
Text Label 5100 5750 0    50   ~ 0
L16
Text Label 5100 5650 0    50   ~ 0
L15
Text Label 5100 5550 0    50   ~ 0
L14
Text Label 5100 5450 0    50   ~ 0
L13
Wire Bus Line
	5400 5000 8050 5000
Wire Wire Line
	8350 2550 7950 2550
Entry Wire Line
	7950 2550 7850 2650
Text Label 7950 2550 0    50   ~ 0
A11
Entry Wire Line
	7950 2650 7850 2750
NoConn ~ 5050 6050
NoConn ~ 5050 6150
Entry Wire Line
	5300 5450 5400 5350
Text Notes 9050 3450 2    50   ~ 0
512K
Text Notes 9050 3500 2    30   ~ 0
64 x 8K
Wire Bus Line
	8050 2850 8050 5000
Wire Bus Line
	5400 5000 5400 5850
Wire Bus Line
	9650 1550 9650 3800
Wire Bus Line
	5950 1550 5950 4000
Wire Bus Line
	7450 1550 7450 3800
Wire Bus Line
	5350 1550 5350 3800
Wire Bus Line
	3250 1550 3250 3800
Wire Bus Line
	3700 3800 3700 6050
Wire Bus Line
	1750 1550 1750 4000
Wire Bus Line
	3850 1550 3850 4000
Wire Bus Line
	7850 1550 7850 4000
$EndSCHEMATC
