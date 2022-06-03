EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 11
Title "Memory: ROM, RAM, Bank RAM, and NVRAM with RTC"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5300 3650 5300 3750
Text Label 4700 3450 0    50   ~ 0
A14
Text Label 4700 3350 0    50   ~ 0
A13
Text Label 4700 3250 0    50   ~ 0
A12
Text Label 4700 3150 0    50   ~ 0
A11
Text Label 4700 3050 0    50   ~ 0
A10
Text Label 4700 2950 0    50   ~ 0
A9
Text Label 4700 2850 0    50   ~ 0
A8
Text Label 4700 2750 0    50   ~ 0
A7
Text Label 4700 2650 0    50   ~ 0
A6
Text Label 4700 2550 0    50   ~ 0
A5
Text Label 4700 2450 0    50   ~ 0
A4
Text Label 4700 2350 0    50   ~ 0
A3
Text Label 4700 2250 0    50   ~ 0
A2
Text Label 4700 2150 0    50   ~ 0
A1
Text Label 4700 2050 0    50   ~ 0
A0
Wire Wire Line
	5300 1850 5300 1750
$Comp
L power:+5V #PWR?
U 1 1 61ED3287
P 5300 1750
AR Path="/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61ED3287" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61ED3287" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5300 1600 50  0001 C CNN
F 1 "+5V" H 5315 1923 50  0000 C CNN
F 2 "" H 5300 1750 50  0001 C CNN
F 3 "" H 5300 1750 50  0001 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ED328D
P 5300 3750
AR Path="/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61ED328D" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61ED328D" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5300 3500 50  0001 C CNN
F 1 "GND" H 5305 3577 50  0000 C CNN
F 2 "" H 5300 3750 50  0001 C CNN
F 3 "" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2050 4900 2050
Wire Wire Line
	4700 2150 4900 2150
Wire Wire Line
	4700 2250 4900 2250
Wire Wire Line
	4700 2350 4900 2350
Wire Wire Line
	4700 2450 4900 2450
Wire Wire Line
	4700 2550 4900 2550
Wire Wire Line
	4700 2650 4900 2650
Wire Wire Line
	4700 2750 4900 2750
Wire Wire Line
	4700 2850 4900 2850
Wire Wire Line
	4700 2950 4900 2950
Wire Wire Line
	4700 3050 4900 3050
Wire Wire Line
	4700 3150 4900 3150
Wire Wire Line
	4700 3250 4900 3250
Wire Wire Line
	4700 3350 4900 3350
Wire Wire Line
	4700 3450 4900 3450
Text Notes 5600 3650 2    50   ~ 0
32K
Text Label 6000 2050 2    50   ~ 0
D0
Text Label 6000 2150 2    50   ~ 0
D1
Text Label 6000 2250 2    50   ~ 0
D2
Text Label 6000 2350 2    50   ~ 0
D3
Text Label 6000 2450 2    50   ~ 0
D4
Text Label 6000 2550 2    50   ~ 0
D5
Text Label 6000 2650 2    50   ~ 0
D6
Text Label 6000 2750 2    50   ~ 0
D7
Text Notes 3500 3650 2    50   ~ 0
32K
Wire Wire Line
	3200 1850 3200 1750
Wire Wire Line
	3700 3250 3600 3250
Wire Wire Line
	3700 3150 3700 3250
