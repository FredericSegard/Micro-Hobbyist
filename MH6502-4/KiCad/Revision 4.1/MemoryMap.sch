EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 11
Title "Memory Map Decoding"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 1000 7500
Text Notes 1050 7050 0    50   ~ 0
Bypass capacitors
Wire Wire Line
	1000 7550 1000 7500
$Comp
L power:+5V #PWR?
U 1 1 621C76A0
P 1000 7050
AR Path="/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/621C76A0" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/621C76A0" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 1000 6900 50  0001 C CNN
F 1 "+5V" H 1015 7223 50  0000 C CNN
F 2 "" H 1000 7050 50  0001 C CNN
F 3 "" H 1000 7050 50  0001 C CNN
	1    1000 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 621C769A
P 1350 7300
AR Path="/621C769A" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/621C769A" Ref="C?"  Part="1" 
AR Path="/60CF5668/621C769A" Ref="C?"  Part="1" 
AR Path="/63885FFC/621C769A" Ref="C?"  Part="1" 
AR Path="/61BE126B/621C769A" Ref="C?"  Part="1" 
AR Path="/61D74077/621C769A" Ref="C?"  Part="1" 
AR Path="/6229D10A/621C769A" Ref="C?"  Part="1" 
AR Path="/61CDC8A2/621C769A" Ref="C7"  Part="1" 
F 0 "C7" H 1400 7400 50  0000 L CNN
F 1 "0.1µF" H 1400 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1388 7150 50  0001 C CNN
F 3 "~" H 1350 7300 50  0001 C CNN
	1    1350 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7150 1350 7100
Wire Wire Line
	1350 7450 1350 7500
Wire Wire Line
	1000 7050 1000 7100
$Comp
L Device:C C?
U 1 1 621C767C
P 1000 7300
AR Path="/621C767C" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/621C767C" Ref="C?"  Part="1" 
AR Path="/60CF5668/621C767C" Ref="C?"  Part="1" 
AR Path="/63885FFC/621C767C" Ref="C?"  Part="1" 
AR Path="/61BE126B/621C767C" Ref="C?"  Part="1" 
AR Path="/61D74077/621C767C" Ref="C?"  Part="1" 
AR Path="/6229D10A/621C767C" Ref="C?"  Part="1" 
AR Path="/61CDC8A2/621C767C" Ref="C6"  Part="1" 
F 0 "C6" H 1050 7400 50  0000 L CNN
F 1 "0.1µF" H 1050 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1038 7150 50  0001 C CNN
F 3 "~" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7150 1000 7100
Wire Wire Line
	1000 7100 1350 7100
Wire Wire Line
	1000 7450 1000 7500
Wire Wire Line
	1000 7500 1350 7500
Connection ~ 1000 7100
$Comp
L power:GND #PWR?
U 1 1 621C766E
P 1000 7550
AR Path="/5F86B098/621C766E" Ref="#PWR?"  Part="1" 
AR Path="/621C766E" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/621C766E" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/621C766E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/621C766E" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/621C766E" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/621C766E" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 1000 7300 50  0001 C CNN
F 1 "GND" H 1005 7377 50  0000 C CNN
F 2 "" H 1000 7550 50  0001 C CNN
F 3 "" H 1000 7550 50  0001 C CNN
	1    1000 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61D5DBF8
P 4550 1700
AR Path="/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61D5DBF8" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61D5DBF8" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 4550 1550 50  0001 C CNN
F 1 "+5V" H 4565 1873 50  0000 C CNN
F 2 "" H 4550 1700 50  0001 C CNN
F 3 "" H 4550 1700 50  0001 C CNN
	1    4550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1750 4550 1700
$Comp
L power:GND #PWR?
U 1 1 61D5ED0C
P 4550 3350
AR Path="/5F86B098/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61D5ED0C" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 4550 3100 50  0001 C CNN
F 1 "GND" H 4555 3177 50  0000 C CNN
F 2 "" H 4550 3350 50  0001 C CNN
F 3 "" H 4550 3350 50  0001 C CNN
	1    4550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2050 3800 2050
Wire Wire Line
	4100 2150 3800 2150
Wire Wire Line
	4100 2250 3800 2250
Wire Wire Line
	4100 2350 3800 2350
Wire Wire Line
	4100 2450 3800 2450
Wire Wire Line
	4100 2550 3800 2550
Wire Wire Line
	4100 2650 3800 2650
