EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 11
Title "CPU"
Date "2022-01-22"
Rev "3"
Comp "Frédéric Segard"
Comment1 "The Micro Hobbyist"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Network05_US RN1
U 1 1 61DCB11A
P 2300 3550
F 0 "RN1" V 1883 3550 50  0000 C CNN
F 1 "3K3Ω" V 1974 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 2675 3550 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
NoConn ~ 4200 3650
NoConn ~ 4200 3550
Text Label 3050 3950 2    50   ~ 0
RDY
Wire Wire Line
	2900 2350 3100 2350
NoConn ~ 4200 3750
$Comp
L power:+5V #PWR?
U 1 1 61DCB138
P 3650 1850
AR Path="/61DCB138" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61DCB138" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DCB138" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DCB138" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3650 1700 50  0001 C CNN
F 1 "+5V" H 3665 2023 50  0000 C CNN
F 2 "" H 3650 1850 50  0001 C CNN
F 3 "" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3650 3100 3650
Wire Wire Line
	2900 3550 3100 3550
Wire Wire Line
	2900 3450 3100 3450
Wire Wire Line
	2900 3350 3100 3350
Wire Wire Line
	2900 3250 3100 3250
Wire Wire Line
	2900 3150 3100 3150
Wire Wire Line
	2900 3050 3100 3050
Wire Wire Line
	2900 2950 3100 2950
Wire Wire Line
	2900 2750 3100 2750
Wire Wire Line
	2900 2650 3100 2650
Wire Wire Line
	2900 2550 3100 2550
Wire Wire Line
	2900 2450 3100 2450
Wire Wire Line
	2900 2250 3100 2250
Wire Wire Line
	2900 2150 3100 2150
$Comp
L power:GND #PWR?
U 1 1 61DCB16A
P 3650 4450
AR Path="/61DCB16A" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61DCB16A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DCB16A" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DCB16A" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 3650 4200 50  0001 C CNN
F 1 "GND" H 3655 4277 50  0000 C CNN
F 2 "" H 3650 4450 50  0001 C CNN
F 3 "" H 3650 4450 50  0001 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
Text Label 4500 3950 2    50   ~ 0
SYNC
Text Label 3050 3850 2    50   ~ 0
BE
Text Label 4500 2150 2    50   ~ 0
R~W
$Comp
L power:GND #PWR?
U 1 1 61DCB30C
P 950 7550
AR Path="/5F86B098/61DCB30C" Ref="#PWR?"  Part="1" 
AR Path="/61DCB30C" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61DCB30C" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61DCB30C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DCB30C" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DCB30C" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 950 7300 50  0001 C CNN
F 1 "GND" H 955 7377 50  0000 C CNN
F 2 "" H 950 7550 50  0001 C CNN
F 3 "" H 950 7550 50  0001 C CNN
	1    950  7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61DCB32A
P 950 7250
AR Path="/61DCB32A" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/61DCB32A" Ref="C?"  Part="1" 
AR Path="/60CF5668/61DCB32A" Ref="C?"  Part="1" 
AR Path="/63885FFC/61DCB32A" Ref="C?"  Part="1" 
AR Path="/61BE126B/61DCB32A" Ref="C?"  Part="1" 
AR Path="/61D74077/61DCB32A" Ref="C?"  Part="1" 
AR Path="/6229D10A/61DCB32A" Ref="C9"  Part="1" 
F 0 "C9" H 1000 7350 50  0000 L CNN
F 1 "0.1µF" H 1000 7150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 988 7100 50  0001 C CNN
F 3 "~" H 950 7250 50  0001 C CNN
	1    950  7250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61DCB356
P 950 6950
AR Path="/61DCB356" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61DCB356" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61DCB356" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61DCB356" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61DCB356" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61DCB356" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61DCB356" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 950 6800 50  0001 C CNN
F 1 "+5V" H 965 7123 50  0000 C CNN
F 2 "" H 950 6950 50  0001 C CNN
F 3 "" H 950 6950 50  0001 C CNN
	1    950  6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2850 3100 2850
Wire Wire Line
	4200 2550 4500 2550
Wire Wire Line
	4200 2650 4500 2650
Wire Wire Line
	4200 2750 4500 2750
Wire Wire Line
	4200 2850 4500 2850
Wire Wire Line
	4200 2950 4500 2950
Wire Wire Line
	4200 3050 4500 3050
Wire Wire Line
	4200 3150 4500 3150
Wire Wire Line
	4200 3250 4500 3250
Text Label 3050 4050 2    50   ~ 0
~IRQ
Text Label 3050 4150 2    50   ~ 0
~NMI
Wire Wire Line
	4900 4850 4900 2350
Wire Wire Line
	4200 2350 4900 2350
Wire Wire Line
	5000 4950 5000 2250
Wire Wire Line
	4200 2250 5000 2250
Text Label 4500 2350 2    50   ~ 0
~RESET
Text Label 4500 2250 2    50   ~ 0
CLK
Entry Wire Line
	2800 3650 2900 3550
Entry Wire Line
	2800 3550 2900 3450
Entry Wire Line
	2800 3450 2900 3350
Entry Wire Line
	2800 3350 2900 3250
Entry Wire Line
	2800 3250 2900 3150
Entry Wire Line
	2800 3150 2900 3050
Entry Wire Line
	2800 3050 2900 2950
Entry Wire Line
	2800 2950 2900 2850
Entry Wire Line
	2800 2850 2900 2750
Entry Wire Line
	2800 2750 2900 2650
Entry Wire Line
	2800 2650 2900 2550
Entry Wire Line
	2800 2550 2900 2450
