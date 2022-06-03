EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 11
Title "Memory Map Decoding"
Date "2022-01-22"
Rev "3"
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
AR Path="/61CDC8A2/621C76A0" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 1000 6900 50  0001 C CNN
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
AR Path="/61CDC8A2/621C769A" Ref="C32"  Part="1" 
F 0 "C32" H 1400 7400 50  0000 L CNN
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
AR Path="/61CDC8A2/621C767C" Ref="C31"  Part="1" 
F 0 "C31" H 1050 7400 50  0000 L CNN
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
AR Path="/61CDC8A2/621C766E" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 1000 7300 50  0001 C CNN
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
AR Path="/61CDC8A2/61D5DBF8" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 4550 1550 50  0001 C CNN
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
P 4550 3150
AR Path="/5F86B098/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61D5ED0C" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61D5ED0C" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 4550 2900 50  0001 C CNN
F 1 "GND" H 4555 2977 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
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
Wire Wire Line
	4100 2750 3800 2750
Text Label 5400 2050 2    50   ~ 0
~ROMCS
Text Label 5400 2150 2    50   ~ 0
~NVRAMCS
Text Label 5400 2250 2    50   ~ 0
~IOREQ
Text Label 5400 2450 2    50   ~ 0
~RAMCS
Text Label 5400 2650 2    50   ~ 0
~RD
Text Label 5400 2750 2    50   ~ 0
~WR
Text Label 3800 1950 0    50   ~ 0
CLK
Text Label 3800 2050 0    50   ~ 0
R~W
Text Label 3800 2750 0    50   ~ 0
A9
Text Label 3800 2650 0    50   ~ 0
A10
Text Label 3800 2550 0    50   ~ 0
A11
Text Label 3800 2450 0    50   ~ 0
A12
Text Label 3800 2350 0    50   ~ 0
A13
Text Label 3800 2250 0    50   ~ 0
A14
Text Label 3800 2150 0    50   ~ 0
A15
Entry Wire Line
	3700 2050 3800 2150
Entry Wire Line
	3700 2150 3800 2250
Entry Wire Line
	3700 2250 3800 2350
Entry Wire Line
	3700 2350 3800 2450
Entry Wire Line
	3700 2450 3800 2550
Entry Wire Line
	3700 2550 3800 2650
Entry Wire Line
	3700 2650 3800 2750
Wire Wire Line
	3750 2050 4100 2050
Text HLabel 2800 1950 0    50   Input ~ 0
R~W
Text Label 3800 4550 0    50   ~ 0
CLK
Text Label 3800 4750 0    50   ~ 0
A0
Text Label 3800 4850 0    50   ~ 0
A1
Text Label 3800 4950 0    50   ~ 0
A2
Text Label 3800 5050 0    50   ~ 0
A3
Text Label 3800 5150 0    50   ~ 0
A4
Text Label 3800 5250 0    50   ~ 0
A5
Text Label 3800 5350 0    50   ~ 0
A6
Text Label 3800 5450 0    50   ~ 0
A7
Text Label 3800 4650 0    50   ~ 0
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
P 4550 5750
AR Path="/5F86B098/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DC2253" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61DC2253" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 4550 5500 50  0001 C CNN
F 1 "GND" H 4555 5577 50  0000 C CNN
F 2 "" H 4550 5750 50  0001 C CNN
F 3 "" H 4550 5750 50  0001 C CNN
	1    4550 5750
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
AR Path="/61CDC8A2/61DC4420" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 4550 4150 50  0001 C CNN
F 1 "+5V" H 4565 4473 50  0000 C CNN
F 2 "" H 4550 4300 50  0001 C CNN
F 3 "" H 4550 4300 50  0001 C CNN
	1    4550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4350 4550 4300
Wire Wire Line
	4100 4750 3800 4750
Wire Wire Line
	4100 4850 3800 4850
Wire Wire Line
	4100 4950 3800 4950
Wire Wire Line
	4100 5050 3800 5050
Wire Wire Line
	4100 5150 3800 5150
Wire Wire Line
	4100 5250 3800 5250
Wire Wire Line
	4100 5350 3800 5350
Wire Wire Line
	4100 5450 3800 5450
Text HLabel 2800 1850 0    50   Input ~ 0
CLK
Wire Wire Line
	3800 1850 3800 1950
Wire Wire Line
	3800 1950 4100 1950
Wire Wire Line
	3750 2050 3750 1950
Wire Bus Line
	3700 2050 2800 2050
Text HLabel 2800 2050 0    50   Input ~ 0
A[0..15]
Wire Wire Line
	5000 2050 7650 2050
Wire Wire Line
	5000 2150 7650 2150
Wire Wire Line
	5000 2450 7650 2450