$Comp
L power:+5V #PWR?
U 1 1 61EC8311
P 3700 3150
AR Path="/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8311" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8311" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 3700 3000 50  0001 C CNN
F 1 "+5V" H 3715 3323 50  0000 C CNN
F 2 "" H 3700 3150 50  0001 C CNN
F 3 "" H 3700 3150 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3650 3200 3750
$Comp
L power:+5V #PWR?
U 1 1 61EC8312
P 3200 1750
AR Path="/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8312" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8312" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 3200 1600 50  0001 C CNN
F 1 "+5V" H 3215 1923 50  0000 C CNN
F 2 "" H 3200 1750 50  0001 C CNN
F 3 "" H 3200 1750 50  0001 C CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
Text Label 3900 2750 2    50   ~ 0
D7
Text Label 3900 2650 2    50   ~ 0
D6
Text Label 3900 2550 2    50   ~ 0
D5
Text Label 3900 2450 2    50   ~ 0
D4
Text Label 3900 2350 2    50   ~ 0
D3
Text Label 3900 2250 2    50   ~ 0
D2
Text Label 3900 2150 2    50   ~ 0
D1
Text Label 3900 2050 2    50   ~ 0
D0
Text Label 2600 3450 0    50   ~ 0
A14
Text Label 2600 3350 0    50   ~ 0
A13
Text Label 2600 3250 0    50   ~ 0
A12
Text Label 2600 3150 0    50   ~ 0
A11
Text Label 2600 3050 0    50   ~ 0
A10
Text Label 2600 2950 0    50   ~ 0
A9
Text Label 2600 2850 0    50   ~ 0
A8
Text Label 2600 2750 0    50   ~ 0
A7
Text Label 2600 2650 0    50   ~ 0
A6
Text Label 2600 2550 0    50   ~ 0
A5
Text Label 2600 2450 0    50   ~ 0
A4
Text Label 2600 2350 0    50   ~ 0
A3
Text Label 2600 2250 0    50   ~ 0
A2
Text Label 2600 2150 0    50   ~ 0
A1
Text Label 2600 2050 0    50   ~ 0
A0
Wire Wire Line
	2600 3450 2800 3450
Wire Wire Line
	2800 3350 2600 3350
Wire Wire Line
	2600 3250 2800 3250
Wire Wire Line
	2800 3150 2600 3150
Wire Wire Line
	2600 3050 2800 3050
Wire Wire Line
	2800 2950 2600 2950
Wire Wire Line
	2600 2850 2800 2850
Wire Wire Line
	2600 2750 2800 2750
Wire Wire Line
	2600 2650 2800 2650
Wire Wire Line
	2600 2550 2800 2550
Wire Wire Line
	2600 2450 2800 2450
Wire Wire Line
	2800 2350 2600 2350
Wire Wire Line
	2600 2250 2800 2250
Wire Wire Line
	2800 2150 2600 2150
Wire Wire Line
	2600 2050 2800 2050
$Comp
L power:GND #PWR?
U 1 1 61EC8313
P 3200 3750
AR Path="/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8313" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8313" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3200 3500 50  0001 C CNN
F 1 "GND" H 3205 3577 50  0000 C CNN
F 2 "" H 3200 3750 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
Entry Wire Line
	2500 3550 2600 3450
Entry Wire Line
	2500 3450 2600 3350
Entry Wire Line
	2500 3350 2600 3250
Entry Wire Line
	2500 3250 2600 3150
Entry Wire Line
	2500 3150 2600 3050
Entry Wire Line
	2500 3050 2600 2950
Entry Wire Line
	2500 2950 2600 2850
Entry Wire Line
	2500 2850 2600 2750
Entry Wire Line
	2500 2750 2600 2650
Entry Wire Line
	2500 2650 2600 2550
Entry Wire Line
	2500 2550 2600 2450
Entry Wire Line
	2500 2450 2600 2350
Entry Wire Line
	2500 2350 2600 2250
Entry Wire Line
	2500 2250 2600 2150
Entry Wire Line
	2500 2150 2600 2050
Entry Wire Line
	4000 2850 3900 2750
Entry Wire Line
	4000 2750 3900 2650
Entry Wire Line
	4000 2650 3900 2550
Entry Wire Line
	4000 2550 3900 2450
Entry Wire Line
	4000 2450 3900 2350
Entry Wire Line
	4000 2350 3900 2250
Entry Wire Line
	4000 2250 3900 2150
Entry Wire Line
	4000 2150 3900 2050
