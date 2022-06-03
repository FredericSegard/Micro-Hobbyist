EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 11
Title "VIA1 - Peripherals on MCU"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 "PS/2 Keyboard, PS/2 Mouse, and NES Controller"
$EndDescr
Text Label 7550 4050 0    50   ~ 0
NES_DATA1
Text Label 7550 3950 0    50   ~ 0
NES_LATCH
Wire Wire Line
	6850 3950 8900 3950
$Comp
L power:GND #PWR?
U 1 1 6250C47E
P 5050 4100
AR Path="/63ACFEAF/6250C47E" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6250C47E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C47E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C47E" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6250C47E" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6250C47E" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6250C47E" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5050 3850 50  0001 C CNN
F 1 "GND" H 5055 3927 50  0000 C CNN
F 2 "" H 5050 4100 50  0001 C CNN
F 3 "" H 5050 4100 50  0001 C CNN
	1    5050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3850 5350 4000
Wire Wire Line
	5400 3850 5350 3850
$Comp
L power:GND #PWR?
U 1 1 6250C489
P 2800 4050
AR Path="/6314D1EA/6250C489" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6250C489" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6250C489" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 2800 3800 50  0001 C CNN
F 1 "GND" H 2805 3877 50  0000 C CNN
F 2 "" H 2800 4050 50  0001 C CNN
F 3 "" H 2800 4050 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2850 7000 2850
Wire Wire Line
	8350 2100 8150 2100
Wire Wire Line
	8350 2700 8350 2100
Wire Wire Line
	7000 2700 8350 2700
Wire Wire Line
	7000 2850 7000 2700
Wire Wire Line
	6700 2950 7100 2950
Wire Wire Line
	7100 2800 7100 2950
Wire Wire Line
	8250 2800 7100 2800
Wire Wire Line
	8250 2300 8250 2800
Wire Wire Line
	8150 2300 8250 2300
Text Label 7550 3850 0    50   ~ 0
NES_CLK
Text Label 7550 3750 0    50   ~ 0
MS_DATA
Text Label 7550 3650 0    50   ~ 0
MS_CLK
Wire Wire Line
	6700 3150 7300 3150
Wire Wire Line
	7300 3650 7300 3150
Wire Wire Line
	8350 3650 7300 3650
Wire Wire Line
	8350 3150 8350 3650
Wire Wire Line
	6700 3250 7200 3250
Wire Wire Line
	7200 3750 7200 3250
Wire Wire Line
	8150 3350 8250 3350
Wire Wire Line
	6900 3850 8800 3850
Wire Wire Line
	3350 2550 4600 2550
Wire Wire Line
	3350 2450 4700 2450
Wire Wire Line
	3700 3550 3350 3550
Wire Wire Line
	3700 3450 3350 3450
Wire Wire Line
	3700 3350 3350 3350
Wire Wire Line
	3700 3250 3350 3250
Wire Wire Line
	3700 3150 3350 3150
Wire Wire Line
	3700 3050 3350 3050
Wire Wire Line
	3700 2950 3350 2950
Wire Wire Line
	3700 2850 3350 2850
Wire Wire Line
	6900 3550 6900 3850
Wire Wire Line
	6850 3950 6850 3650
Wire Wire Line
	6800 4050 6800 3750
Wire Wire Line
	4800 2450 5400 2450
Entry Wire Line
	1950 2950 2050 3050
Entry Wire Line
	1950 2850 2050 2950
Entry Wire Line
	1950 2750 2050 2850
Entry Wire Line
	1950 2650 2050 2750
Entry Wire Line
	1950 2550 2050 2650
Entry Wire Line
	1950 2450 2050 2550
Entry Wire Line
	1950 2350 2050 2450
Entry Wire Line
	1950 2250 2050 2350
Entry Wire Line
	1950 2050 2050 2150
Entry Wire Line
	1950 1950 2050 2050
Entry Wire Line
	1950 1850 2050 1950
Entry Wire Line
	1950 1750 2050 1850