Entry Wire Line
	2800 2450 2900 2350
Entry Wire Line
	2800 2350 2900 2250
Entry Wire Line
	2800 2250 2900 2150
Entry Wire Line
	2800 3750 2900 3650
Entry Wire Line
	4600 3350 4500 3250
Entry Wire Line
	4600 3250 4500 3150
Entry Wire Line
	4600 3150 4500 3050
Entry Wire Line
	4600 3050 4500 2950
Entry Wire Line
	4600 2950 4500 2850
Entry Wire Line
	4600 2850 4500 2750
Entry Wire Line
	4600 2750 4500 2650
Entry Wire Line
	4600 2650 4500 2550
Text Notes 1000 7000 0    50   ~ 0
Bypass capacitor
Wire Wire Line
	4200 3850 4800 3850
Wire Wire Line
	4800 4750 4800 3850
Text HLabel 1500 4150 0    50   Input ~ 0
~NMI
Text HLabel 1500 4050 0    50   Input ~ 0
~IRQ
Text HLabel 1500 3950 0    50   Input ~ 0
RDY
Wire Wire Line
	1500 4850 4900 4850
Text HLabel 1500 4850 0    50   Input ~ 0
~RESET
Text HLabel 1500 4950 0    50   Input ~ 0
CLK
Wire Wire Line
	1500 4950 5000 4950
Wire Wire Line
	4200 3950 9250 3950
Text HLabel 9250 3950 2    50   Output ~ 0
SYNC
Text HLabel 9250 2150 2    50   Output ~ 0
R~W
$Comp
L power:+5V #PWR?
U 1 1 61D7224C
P 2100 3300
AR Path="/61D7224C" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61D7224C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61D7224C" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/61D7224C" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2100 3150 50  0001 C CNN
F 1 "+5V" H 2115 3473 50  0000 C CNN
F 2 "" H 2100 3300 50  0001 C CNN
F 3 "" H 2100 3300 50  0001 C CNN
	1    2100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3300 2100 3350
Text Label 4500 3850 2    50   ~ 0
~SO
Text HLabel 9250 5250 2    50   Output ~ 0
A[0..15]
Text HLabel 9250 5150 2    50   BiDi ~ 0
D[0..7]
$Comp
L 0_Fred's_Local_Library:WD65C02 U3
U 1 1 61D6BFB9
P 3650 3050
F 0 "U3" H 3700 4200 50  0000 L CNN
F 1 "WD65C02" H 3700 4100 50  0000 L CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 3150 4050 60  0001 C CNN
F 3 "" H 3150 4050 60  0001 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
Text Label 3050 2150 2    50   ~ 0
A0
Text Label 3050 2250 2    50   ~ 0
A1
Text Label 3050 2350 2    50   ~ 0
A2
Text Label 3050 2450 2    50   ~ 0
A3
Text Label 3050 2550 2    50   ~ 0
A4
Text Label 3050 2650 2    50   ~ 0
A5
Text Label 3050 2750 2    50   ~ 0
A6
Text Label 3050 2850 2    50   ~ 0
A7
Text Label 3050 2950 2    50   ~ 0
A8
Text Label 3050 3050 2    50   ~ 0
A9
Text Label 3050 3150 2    50   ~ 0
A10
Text Label 3050 3250 2    50   ~ 0
A11
Text Label 3050 3350 2    50   ~ 0
A12
Text Label 3050 3450 2    50   ~ 0
A13
Text Label 3050 3550 2    50   ~ 0
A14
Text Label 3050 3650 2    50   ~ 0
A15
Text Label 4500 2550 2    50   ~ 0
D0
Text Label 4500 2650 2    50   ~ 0
D1
Text Label 4500 2750 2    50   ~ 0
D2
Text Label 4500 2850 2    50   ~ 0
D3
Text Label 4500 2950 2    50   ~ 0
D4
Text Label 4500 3050 2    50   ~ 0
D5
Text Label 4500 3150 2    50   ~ 0
D6
Text Label 4500 3250 2    50   ~ 0
D7
Wire Wire Line
	4200 2150 9250 2150
Wire Bus Line
	4600 5150 9250 5150
Wire Bus Line
	2800 5250 9250 5250
Text HLabel 1500 3850 0    50   Input ~ 0
BE
Wire Wire Line
	4200 4050 9250 4050
Wire Wire Line
	4200 4150 9250 4150
Text HLabel 9250 4050 2    50   Output ~ 0
~ML
Text HLabel 9250 4150 2    50   Output ~ 0
~VP
Wire Wire Line
	950  7400 950  7550
Wire Wire Line
	950  6950 950  7100
Wire Wire Line
	1500 4150 2500 4150
Wire Wire Line
	1500 4050 2300 4050
Wire Wire Line
	1500 3950 2100 3950
Wire Wire Line
	1500 3850 2400 3850
Wire Wire Line
	2100 3950 2100 3750
Connection ~ 2100 3950
Wire Wire Line
	2100 3950 3100 3950
Wire Wire Line
	2200 4750 2200 3750
Wire Wire Line
	2200 4750 4800 4750
Wire Wire Line
	2300 4050 2300 3750
Connection ~ 2300 4050
Wire Wire Line
	2300 4050 3100 4050
Wire Wire Line
	2400 3850 2400 3750
Connection ~ 2400 3850
Wire Wire Line
	2400 3850 3100 3850
Wire Wire Line
	2500 4150 2500 3750
Connection ~ 2500 4150
Wire Wire Line
	2500 4150 3100 4150
Wire Bus Line
	4600 2650 4600 5150
Wire Bus Line
	2800 2250 2800 5250
$EndSCHEMATC