Text Label 5750 3350 0    50   ~ 0
~RD
Text Label 5750 3250 0    50   ~ 0
~WR
Text Label 3650 3350 0    50   ~ 0
~RD
Wire Wire Line
	3600 2050 3900 2050
Wire Wire Line
	3600 2150 3900 2150
Wire Wire Line
	3600 2250 3900 2250
Wire Wire Line
	3600 2350 3900 2350
Wire Wire Line
	3600 2450 3900 2450
Wire Wire Line
	3600 2550 3900 2550
Wire Wire Line
	3600 2650 3900 2650
Wire Wire Line
	3600 2750 3900 2750
Wire Wire Line
	5700 2050 6000 2050
Wire Wire Line
	5700 2150 6000 2150
Wire Wire Line
	5700 2250 6000 2250
Wire Wire Line
	5700 2350 6000 2350
Wire Wire Line
	5700 2450 6000 2450
Wire Wire Line
	5700 2550 6000 2550
Wire Wire Line
	5700 2650 6000 2650
Wire Wire Line
	5700 2750 6000 2750
Wire Wire Line
	3600 3350 4200 3350
Wire Wire Line
	5700 3250 6400 3250
Wire Wire Line
	5700 3350 6300 3350
Wire Wire Line
	3600 3450 4100 3450
Text Label 3650 3450 0    50   ~ 0
~ROM_CS
Wire Wire Line
	5700 3450 6200 3450
Text Label 5750 3450 0    50   ~ 0
~RAM_CS
Wire Wire Line
	6200 3450 6200 4900
Wire Wire Line
	4100 4800 4100 3450
Wire Wire Line
	6300 5300 6300 3350
Wire Wire Line
	4200 5300 4200 3350
Entry Wire Line
	4600 3550 4700 3450
Entry Wire Line
	4600 3450 4700 3350
Entry Wire Line
	4600 3350 4700 3250
Entry Wire Line
	4600 3250 4700 3150
Entry Wire Line
	4600 3150 4700 3050
Entry Wire Line
	4600 3050 4700 2950
Entry Wire Line
	4600 2950 4700 2850
Entry Wire Line
	4600 2850 4700 2750
Entry Wire Line
	4600 2750 4700 2650
Entry Wire Line
	4600 2650 4700 2550
Entry Wire Line
	4600 2550 4700 2450
Entry Wire Line
	4600 2450 4700 2350
Entry Wire Line
	4600 2350 4700 2250
Entry Wire Line
	4600 2250 4700 2150
Entry Wire Line
	4600 2150 4700 2050
Entry Wire Line
	6100 2850 6000 2750
Entry Wire Line
	6100 2750 6000 2650
Entry Wire Line
	6100 2650 6000 2550
Entry Wire Line
	6100 2550 6000 2450
Entry Wire Line
	6100 2450 6000 2350
Entry Wire Line
	6100 2350 6000 2250
Entry Wire Line
	6100 2250 6000 2150
Entry Wire Line
	6100 2150 6000 2050
Wire Bus Line
	2500 4600 4600 4600
$Comp
L 0_Fred's_Local_Library:M48T02-70 U?
U 1 1 61EC8314
P 7400 1900
AR Path="/61EC8314" Ref="U?"  Part="1" 
AR Path="/62716C39/61EC8314" Ref="U2"  Part="1" 
F 0 "U2" H 7450 2000 50  0000 L CNN
F 1 "M48T02" H 7450 1900 50  0000 L CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 7400 1900 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/m48t02.pdf" H 7400 1900 50  0001 C CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
Text Label 8100 2050 2    50   ~ 0
D0
Text Label 8100 2150 2    50   ~ 0
D1
Text Label 8100 2250 2    50   ~ 0
D2
Text Label 8100 2350 2    50   ~ 0
D3
Text Label 8100 2450 2    50   ~ 0
D4
Text Label 8100 2550 2    50   ~ 0
D5
Text Label 8100 2650 2    50   ~ 0
D6
Text Label 8100 2750 2    50   ~ 0
D7
Text Label 7850 3050 0    50   ~ 0
~RD
Text Label 7850 2950 0    50   ~ 0
~WR
Wire Wire Line
	7800 2050 8100 2050