Text Label 3700 1850 2    50   ~ 0
~MCU_INT
Text Label 3550 2550 2    50   ~ 0
RS1
Text Label 3550 2450 2    50   ~ 0
RS0
Text Label 3700 3550 2    50   ~ 0
MCU_D7
Text Label 3700 3450 2    50   ~ 0
MCU_D6
Text Label 3700 3350 2    50   ~ 0
MCU_D5
Text Label 3700 3250 2    50   ~ 0
MCU_D4
Text Label 3700 3150 2    50   ~ 0
MCU_D3
Text Label 3700 3050 2    50   ~ 0
MCU_D2
Text Label 3700 2950 2    50   ~ 0
MCU_D1
Text Label 3700 2850 2    50   ~ 0
MCU_D0
Text Label 5050 2450 0    50   ~ 0
~MCU_INT
Text Label 5050 2750 0    50   ~ 0
RS1
Text Label 5050 2650 0    50   ~ 0
RS0
Text Label 7050 2550 2    50   ~ 0
MCU_D7
Text Label 7050 2450 2    50   ~ 0
MCU_D6
Text Label 7050 2350 2    50   ~ 0
MCU_D5
Text Label 7050 2250 2    50   ~ 0
MCU_D4
Text Label 7050 2150 2    50   ~ 0
MCU_D3
Text Label 7050 2050 2    50   ~ 0
MCU_D2
Text Label 7050 1950 2    50   ~ 0
MCU_D1
Text Label 7050 1850 2    50   ~ 0
MCU_D0
$Comp
L 0_Fred's_Local_Library:ATMEGA328P_PS2_NES U?
U 1 1 6250C511
P 6050 1750
AR Path="/63ACFEAF/6250C511" Ref="U?"  Part="1" 
AR Path="/6395FB84/6250C511" Ref="U?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C511" Ref="U?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C511" Ref="U?"  Part="1" 
AR Path="/6314D1EA/6250C511" Ref="U?"  Part="1" 
AR Path="/624C7B02/6250C511" Ref="U?"  Part="1" 
AR Path="/64B1B512/6250C511" Ref="U8"  Part="1" 
F 0 "U8" H 6050 1915 50  0000 C CNN
F 1 "ATMEGA328P" H 6050 1824 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 6050 2000 50  0001 C CNN
F 3 "" H 6050 1750 50  0001 C CNN
	1    6050 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6250C517
P 9750 3550
AR Path="/63ACFEAF/6250C517" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6250C517" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C517" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C517" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6250C517" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6250C517" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6250C517" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 9750 3400 50  0001 C CNN
F 1 "+5V" H 9765 3723 50  0000 C CNN
F 2 "" H 9750 3550 50  0001 C CNN
F 3 "" H 9750 3550 50  0001 C CNN
	1    9750 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 3650 9750 3550
NoConn ~ 9650 4050
NoConn ~ 9650 3850
Wire Wire Line
	6700 3650 6850 3650
Wire Wire Line
	6700 3750 6800 3750
Wire Wire Line
	6700 3550 6900 3550
Wire Wire Line
	6700 2550 7050 2550
Wire Wire Line
	6700 2450 7050 2450
Wire Wire Line
	6700 2350 7050 2350
Wire Wire Line
	6700 2250 7050 2250
Wire Wire Line
	6700 2150 7050 2150
Wire Wire Line
	6700 2050 7050 2050
Wire Wire Line
	6700 1950 7050 1950
Wire Wire Line
	6700 1850 7050 1850
Wire Wire Line
	7450 3150 7450 3250
Wire Wire Line
	8150 3250 8500 3250
Wire Wire Line
	8150 3150 8350 3150
$Comp
L Connector:Mini-DIN-6 J?
U 1 1 6250C558
P 7850 3250
AR Path="/63ACFEAF/6250C558" Ref="J?"  Part="1" 
AR Path="/6395FB84/6250C558" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C558" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C558" Ref="J?"  Part="1" 
AR Path="/6314D1EA/6250C558" Ref="J?"  Part="1" 
AR Path="/624C7B02/6250C558" Ref="J?"  Part="1" 
AR Path="/64B1B512/6250C558" Ref="J2"  Part="1" 
F 0 "J2" H 7850 3617 50  0000 C CNN
F 1 "MOUSE" H 7850 3526 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Mini-DIN_6p" H 7850 3250 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 7850 3250 50  0001 C CNN
	1    7850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3250 8500 3500