Text Label 5300 2250 2    50   ~ 0
~IOREQ
Text Label 3800 1950 0    50   ~ 0
CLK
Text Label 3800 2650 0    50   ~ 0
A9
Text Label 3800 2550 0    50   ~ 0
A10
Text Label 3800 2450 0    50   ~ 0
A11
Text Label 3800 2350 0    50   ~ 0
A12
Text Label 3800 2250 0    50   ~ 0
A13
Text Label 3800 2150 0    50   ~ 0
A14
Text Label 3800 2050 0    50   ~ 0
A15
Text Label 3800 5550 0    50   ~ 0
A0
Text Label 3800 5450 0    50   ~ 0
A1
Text Label 3800 5350 0    50   ~ 0
A2
Text Label 3800 5250 0    50   ~ 0
A3
Text Label 3800 5150 0    50   ~ 0
A4
Text Label 3800 5050 0    50   ~ 0
A5
Text Label 3800 4950 0    50   ~ 0
A6
Text Label 3800 4750 0    50   ~ 0
~IOREQ
Entry Wire Line
	3700 4750 3800 4850
Entry Wire Line
	3700 4850 3800 4950
Entry Wire Line
	3700 4950 3800 5050
Entry Wire Line
	3700 5050 3800 5150
Entry Wire Line
	3700 5150 3800 5250
Entry Wire Line
	3700 5250 3800 5350
Entry Wire Line
	3700 5350 3800 5450
$Comp
L power:GND #PWR?
U 1 1 61DC2253
P 4550 5950
AR Path="/5F86B098/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61DC2253" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 4550 5700 50  0001 C CNN
F 1 "GND" H 4555 5777 50  0000 C CNN
F 2 "" H 4550 5950 50  0001 C CNN
F 3 "" H 4550 5950 50  0001 C CNN
	1    4550 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61DC4420
P 4550 4300
AR Path="/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DC4420" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61DC4420" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4550 4150 50  0001 C CNN
F 1 "+5V" H 4565 4473 50  0000 C CNN
F 2 "" H 4550 4300 50  0001 C CNN
F 3 "" H 4550 4300 50  0001 C CNN
	1    4550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4350 4550 4300
Text HLabel 2800 1950 0    50   Input ~ 0
CLK
Wire Bus Line
	3700 3700 2800 3700
Text HLabel 2800 3700 0    50   Input ~ 0
A[0..15]
Wire Wire Line
	5000 2050 7650 2050
Wire Wire Line
	5000 2150 7650 2150
Wire Wire Line
	5000 2350 7650 2350
Text HLabel 7650 2050 2    50   Output ~ 0
~ROM_CS
Text HLabel 7650 2150 2    50   Output ~ 0
~NVRAM_CS
Text HLabel 7650 2250 2    50   Output ~ 0
~IOREQ
Text HLabel 7650 2350 2    50   Output ~ 0
~RAM_CS
Text Notes 5800 2050 0    50   ~ 0
$8000-$FFFF (32K)
Text Notes 5800 2150 0    50   ~ 0
$7800-$7FFF (2K & RTC)
Text Notes 5800 2250 0    50   ~ 0
$7700-$77FF (256 bytes)
Text Notes 5800 2350 0    50   ~ 0
$0000-$75FF (Approx. 30K)
Wire Wire Line
	5000 2650 7650 2650
Wire Wire Line
	5000 2450 7650 2450
Text HLabel 7650 2650 2    50   Output ~ 0
~ACIA2
Text HLabel 7650 2450 2    50   Output ~ 0
~VIA1
Text Notes 5800 2650 0    50   ~ 0
$7714-$7717
Text Notes 5800 2450 0    50   ~ 0
$7700-$770F (Keyboard, mouse & NES)
Wire Wire Line
	3800 2750 4100 2750
Text Label 3800 2750 0    50   ~ 0
A8
Wire Wire Line
	4550 3250 4550 3350
Wire Wire Line
	5000 4650 7650 4650
Wire Wire Line
	5000 4850 7650 4850
Wire Wire Line
	5000 4950 7650 4950
Wire Wire Line
	5000 4750 7650 4750
Text Label 3800 4650 0    50   ~ 0
R~W
Text HLabel 7650 4650 2    50   Output ~ 0
~VDPCSR
Text HLabel 7650 4750 2    50   Output ~ 0
~VDPCSW
Text HLabel 7650 4950 2    50   Output ~ 0
BDIR1
Text HLabel 7650 4850 2    50   Output ~ 0
BC1
Wire Wire Line
	4550 5850 4550 5900
Wire Wire Line
	5000 2250 7650 2250
Wire Wire Line
	4100 4750 3800 4750
Entry Wire Line
	3700 2150 3800 2050
Entry Wire Line
	3700 2250 3800 2150
Entry Wire Line
	3700 2350 3800 2250
Entry Wire Line
	3700 2450 3800 2350
Entry Wire Line
	3700 2550 3800 2450
Entry Wire Line
	3700 2650 3800 2550
Entry Wire Line
	3700 2750 3800 2650
Entry Wire Line
	3700 2850 3800 2750
