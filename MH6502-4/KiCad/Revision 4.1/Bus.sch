EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 11
Title "Expansion bus"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3800 4800 0    50   Input ~ 0
A[0..15]
Wire Wire Line
	5300 5800 5000 5800
Wire Wire Line
	5300 5500 5000 5500
Wire Wire Line
	5000 5900 5300 5900
Wire Wire Line
	4800 5600 4500 5600
Wire Wire Line
	4800 5500 4500 5500
Entry Wire Line
	5000 5800 4900 5700
Entry Wire Line
	5000 5600 4900 5500
Entry Wire Line
	5000 5500 4900 5400
Entry Wire Line
	4800 5600 4900 5500
Text HLabel 4500 5500 0    50   Input ~ 0
CLK
Text HLabel 4500 5600 0    50   Input ~ 0
~CLK
Text HLabel 5300 5500 2    50   Output ~ 0
~NMI
Text HLabel 5300 5900 2    50   Output ~ 0
RDY
Text HLabel 5300 5800 2    50   Output ~ 0
~IRQ7
Text HLabel 3800 4600 0    50   BiDi ~ 0
D[0..7]
Entry Wire Line
	4800 5500 4900 5400
Wire Wire Line
	5000 5700 5300 5700
Text HLabel 5300 5700 2    50   Output ~ 0
~IRQ4
$Comp
L Device:CP1 C?
U 1 1 62FEC874
P 900 1150
AR Path="/61BE126B/62FEC874" Ref="C?"  Part="1" 
AR Path="/62FEC874" Ref="C?"  Part="1" 
AR Path="/61D74077/62FEC874" Ref="C?"  Part="1" 
AR Path="/621D2996/62FEC874" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FEC874" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FEC874" Ref="C12"  Part="1" 
F 0 "C12" H 750 1200 50  0000 R CNN
F 1 "10µF" H 750 1100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 900 1150 50  0001 C CNN
F 3 "~" H 900 1150 50  0001 C CNN
	1    900  1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FFA7EC
P 1400 1150
AR Path="/61BE126B/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/61D74077/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/621D2996/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FFA7EC" Ref="C13"  Part="1" 
F 0 "C13" H 1250 1200 50  0000 R CNN
F 1 "10µF" H 1250 1100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1400 1150 50  0001 C CNN
F 3 "~" H 1400 1150 50  0001 C CNN
	1    1400 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FFAA2F
P 1900 1150
AR Path="/61BE126B/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/61D74077/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/621D2996/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FFAA2F" Ref="C14"  Part="1" 
F 0 "C14" H 1750 1200 50  0000 R CNN
F 1 "10µF" H 1750 1100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1900 1150 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FFABC8
P 2400 1150
AR Path="/61BE126B/62FFABC8" Ref="C?"  Part="1" 
AR Path="/62FFABC8" Ref="C?"  Part="1" 
AR Path="/61D74077/62FFABC8" Ref="C?"  Part="1" 
AR Path="/621D2996/62FFABC8" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FFABC8" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FFABC8" Ref="C15"  Part="1" 
F 0 "C15" H 2250 1200 50  0000 R CNN
F 1 "10µF" H 2250 1100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2400 1150 50  0001 C CNN
F 3 "~" H 2400 1150 50  0001 C CNN
	1    2400 1150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 62FFAD61
P 900 1400
F 0 "#PWR042" H 900 1150 50  0001 C CNN
F 1 "GND" H 905 1227 50  0000 C CNN
F 2 "" H 900 1400 50  0001 C CNN
F 3 "" H 900 1400 50  0001 C CNN
	1    900  1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6300A6C0
P 900 900
AR Path="/61D87109/6300A6C0" Ref="#PWR?"  Part="1" 
AR Path="/6300A6C0" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/6300A6C0" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 900 750 50  0001 C CNN
F 1 "+5V" H 915 1073 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1300 900  1350
Wire Wire Line
	900  1350 1400 1350
Wire Wire Line
	2400 1350 2400 1300
Connection ~ 900  1350
Wire Wire Line
	900  1350 900  1400
Wire Wire Line
	2400 1000 2400 950 
Wire Wire Line
	2400 950  1900 950 
Wire Wire Line
	900  950  900  1000
Wire Wire Line
	900  950  900  900 
Connection ~ 900  950 
Wire Wire Line
	1400 950  1400 1000
Connection ~ 1400 950 
Wire Wire Line
	1400 950  900  950 
Wire Wire Line
	1900 950  1900 1000
Connection ~ 1900 950 
Wire Wire Line
	1900 950  1400 950 
Wire Wire Line
	1900 1300 1900 1350