Wire Wire Line
	7550 3250 7450 3250
$Comp
L power:GND #PWR?
U 1 1 6250C560
P 8500 3500
AR Path="/63ACFEAF/6250C560" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6250C560" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C560" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C560" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6250C560" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6250C560" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6250C560" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 8500 3250 50  0001 C CNN
F 1 "GND" H 8505 3327 50  0000 C CNN
F 2 "" H 8500 3500 50  0001 C CNN
F 3 "" H 8500 3500 50  0001 C CNN
	1    8500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6250C566
P 7450 3150
AR Path="/63ACFEAF/6250C566" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6250C566" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C566" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C566" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6250C566" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6250C566" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6250C566" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 7450 3000 50  0001 C CNN
F 1 "+5V" H 7465 3323 50  0000 C CNN
F 2 "" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0001 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
NoConn ~ 7550 3150
NoConn ~ 7550 3350
Text Label 7450 2700 0    50   ~ 0
KB_CLK
Text Label 7450 2800 0    50   ~ 0
KB_DATA
$Comp
L power:+5V #PWR?
U 1 1 62AF08D9
P 5300 1550
AR Path="/63ACFEAF/62AF08D9" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/62AF08D9" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/62AF08D9" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/62AF08D9" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/62AF08D9" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/62AF08D9" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08D9" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 5300 1400 50  0001 C CNN
F 1 "+5V" H 5315 1723 50  0000 C CNN
F 2 "" H 5300 1550 50  0001 C CNN
F 3 "" H 5300 1550 50  0001 C CNN
	1    5300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1950 5300 1950
Wire Wire Line
	5300 1950 5300 1850
Connection ~ 5300 1850
Wire Wire Line
	5300 1850 5400 1850
Connection ~ 5350 3850
Wire Wire Line
	5350 3750 5350 3850
Wire Wire Line
	5400 3750 5350 3750
Wire Wire Line
	7450 2100 7450 2200
Wire Wire Line
	8150 2200 8500 2200
$Comp
L Connector:Mini-DIN-6 J?
U 1 1 62AF08DA
P 7850 2200
AR Path="/63ACFEAF/62AF08DA" Ref="J?"  Part="1" 
AR Path="/6395FB84/62AF08DA" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE5/62AF08DA" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/62AF08DA" Ref="J?"  Part="1" 
AR Path="/6314D1EA/62AF08DA" Ref="J?"  Part="1" 
AR Path="/624C7B02/62AF08DA" Ref="J?"  Part="1" 
AR Path="/64B1B512/62AF08DA" Ref="J1"  Part="1" 
F 0 "J1" H 7850 2567 50  0000 C CNN
F 1 "KEYBOARD" H 7850 2476 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Mini-DIN_6p" H 7850 2200 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 7850 2200 50  0001 C CNN
	1    7850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2200 8500 3250
Wire Wire Line
	7550 2200 7450 2200
$Comp
L power:+5V #PWR?
U 1 1 62AF08DB
P 7450 2100
AR Path="/63ACFEAF/62AF08DB" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/62AF08DB" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/62AF08DB" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/62AF08DB" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/62AF08DB" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/62AF08DB" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08DB" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 7450 1950 50  0001 C CNN
F 1 "+5V" H 7465 2273 50  0000 C CNN
F 2 "" H 7450 2100 50  0001 C CNN
F 3 "" H 7450 2100 50  0001 C CNN
	1    7450 2100
	1    0    0    -1  