Text HLabel 7650 2050 2    50   Output ~ 0
~ROM_CS
Text HLabel 7650 2150 2    50   Output ~ 0
~NVRAM_CS
Text HLabel 7650 2250 2    50   Output ~ 0
~IOREQ
Text HLabel 7650 2450 2    50   Output ~ 0
~RAM_CS
Text HLabel 7650 2650 2    50   Output ~ 0
~RD
Text HLabel 7650 2750 2    50   Output ~ 0
~WR
Text Notes 5800 2050 0    50   ~ 0
$8000-$FFFF (32K)
Text Notes 5800 2150 0    50   ~ 0
$7800-$7FFF (2K & RTC)
Text Notes 5800 2250 0    50   ~ 0
$7700-$77FF (256 bytes)
Text Notes 5800 2450 0    50   ~ 0
$0000-$55FF (Approx. 30K)
Text Label 5400 4650 2    50   ~ 0
~ACIA1
Text Label 5400 4750 2    50   ~ 0
~ACIA2
Text Label 5400 4850 2    50   ~ 0
~ACIA3
Text Label 5400 5250 2    50   ~ 0
~VIA1
Wire Wire Line
	5000 4650 7650 4650
Wire Wire Line
	5000 4750 7650 4750
Wire Wire Line
	5000 5250 7650 5250
Text HLabel 7650 4650 2    50   Output ~ 0
~ACIA1_CS
Text HLabel 7650 4750 2    50   Output ~ 0
~ACIA2_CS
Text HLabel 7650 4850 2    50   Output ~ 0
~ACIA3_CS
Text HLabel 7650 5250 2    50   Output ~ 0
~VIA1_CS
Text Notes 5800 4650 0    50   ~ 0
$7700-$7703
Text Notes 5800 4750 0    50   ~ 0
$7704-$7707
Text Notes 5800 4850 0    50   ~ 0
$7708-$770B
Text Notes 5800 5250 0    50   ~ 0
$7710-$771F (Keyboard, mouse & NES)
Entry Wire Line
	3700 4650 3800 4750
Wire Wire Line
	3600 4550 4100 4550
Wire Wire Line
	4550 5650 4550 5750
Wire Wire Line
	2800 1850 3600 1850
Wire Wire Line
	3600 1850 3600 4550
Connection ~ 3600 1850
Wire Wire Line
	3600 1850 3800 1850
Entry Wire Line
	3700 2750 3800 2850
Wire Wire Line
	3800 2850 4100 2850
Text Label 3800 2850 0    50   ~ 0
A8
Wire Wire Line
	4550 3050 4550 3150
$Comp
L 0_Fred's_Local_Library:ATF16V8B U?
U 1 1 6235C78B
P 4550 1800
AR Path="/6235C78B" Ref="U?"  Part="1" 
AR Path="/61CDC8A2/6235C78B" Ref="U16"  Part="1" 
F 0 "U16" H 4600 1900 50  0000 L CNN
F 1 "ATF16V8B" H 4600 1800 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4550 1800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-0364-PLD-ATF16V8B-8BQ-8BQL-Datasheet.pdf" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4850 7650 4850
Text Label 5400 2350 2    50   ~ 0
~BANKCS
Text Notes 5800 2350 0    50   ~ 0
$5600-$75FF (8K)
Wire Wire Line
	5000 2350 7650 2350
Text HLabel 7650 2350 2    50   Output ~ 0
~BANK_CS
Wire Wire Line
	5000 2250 5600 2250
Wire Wire Line
	5000 2650 7650 2650
Wire Wire Line
	5000 2750 7650 2750
Wire Wire Line
	2800 1950 3750 1950
Wire Wire Line
	5600 2250 5600 3750
Wire Wire Line
	5600 3750 3500 3750
Wire Wire Line
	3500 3750 3500 4650
Connection ~ 5600 2250
Wire Wire Line
	5600 2250 7650 2250
NoConn ~ 5000 2550
$Comp
L 0_Fred's_Local_Library:ATF16V8B U?
U 1 1 62326414
P 4550 4400
AR Path="/62326414" Ref="U?"  Part="1" 
AR Path="/61CDC8A2/62326414" Ref="U17"  Part="1" 
F 0 "U17" H 4600 4500 50  0000 L CNN
F 1 "ATF16V8B" H 4600 4400 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4550 4400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-0364-PLD-ATF16V8B-8BQ-8BQL-Datasheet.pdf" H 4550 4400 50  0001 C CNN
	1    4550 4400
	1    0    0    -1  
$EndComp
Text Label 5400 5050 2    50   ~ 0
~P_INT_SEL
Wire Wire Line
	5000 5050 7650 5050
Text Notes 5800 5050 0    50   ~ 0
$770E (Priority Encoder Select)
Wire Wire Line
	5000 5150 7650 5150
Text Label 5400 5150 2    50   ~ 0
BANK_SEL
Text Notes 5800 5150 0    50   ~ 0
$770F (Bank Select)
Text HLabel 7650 5150 2    50   Output ~ 0
BANK_SEL
Text HLabel 7650 5050 2    50   Output ~ 0
~P_INT_SEL
Text HLabel 7650 5350 2    50   Output ~ 0
~VIA2_CS
Wire Wire Line
	5000 5350 7650 5350
Text Label 5400 5350 2    50   ~ 0
~VIA2
Text Notes 5800 5350 0    50   ~ 0
$7720-$772F (LCD & SPI)
NoConn ~ 5000 4950
Wire Wire Line
	3500 4650 4100 4650
Wire Bus Line
	3700 2050 3700 5350
$EndSCHEMATC