Wire Wire Line
	7800 2150 8100 2150
Wire Wire Line
	7800 2250 8100 2250
Wire Wire Line
	7800 2350 8100 2350
Wire Wire Line
	7800 2450 8100 2450
Wire Wire Line
	7800 2550 8100 2550
Wire Wire Line
	7800 2650 8100 2650
Wire Wire Line
	7800 2750 8100 2750
Wire Wire Line
	7800 2950 8500 2950
Wire Wire Line
	7800 3050 8400 3050
Wire Wire Line
	7800 3150 8300 3150
Text Label 7850 3150 0    50   ~ 0
~NVRAM_CS
Wire Wire Line
	8300 3150 8300 5000
Entry Wire Line
	8200 2850 8100 2750
Entry Wire Line
	8200 2750 8100 2650
Entry Wire Line
	8200 2650 8100 2550
Entry Wire Line
	8200 2550 8100 2450
Entry Wire Line
	8200 2450 8100 2350
Entry Wire Line
	8200 2350 8100 2250
Entry Wire Line
	8200 2250 8100 2150
Entry Wire Line
	8200 2150 8100 2050
Text Label 6800 3050 0    50   ~ 0
A10
Text Label 6800 2950 0    50   ~ 0
A9
Text Label 6800 2850 0    50   ~ 0
A8
Text Label 6800 2750 0    50   ~ 0
A7
Text Label 6800 2650 0    50   ~ 0
A6
Text Label 6800 2550 0    50   ~ 0
A5
Text Label 6800 2450 0    50   ~ 0
A4
Text Label 6800 2350 0    50   ~ 0
A3
Text Label 6800 2250 0    50   ~ 0
A2
Text Label 6800 2150 0    50   ~ 0
A1
Text Label 6800 2050 0    50   ~ 0
A0
Wire Wire Line
	6800 2050 7000 2050
Wire Wire Line
	6800 2150 7000 2150
Wire Wire Line
	6800 2250 7000 2250
Wire Wire Line
	6800 2350 7000 2350
Wire Wire Line
	6800 2450 7000 2450
Wire Wire Line
	6800 2550 7000 2550
Wire Wire Line
	6800 2650 7000 2650
Wire Wire Line
	6800 2750 7000 2750
Wire Wire Line
	6800 2850 7000 2850
Wire Wire Line
	6800 2950 7000 2950
Wire Wire Line
	6800 3050 7000 3050
Entry Wire Line
	6700 3050 6800 2950
Entry Wire Line
	6700 2950 6800 2850
Entry Wire Line
	6700 2850 6800 2750
Entry Wire Line
	6700 2750 6800 2650
Entry Wire Line
	6700 2650 6800 2550
Entry Wire Line
	6700 2550 6800 2450
Entry Wire Line
	6700 2450 6800 2350
Entry Wire Line
	6700 2350 6800 2250
Entry Wire Line
	6700 2250 6800 2150
Entry Wire Line
	6700 2150 6800 2050
Entry Wire Line
	6700 3150 6800 3050
Wire Wire Line
	7400 1850 7400 1750
$Comp
L power:+5V #PWR?
U 1 1 61EC8315
P 7400 1750
AR Path="/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8315" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8315" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 7400 1600 50  0001 C CNN
F 1 "+5V" H 7415 1923 50  0000 C CNN
F 2 "" H 7400 1750 50  0001 C CNN
F 3 "" H 7400 1750 50  0001 C CNN
	1    7400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3350 7400 3450