$EndComp
NoConn ~ 7550 2100
NoConn ~ 7550 2300
$Comp
L 0_Fred's_Local_Library:WD65C22 U?
U 1 1 6250C59D
P 2800 2750
AR Path="/5F3CB831/6250C59D" Ref="U?"  Part="1" 
AR Path="/5F86B098/6250C59D" Ref="U?"  Part="1" 
AR Path="/6250C59D" Ref="U?"  Part="1" 
AR Path="/6395FB84/6250C59D" Ref="U?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C59D" Ref="U?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C59D" Ref="U?"  Part="1" 
AR Path="/6314D1EA/6250C59D" Ref="U?"  Part="1" 
AR Path="/624C7B02/6250C59D" Ref="U?"  Part="1" 
AR Path="/64B1B512/6250C59D" Ref="U9"  Part="1" 
F 0 "U9" H 2600 3900 50  0000 L CNN
F 1 "WD65C22" H 2400 3800 50  0000 L CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 2400 2850 60  0001 C CNN
F 3 "https://www.westerndesigncenter.com/wdc/documentation/w65c22.pdf" H 2400 2850 60  0001 C CNN
	1    2800 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62AF08DD
P 1800 3150
AR Path="/6314D1EA/62AF08DD" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/62AF08DD" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08DD" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 1800 3000 50  0001 C CNN
F 1 "+5V" H 1800 3325 50  0000 C CNN
F 2 "" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0001 C CNN
	1    1800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3450 1800 3150
Wire Wire Line
	1800 3450 2250 3450
Text Label 2050 3050 0    50   ~ 0
D7
Text Label 2050 2950 0    50   ~ 0
D6
Text Label 2050 2850 0    50   ~ 0
D5
Text Label 2050 2750 0    50   ~ 0
D4
Text Label 2050 2650 0    50   ~ 0
D3
Text Label 2050 2550 0    50   ~ 0
D2
Text Label 2050 2450 0    50   ~ 0
D1
Text Label 2050 2350 0    50   ~ 0
D0
$Comp
L power:+5V #PWR?
U 1 1 62AF08DE
P 2800 1550
AR Path="/6314D1EA/62AF08DE" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/62AF08DE" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08DE" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 2800 1400 50  0001 C CNN
F 1 "+5V" H 2815 1723 50  0000 C CNN
F 2 "" H 2800 1550 50  0001 C CNN
F 3 "" H 2800 1550 50  0001 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
Text Label 2050 2150 0    50   ~ 0
A3
Text Label 2050 2050 0    50   ~ 0
A2
Text Label 2050 1950 0    50   ~ 0
A1
Text Label 2050 1850 0    50   ~ 0
A0
Wire Wire Line
	4800 2450 4800 1850
Wire Wire Line
	4800 1850 3350 1850
Entry Wire Line
	7150 2650 7050 2550
Entry Wire Line
	7150 2550 7050 2450
Entry Wire Line
	7150 2450 7050 2350
Entry Wire Line
	7150 2350 7050 2250
Entry Wire Line
	7150 2250 7050 2150
Entry Wire Line
	7150 2150 7050 2050
Entry Wire Line
	7150 2050 7050 1950
Entry Wire Line
	7150 1950 7050 1850
Wire Bus Line
	7150 4350 3800 4350
Entry Wire Line
	3800 3650 3700 3550
Entry Wire Line
	3800 3550 3700 3450
Entry Wire Line
	3800 3450 3700 3350
Entry Wire Line
	3800 3350 3700 3250
Entry Wire Line
	3800 3250 3700 3150
Entry Wire Line
	3800 3150 3700 3050
Entry Wire Line
	3800 3050 3700 2950
Entry Wire Line
	3800 2950 3700 2850
Wire Wire Line
	2250 3750 1950 3750
Wire Wire Line
	1450 3550 2250 3550
$Comp
L 0_Fred's_Local_Library:NES_Connector J?
U 1 1 6250C529
P 9350 3250
AR Path="/63ACFEAF/6250C529" Ref="J?"  Part="1" 
AR Path="/6395FB84/6250C529" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6250C529" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6250C529" Ref="J?"  Part="1" 
AR Path="/6314D1EA/6250C529" Ref="J?"  Part="1" 
AR Path="/624C7B02/6250C529" Ref="J?"  Part="1" 
AR Path="/64B1B512/6250C529" Ref="J3"  Part="1" 
F 0 "J3" H 9350 3315 50  0000 C CNN
F 1 "NES1" H 9350 3224 50  0000 C CNN
F 2 "0_Fred's_Local_Library:NES_Connector" H 9350 3250 50  0001 C CNN
F 3 "" H 9350 3250 50  0001 C CNN
	1    9350 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 3850 8800 3650