Wire Wire Line
	2800 1950 4100 1950
Text Notes 5800 4650 0    50   ~ 0
$7720-$7721
Text Notes 5800 4750 0    50   ~ 0
$7720-$7721
Text Notes 5800 4850 0    50   ~ 0
$7722-$7723
Text Notes 5800 4950 0    50   ~ 0
$7722-$7723
Text Label 3800 4850 0    50   ~ 0
A7
Text Label 3800 4550 0    50   ~ 0
CLK
$Comp
L 0_Fred's_Local_Library:ATF22V10C U7
U 1 1 627389D6
P 4550 4400
F 0 "U7" H 4650 4500 50  0000 C CNN
F 1 "ATF22V10C" H 4800 4400 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 4550 4400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0735.pdf" H 4550 4400 50  0001 C CNN
	1    4550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4550 3800 4550
Entry Wire Line
	3700 5450 3800 5550
Wire Wire Line
	5000 5050 7650 5050
Wire Wire Line
	5000 5150 7650 5150
Text HLabel 7650 5150 2    50   Output ~ 0
BDIR2
Text HLabel 7650 5050 2    50   Output ~ 0
BC2
Text Notes 5800 5050 0    50   ~ 0
$7724-$7725
Text Notes 5800 5150 0    50   ~ 0
$7724-$7725
Wire Wire Line
	4550 5900 4000 5900
Wire Wire Line
	4000 5900 4000 5650
Wire Wire Line
	4000 5650 4100 5650
Connection ~ 4550 5900
Wire Wire Line
	4550 5900 4550 5950
Wire Wire Line
	5000 5250 7650 5250
Wire Wire Line
	5000 5350 7650 5350
Text Notes 5800 5350 0    50   ~ 0
$7726-$7727
Text Notes 5800 5250 0    50   ~ 0
$7726-$7727
Text HLabel 7650 5350 2    50   Output ~ 0
BDIR3
Text HLabel 7650 5250 2    50   Output ~ 0
BC3
$Comp
L 0_Fred's_Local_Library:ATF22V10C U6
U 1 1 62A3B5C2
P 4550 1800
F 0 "U6" H 4650 1900 50  0000 C CNN
F 1 "ATF22V10C" H 4800 1800 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 4550 1800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0735.pdf" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
Connection ~ 3700 3700
Text Label 5300 2750 2    50   ~ 0
A2
Text Label 5300 2850 2    50   ~ 0
A3
Text Label 5300 2950 2    50   ~ 0
A4
Text Label 3800 3050 0    50   ~ 0
A5
Text Label 3800 2950 0    50   ~ 0
A6
Text Label 3800 2850 0    50   ~ 0
A7
Wire Wire Line
	4100 2850 3800 2850
Wire Wire Line
	4100 2950 3800 2950
Wire Wire Line
	4100 3050 3800 3050
Entry Wire Line
	3700 2950 3800 2850
Entry Wire Line
	3700 3050 3800 2950
Entry Wire Line
	3700 3150 3800 3050
Entry Wire Line
	5400 2850 5300 2750
Entry Wire Line
	5400 2950 5300 2850
Entry Wire Line
	5400 3050 5300 2950
Wire Wire Line
	5300 2750 5000 2750
Wire Wire Line
	5300 2850 5000 2850
Wire Wire Line
	5300 2950 5000 2950
Wire Bus Line
	3700 3700 5400 3700
Wire Wire Line
	5000 2550 7650 2550
Text HLabel 7650 2550 2    50   Output ~ 0
~ACIA1
Text Notes 5800 2550 0    50   ~ 0
$7710-$7713
Wire Wire Line
	4100 4850 3800 4850
Wire Wire Line
	4100 5550 3800 5550
Wire Wire Line
	4100 5450 3800 5450
Wire Wire Line
	4100 5350 3800 5350
Wire Wire Line
	4100 5250 3800 5250
Wire Wire Line
	4100 5150 3800 5150
Wire Wire Line
	4100 5050 3800 5050
Wire Wire Line
	4100 4950 3800 4950
Wire Wire Line
	2800 4650 4100 4650
Text HLabel 2800 4650 0    50   Input ~ 0
R~W
Wire Wire Line
	5000 5450 7650 5450
Wire Wire Line
	5000 5550 7650 5550
Text Notes 5800 5450 0    50   ~ 0
$7728-$7729
Text HLabel 7650 5550 2    50   Output ~ 0
BDIR4
Text HLabel 7650 5450 2    50   Output ~ 0
BC4
Text Notes 5800 5550 0    50   ~ 0
$7728-$7729
Wire Bus Line
	5400 2850 5400 3700
Wire Bus Line
	3700 3700 3700 5450
Wire Bus Line
	3700 2150 3700 3700
$EndSCHEMATC