$Comp
L power:GND #PWR?
U 1 1 61EC8316
P 7400 3450
AR Path="/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61EC9461/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/61EC8316" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/61EC8316" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 7400 3200 50  0001 C CNN
F 1 "GND" H 7405 3277 50  0000 C CNN
F 2 "" H 7400 3450 50  0001 C CNN
F 3 "" H 7400 3450 50  0001 C CNN
	1    7400 3450
	1    0    0    -1  
$EndComp
Wire Bus Line
	2200 4600 2500 4600
Connection ~ 2500 4600
Wire Wire Line
	4200 5300 6300 5300
Wire Wire Line
	8400 3050 8400 5300
Wire Wire Line
	8500 2950 8500 5400
Connection ~ 4200 5300
Wire Wire Line
	2200 5300 4200 5300
Wire Wire Line
	2200 4800 4100 4800
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
AR Path="/62716C39/62221080" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 950 7350 50  0001 C CNN
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
AR Path="/62716C39/61EC8318" Ref="C2"  Part="1" 
F 0 "C2" H 1000 7400 50  0000 L CNN
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
AR Path="/62716C39/61EC8319" Ref="C4"  Part="1" 
F 0 "C4" H 1700 7400 50  0000 L CNN
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
AR Path="/62716C39/61EC831A" Ref="C3"  Part="1" 
F 0 "C3" H 1350 7400 50  0000 L CNN
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
AR Path="/62716C39/622210B2" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 950 6850 50  0001 C CNN
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
Text Notes 7700 3350 2    50   ~ 0
2K
Wire Bus Line
	4600 4600 6700 4600
Connection ~ 4600 4600
Connection ~ 6300 5300
$Comp
L 0_Fred's_Local_Library:28C256 U?
U 1 1 61EC831C
P 3200 2950
AR Path="/61EC831C" Ref="U?"  Part="1" 
AR Path="/62716C39/61EC831C" Ref="U4"  Part="1" 
F 0 "U4" H 3250 4100 50  0000 L CNN
F 1 "28C256" H 3250 4000 50  0000 L CNN
F 2 "0_Fred's_Local_Library:ZIF-28" H 3200 2950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:CY62256-70PC U?
U 1 1 627186D4
P 5300 2750
AR Path="/627186D4" Ref="U?"  Part="1" 
AR Path="/62716C39/627186D4" Ref="U3"  Part="1" 
F 0 "U3" H 5350 3700 50  0000 L CNN
F 1 "71256" H 5350 3600 50  0000 L CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 5300 2650 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 5300 2650 50  0001 C CNN
	1    5300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4900 6200 4900
Wire Wire Line
	2200 5000 8300 5000
Text HLabel 2200 5000 0    50   Input ~ 0
~NVRAM_CS
Text HLabel 2200 4900 0    50   Input ~ 0
~RAM_CS
Text HLabel 2200 4800 0    50   Input ~ 0
~ROM_CS
Text HLabel 2200 5300 0    50   Input ~ 0
~RD
Text HLabel 2200 4600 0    50   Input ~ 0
A[0..15]
Connection ~ 6100 4400
Wire Bus Line
	6100 4400 8200 4400
Text HLabel 2200 4400 0    50   BiDi ~ 0
D[0..7]
Connection ~ 4000 4400
Wire Bus Line
	2200 4400 4000 4400
Wire Wire Line
	8400 5300 6300 5300
Wire Wire Line
	8500 5400 6400 5400
Wire Wire Line
	6400 3250 6400 5400
Text HLabel 2200 5400 0    50   Input ~ 0
~WR
Connection ~ 6400 5400
Wire Wire Line
	2200 5400 6400 5400
Wire Bus Line
	4000 4400 6100 4400
Wire Bus Line
	6700 2150 6700 4600
Wire Bus Line
	8200 2150 8200 4400
Wire Bus Line
	6100 2150 6100 4400
Wire Bus Line
	4000 2150 4000 4400
Wire Bus Line
	2500 2150 2500 4600
Wire Bus Line
	4600 2150 4600 4600
$EndSCHEMATC