Wire Wire Line
	8800 3650 9050 3650
Wire Wire Line
	8900 3950 8900 3850
Wire Wire Line
	8900 3850 9050 3850
Connection ~ 8500 3250
Wire Wire Line
	7000 2850 7000 4550
Connection ~ 7000 2850
Wire Wire Line
	7100 2950 7100 4550
Connection ~ 7100 2950
Wire Wire Line
	7200 3750 7200 4550
Connection ~ 7200 3750
Wire Wire Line
	7300 3650 7300 4550
Connection ~ 7300 3650
$Comp
L power:+5V #PWR?
U 1 1 622CDAC5
P 6800 4950
AR Path="/63ACFEAF/622CDAC5" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/622CDAC5" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/622CDAC5" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/622CDAC5" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/622CDAC5" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/622CDAC5" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/622CDAC5" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6800 4800 50  0001 C CNN
F 1 "+5V" H 6815 5123 50  0000 C CNN
F 2 "" H 6800 4950 50  0001 C CNN
F 3 "" H 6800 4950 50  0001 C CNN
	1    6800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5050 6800 4950
Wire Wire Line
	7000 5050 7000 4950
Text Label 2000 3250 0    50   ~ 0
~RESET
Text Label 2000 3350 0    50   ~ 0
CLK
Text Label 2000 3550 0    50   ~ 0
~VIA1
Text Label 2000 3650 0    50   ~ 0
R~W
Text Label 2000 3750 0    50   ~ 0
~IRQ2
Wire Wire Line
	9750 3650 9650 3650
Wire Wire Line
	2050 1850 2250 1850
Wire Wire Line
	2050 1950 2250 1950
Wire Wire Line
	2050 2050 2250 2050
Wire Wire Line
	2050 2150 2250 2150
Wire Wire Line
	2050 2350 2250 2350
Wire Wire Line
	2050 2450 2250 2450
Wire Wire Line
	2050 2550 2250 2550
Wire Wire Line
	2050 2650 2250 2650
Wire Wire Line
	2050 2750 2250 2750
Wire Wire Line
	2050 2850 2250 2850
Wire Wire Line
	2050 2950 2250 2950
Wire Wire Line
	2050 3050 2250 3050
Wire Bus Line
	1450 2250 1950 2250
Wire Bus Line
	1450 1750 1950 1750
Wire Wire Line
	1950 3750 1950 5450
Text HLabel 9750 5450 2    50   Output ~ 0
~IRQ2
Wire Wire Line
	1450 3650 2250 3650
Wire Wire Line
	1450 3350 2250 3350
Text HLabel 1450 3250 0    50   Input ~ 0
~RESET
Text HLabel 1450 3350 0    50   Input ~ 0
CLK
Text HLabel 1450 3550 0    50   Input ~ 0
~VIA1
Text HLabel 1450 3650 0    50   Input ~ 0
R~W
Text HLabel 1450 1750 0    50   Input ~ 0
A[0..15]
Text HLabel 1450 2250 0    50   Input ~ 0
D[0..7]
$Comp
L power:+5V #PWR?
U 1 1 62AF08E3
P 9800 4600
AR Path="/63ACFEAF/62AF08E3" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/62AF08E3" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/62AF08E3" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/62AF08E3" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/62AF08E3" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/62AF08E3" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08E3" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 9800 4450 50  0001 C CNN
F 1 "+5V" H 9815 4773 50  0000 C CNN
F 2 "" H 9800 4600 50  0001 C CNN
F 3 "" H 9800 4600 50  0001 C CNN
	1    9800 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 4700 9800 4600