Connection ~ 1900 1350
Wire Wire Line
	1900 1350 2400 1350
Wire Wire Line
	1400 1300 1400 1350
Connection ~ 1400 1350
Wire Wire Line
	1400 1350 1900 1350
Wire Wire Line
	5300 5600 5000 5600
Text HLabel 5300 5600 2    50   Output ~ 0
~IRQ3
Entry Wire Line
	5000 5900 4900 5800
Wire Bus Line
	4900 4950 6300 4950
Entry Wire Line
	4800 5800 4900 5700
Text HLabel 4500 6000 0    50   Input ~ 0
SYNC
Text HLabel 4500 5900 0    50   Input ~ 0
~IOREQ
Text HLabel 4500 5800 0    50   Input ~ 0
R~W
Text HLabel 4500 5700 0    50   Input ~ 0
~RESET
Entry Wire Line
	4800 5700 4900 5600
Entry Wire Line
	4800 5900 4900 5800
Entry Wire Line
	4800 6000 4900 5900
Wire Wire Line
	4800 5700 4500 5700
Wire Wire Line
	4800 5800 4500 5800
Wire Wire Line
	4800 5900 4500 5900
Wire Wire Line
	4800 6000 4500 6000
Text HLabel 4500 6100 0    50   Input ~ 0
~VP
Wire Wire Line
	4500 6100 4800 6100
Entry Wire Line
	4800 6100 4900 6000
Connection ~ 4900 4950
Connection ~ 4700 4600
Connection ~ 4800 4800
Wire Bus Line
	4800 4800 6400 4800
Wire Bus Line
	3800 4800 4800 4800
Wire Bus Line
	4700 4600 6500 4600
Wire Bus Line
	3800 4600 4700 4600
Text Label 5000 3350 0    50   ~ 0
~IRQ7
Entry Wire Line
	5000 3550 4900 3650
Entry Wire Line
	6200 3550 6300 3650
Wire Wire Line
	5850 3550 6200 3550
Wire Wire Line
	5350 3550 5000 3550
Entry Wire Line
	6200 3450 6300 3550
Text Label 6200 3250 2    50   ~ 0
~IRQ4
Wire Wire Line
	5350 3450 5000 3450
Entry Wire Line
	5000 3450 4900 3550
Entry Wire Line
	6300 2850 6400 2950
Entry Wire Line
	6300 2750 6400 2850
Entry Wire Line
	6300 2650 6400 2750
Entry Wire Line
	6300 2550 6400 2650
Entry Wire Line
	6400 2450 6500 2550
Entry Wire Line
	6400 2350 6500 2450
Entry Wire Line
	6400 2250 6500 2350
Entry Wire Line
	6400 2150 6500 2250
Wire Wire Line
	5850 2450 6400 2450
Wire Wire Line
	5850 2350 6400 2350
Wire Wire Line
	5850 2250 6400 2250
Wire Wire Line
	5850 2150 6400 2150
Wire Wire Line
	5850 2850 6300 2850
Wire Wire Line
	5850 2750 6300 2750
Wire Wire Line
	5850 2650 6300 2650
Wire Wire Line
	5850 2550 6300 2550
Text Label 6200 2850 2    50   ~ 0
A7
Text Label 6200 2750 2    50   ~ 0
A5
Text Label 6200 2650 2    50   ~ 0
A3
Text Label 6200 2550 2    50   ~ 0
A1
Text Label 6200 2450 2    50   ~ 0
D7
Text Label 6200 2350 2    50   ~ 0
D5
Text Label 6200 2250 2    50   ~ 0
D3
Text Label 6200 2150 2    50   ~ 0
D1
Entry Wire Line
	6200 3350 6300 3450
Entry Wire Line
	6200 3650 6300 3750
Entry Wire Line
	6200 2950 6300 3050
Entry Wire Line
	6200 3050 6300 3150
Entry Wire Line
	6200 3150 6300 3250
Entry Wire Line
	6200 3250 6300 3350
Entry Wire Line
	5000 3350 4900 3450
Entry Wire Line
	5000 3650 4900 3750
Entry Wire Line
	5000 2950 4900 3050
Entry Wire Line
	5000 3050 4900 3150
Entry Wire Line
	5000 3150 4900 3250
Entry Wire Line
	5000 3250 4900 3350
Wire Wire Line
	5850 3650 6200 3650
Wire Wire Line
	5850 3350 6200 3350
Wire Wire Line
	5850 3250 6200 3250
Wire Wire Line
	5850 3150 6200 3150
Wire Wire Line
	5850 3050 6200 3050