NoConn ~ 9700 5100
NoConn ~ 9700 4900
$Comp
L 0_Fred's_Local_Library:NES_Connector J?
U 1 1 62AF08E4
P 9400 4300
AR Path="/63ACFEAF/62AF08E4" Ref="J?"  Part="1" 
AR Path="/6395FB84/62AF08E4" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE5/62AF08E4" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/62AF08E4" Ref="J?"  Part="1" 
AR Path="/6314D1EA/62AF08E4" Ref="J?"  Part="1" 
AR Path="/624C7B02/62AF08E4" Ref="J?"  Part="1" 
AR Path="/64B1B512/62AF08E4" Ref="J4"  Part="1" 
F 0 "J4" H 9400 4365 50  0000 C CNN
F 1 "NES2" H 9400 4274 50  0000 C CNN
F 2 "0_Fred's_Local_Library:NES_Connector" H 9400 4300 50  0001 C CNN
F 3 "" H 9400 4300 50  0001 C CNN
	1    9400 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 4700 9700 4700
Wire Wire Line
	8700 3450 9050 3450
Wire Wire Line
	8500 3250 8700 3250
Wire Wire Line
	8700 3250 8700 3450
Wire Wire Line
	8700 3450 8700 4500
Wire Wire Line
	8700 4500 9100 4500
Connection ~ 8700 3450
Wire Wire Line
	8800 3850 8800 4700
Wire Wire Line
	8800 4700 9100 4700
Connection ~ 8800 3850
Wire Wire Line
	8900 3950 8900 4900
Wire Wire Line
	8900 4900 9100 4900
Connection ~ 8900 3950
Wire Wire Line
	6700 3850 6700 4150
Wire Wire Line
	8600 4150 8600 5100
Wire Wire Line
	8600 5100 9100 5100
Text Label 7550 4150 0    50   ~ 0
NES_DATA2
Wire Wire Line
	8250 3350 8250 3750
Wire Wire Line
	8250 3750 7200 3750
Wire Wire Line
	1450 3250 1600 3250
Wire Wire Line
	5300 1550 5300 1850
$Comp
L power:GND #PWR?
U 1 1 62AF08DF
P 1050 7550
AR Path="/5F86B098/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/62AF08DF" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08DF" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 1050 7300 50  0001 C CNN
F 1 "GND" H 1055 7377 50  0000 C CNN
F 2 "" H 1050 7550 50  0001 C CNN
F 3 "" H 1050 7550 50  0001 C CNN
	1    1050 7550
	1    0    0    -1  
$EndComp
Connection ~ 1050 7050
Wire Wire Line
	1050 7450 1400 7450
Wire Wire Line
	1050 7400 1050 7450
Wire Wire Line
	1050 7050 1400 7050
Wire Wire Line
	1050 7100 1050 7050
$Comp
L Device:C C?
U 1 1 62AF08E0
P 1050 7250
AR Path="/62AF08E0" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/62AF08E0" Ref="C?"  Part="1" 
AR Path="/60CF5668/62AF08E0" Ref="C?"  Part="1" 
AR Path="/63885FFC/62AF08E0" Ref="C?"  Part="1" 
AR Path="/61BE126B/62AF08E0" Ref="C?"  Part="1" 
AR Path="/61D74077/62AF08E0" Ref="C?"  Part="1" 
AR Path="/623467B9/62AF08E0" Ref="C?"  Part="1" 
AR Path="/62716C39/62AF08E0" Ref="C?"  Part="1" 
AR Path="/64B1B512/62AF08E0" Ref="C10"  Part="1" 
F 0 "C10" H 1100 7350 50  0000 L CNN
F 1 "0.1µF" H 1100 7150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1088 7100 50  0001 C CNN
F 3 "~" H 1050 7250 50  0001 C CNN
	1    1050 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6950 1050 7050
Wire Wire Line
	1400 7400 1400 7450
Wire Wire Line
	1400 7100 1400 7050
$Comp
L Device:C C?
U 1 1 62AF08E1
P 1400 7250
AR Path="/62AF08E1" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/62AF08E1" Ref="C?"  Part="1" 
AR Path="/60CF5668/62AF08E1" Ref="C?"  Part="1" 
AR Path="/63885FFC/62AF08E1" Ref="C?"  Part="1" 
AR Path="/61BE126B/62AF08E1" Ref="C?"  Part="1" 
AR Path="/61D74077/62AF08E1" Ref="C?"  Part="1" 
AR Path="/623467B9/62AF08E1" Ref="C?"  Part="1" 
AR Path="/62716C39/62AF08E1" Ref="C?"  Part="1" 
AR Path="/64B1B512/62AF08E1" Ref="C11"  Part="1" 
F 0 "C11" H 1450 7350 50  0000 L CNN
F 1 "0.1µF" H 1450 7150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1438 7100 50  0001 C CNN
F 3 "~" H 1400 7250 50  0001 C CNN
	1    1400 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62AF08E2
P 1050 6950
AR Path="/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/62AF08E2" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62AF08E2" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 1050 6800 50  0001 C CNN
F 1 "+5V" H 1065 7123 50  0000 C CNN
F 2 "" H 1050 6950 50  0001 C CNN
F 3 "" H 1050 6950 50  0001 C CNN
	1    1050 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7550 1050 7450
Text Notes 1100 7000 0    50   ~ 0
Bypass capacitors
Connection ~ 1050 7450
Wire Wire Line
	6800 5050 7000 5050
$Comp
L Device:Crystal Y1
U 1 1 62AF08CD
P 5050 3350
F 0 "Y1" V 5004 3481 50  0000 L CNN
F 1 "16MHz" V 5095 3481 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 5050 3350 50  0001 C CNN
F 3 "~" H 5050 3350 50  0001 C CNN
	1    5050 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 62AF08CE
P 5050 3750
AR Path="/62AF08CE" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/62AF08CE" Ref="C?"  Part="1" 
AR Path="/60CF5668/62AF08CE" Ref="C?"  Part="1" 
AR Path="/63885FFC/62AF08CE" Ref="C?"  Part="1" 
AR Path="/61BE126B/62AF08CE" Ref="C?"  Part="1" 
AR Path="/61D74077/62AF08CE" Ref="C?"  Part="1" 
AR Path="/623467B9/62AF08CE" Ref="C?"  Part="1" 
AR Path="/62716C39/62AF08CE" Ref="C?"  Part="1" 
AR Path="/64B1B512/62AF08CE" Ref="C9"  Part="1" 
F 0 "C9" H 5100 3850 50  0000 L CNN
F 1 "22pF" H 5100 3650 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5088 3600 50  0001 C CNN
F 3 "~" H 5050 3750 50  0001 C CNN
	1    5050 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62AF08CF
P 4700 3750
AR Path="/62AF08CF" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/62AF08CF" Ref="C?"  Part="1" 
AR Path="/60CF5668/62AF08CF" Ref="C?"  Part="1" 
AR Path="/63885FFC/62AF08CF" Ref="C?"  Part="1" 
AR Path="/61BE126B/62AF08CF" Ref="C?"  Part="1" 
AR Path="/61D74077/62AF08CF" Ref="C?"  Part="1" 
AR Path="/623467B9/62AF08CF" Ref="C?"  Part="1" 
AR Path="/62716C39/62AF08CF" Ref="C?"  Part="1" 
AR Path="/64B1B512/62AF08CF" Ref="C8"  Part="1" 
F 0 "C8" H 4750 3850 50  0000 L CNN
F 1 "22pF" H 4750 3650 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4738 3600 50  0001 C CNN
F 3 "~" H 4700 3750 50  0001 C CNN
	1    4700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3600 4700 3150
Wire Wire Line
	4700 3150 5050 3150
Wire Wire Line
	5050 3200 5050 3150
Connection ~ 5050 3150
Wire Wire Line
	5050 3150 5400 3150
Wire Wire Line
	5050 3600 5050 3550
Wire Wire Line
	5050 3550 5400 3550
Connection ~ 5050 3550
Wire Wire Line
	5050 3550 5050 3500
Wire Wire Line
	5350 4000 5050 4000
Wire Wire Line
	5050 4000 5050 3900
Wire Wire Line
	5050 4000 4700 4000