Wire Wire Line
	5850 2950 6200 2950
Wire Wire Line
	5350 3650 5000 3650
Wire Wire Line
	5350 3350 5000 3350
Wire Wire Line
	5350 3250 5000 3250
Wire Wire Line
	5350 3150 5000 3150
Wire Wire Line
	5350 3050 5000 3050
Wire Wire Line
	5350 2950 5000 2950
Text Label 6200 3650 2    50   ~ 0
SYNC
Text Label 5000 3650 0    50   ~ 0
RDY
Text Label 5000 3250 0    50   ~ 0
~IRQ3
Text Label 6200 3150 2    50   ~ 0
~NMI
Text Label 5000 3150 0    50   ~ 0
R~W
Text Label 6200 3050 2    50   ~ 0
~CLK
Text Label 5000 3050 0    50   ~ 0
CLK
Text Label 6200 2950 2    50   ~ 0
~RESET
Text Label 5000 2950 0    50   ~ 0
~IOREQ
Text Label 5000 2550 0    50   ~ 0
A0
Text Label 5000 2150 0    50   ~ 0
D0
Text Label 5000 2250 0    50   ~ 0
D2
Text Label 5000 2350 0    50   ~ 0
D4
Text Label 5000 2450 0    50   ~ 0
D6
Text Label 5000 2650 0    50   ~ 0
A2
Text Label 5000 2750 0    50   ~ 0
A4
Text Label 5000 2850 0    50   ~ 0
A6
Wire Wire Line
	4900 2550 5350 2550
Wire Wire Line
	4900 2650 5350 2650
Wire Wire Line
	4900 2750 5350 2750
Wire Wire Line
	4900 2850 5350 2850
Wire Wire Line
	4800 2150 5350 2150
Wire Wire Line
	4800 2250 5350 2250
Wire Wire Line
	4800 2350 5350 2350
Wire Wire Line
	4800 2450 5350 2450
Entry Wire Line
	4800 2150 4700 2250
Entry Wire Line
	4800 2250 4700 2350
Entry Wire Line
	4800 2350 4700 2450
Entry Wire Line
	4800 2450 4700 2550
Entry Wire Line
	4900 2550 4800 2650
Entry Wire Line
	4900 2650 4800 2750
Entry Wire Line
	4900 2750 4800 2850
Entry Wire Line
	4900 2850 4800 2950
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J6
U 1 1 61F5F78D
P 5550 2850
F 0 "J6" H 5600 3967 50  0000 C CNN
F 1 "BUS" H 5600 3876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 5550 2850 50  0001 C CNN
F 3 "~" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3450 5850 3450
Text Label 6200 3450 2    50   ~ 0
BE
Text Label 5000 3550 0    50   ~ 0
~ML
Text Label 6200 3550 2    50   ~ 0
~VP
NoConn ~ 5000 3450
Wire Wire Line
	5000 6000 5300 6000
Text HLabel 5300 6000 2    50   Output ~ 0
BE
Entry Wire Line
	5000 6000 4900 5900
Text HLabel 4500 6200 0    50   Input ~ 0
~ML
Wire Wire Line
	4500 6200 4800 6200
Entry Wire Line
	4800 6200 4900 6100
Entry Wire Line
	5000 5700 4900 5600
NoConn ~ 6200 3350
Wire Wire Line
	5350 1950 5000 1950
Wire Wire Line
	5350 2050 5000 2050
Wire Wire Line
	6200 1950 5850 1950
Wire Wire Line
	6200 2050 5850 2050
Text Label 5000 1950 0    50   ~ 0
GND
Text Label 5000 2050 0    50   ~ 0
+5V
Text Label 6200 1950 2    50   ~ 0
GND
Text Label 6200 2050 2    50   ~ 0
+5V
Wire Wire Line
	5350 3750 5000 3750
Wire Wire Line
	5350 3850 5000 3850
Wire Wire Line
	5850 3750 6200 3750
Wire Wire Line
	5850 3850 6200 3850
Text Label 5000 3750 0    50   ~ 0
+5V
Text Label 5000 3850 0    50   ~ 0
GND
Text Label 6200 3850 2    50   ~ 0
GND
Text Label 6200 3750 2    50   ~ 0
+5V
Wire Bus Line
	6500 2250 6500 4600
Wire Bus Line
	6400 2650 6400 4800
Wire Bus Line
	4700 2250 4700 4600
Wire Bus Line
	4800 2650 4800 4800
Wire Bus Line
	6300 3050 6300 4950
Wire Bus Line
	4900 3050 4900 4950
Wire Bus Line
	4900 4950 4900 6100
$EndSCHEMATC