Wire Wire Line
	4700 4000 4700 3900
Connection ~ 5050 4000
NoConn ~ 5400 2050
Text Label 3400 2650 0    50   ~ 0
RS2
Wire Wire Line
	3350 2650 4500 2650
Text Label 5050 2850 0    50   ~ 0
RS2
Wire Wire Line
	4500 2850 5400 2850
Wire Wire Line
	4600 2750 5400 2750
Wire Wire Line
	4700 2650 5400 2650
Wire Wire Line
	6800 4050 7400 4050
Wire Wire Line
	6700 4150 7500 4150
Wire Wire Line
	4950 2250 4950 1250
Wire Wire Line
	4950 1250 1600 1250
Wire Wire Line
	4950 2250 5400 2250
Wire Wire Line
	5050 4000 5050 4100
Wire Wire Line
	1600 3250 1600 1250
Connection ~ 1600 3250
Wire Wire Line
	1600 3250 2250 3250
$Comp
L Device:R_Network06_US RN4
U 1 1 624250E5
P 7300 4750
F 0 "RN4" H 7300 4950 50  0000 C CNN
F 1 "3K3Ω" H 7400 5050 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP7" V 7675 4750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 7300 4750 50  0001 C CNN
	1    7300 4750
	1    0    0    1   
$EndComp
Wire Wire Line
	7400 4550 7400 4050
Connection ~ 7400 4050
Wire Wire Line
	7400 4050 9050 4050
Wire Wire Line
	7500 4150 7500 4550
Connection ~ 7500 4150
Wire Wire Line
	7500 4150 8600 4150
Wire Wire Line
	4500 2650 4500 2850
Wire Wire Line
	4600 2550 4600 2750
Wire Wire Line
	4700 2450 4700 2650
Text HLabel 3700 2050 2    50   Input ~ 0
P_INT0
Text HLabel 3700 2150 2    50   Input ~ 0
P_INT1
Text HLabel 3700 2250 2    50   Input ~ 0
P_INT2
Text HLabel 3700 2350 2    50   Input ~ 0
P_INT3
Wire Wire Line
	3700 2050 3350 2050
Wire Wire Line
	3700 2150 3350 2150
Wire Wire Line
	3700 2250 3350 2250
Wire Wire Line
	3700 2350 3350 2350
Wire Wire Line
	3350 2750 4200 2750
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62743E9A
P 4400 4700
AR Path="/63885FFC/62743E9A" Ref="J?"  Part="1" 
AR Path="/61BE126B/62743E9A" Ref="J?"  Part="1" 
AR Path="/62743E9A" Ref="J?"  Part="1" 
AR Path="/61D74077/62743E9A" Ref="J?"  Part="1" 
AR Path="/621D2996/62743E9A" Ref="J?"  Part="1" 
AR Path="/636AFA21/62743E9A" Ref="J?"  Part="1" 
AR Path="/64B1B512/62743E9A" Ref="J5"  Part="1" 
F 0 "J5" H 4500 4700 50  0000 L CNN
F 1 "BLINKY" H 4500 4600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4400 4700 50  0001 C CNN
F 3 "~" H 4400 4700 50  0001 C CNN
	1    4400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4800 4200 5000
$Comp
L power:GND #PWR?
U 1 1 62743EA1
P 4200 5000
AR Path="/62743EA1" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62743EA1" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62743EA1" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/62743EA1" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 4200 4750 50  0001 C CNN
F 1 "GND" H 4205 4827 50  0000 C CNN
F 2 "" H 4200 5000 50  0001 C CNN
F 3 "" H 4200 5000 50  0001 C CNN
	1    4200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2750 4200 4700
Wire Wire Line
	1950 5450 9750 5450
NoConn ~ 3350 3750
NoConn ~ 3350 3650
NoConn ~ 3350 1950
Wire Bus Line
	1950 1750 1950 2050
Wire Bus Line
	1950 2250 1950 2950
Wire Bus Line
	3800 2950 3800 4350
Wire Bus Line
	7150 1950 7150 4350
$EndSCHEMATC
