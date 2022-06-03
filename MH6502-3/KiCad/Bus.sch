EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 9 11
Title "Expansion bus"
Date "2022-01-22"
Rev "3"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2000 5600 0    50   Input ~ 0
A[0..15]
Wire Wire Line
	4200 6800 3200 6800
Wire Wire Line
	4200 6700 3200 6700
Wire Wire Line
	4200 6600 3200 6600
Wire Wire Line
	4200 6500 3200 6500
Wire Wire Line
	4200 6000 3200 6000
Wire Wire Line
	3000 6900 2000 6900
Wire Wire Line
	3200 6900 4200 6900
Wire Wire Line
	3000 6800 2000 6800
Wire Wire Line
	3000 6700 2000 6700
Wire Wire Line
	3000 6600 2000 6600
Wire Wire Line
	3000 6500 2000 6500
Wire Wire Line
	3000 6400 2000 6400
Wire Wire Line
	3000 6100 2000 6100
Wire Wire Line
	3000 6000 2000 6000
Entry Wire Line
	3200 6600 3100 6500
Entry Wire Line
	3200 6500 3100 6400
Entry Wire Line
	3200 6400 3100 6300
Entry Wire Line
	3200 6000 3100 5900
Entry Wire Line
	3000 6900 3100 6800
Entry Wire Line
	3000 6800 3100 6700
Entry Wire Line
	3000 6700 3100 6600
Entry Wire Line
	3000 6600 3100 6500
Entry Wire Line
	3000 6400 3100 6300
Entry Wire Line
	3000 6100 3100 6000
Text HLabel 2000 6000 0    50   Input ~ 0
CLK
Text HLabel 2000 6100 0    50   Input ~ 0
~CLK
Text HLabel 2000 6400 0    50   Input ~ 0
~RESET
Text HLabel 2000 6500 0    50   Input ~ 0
R~W
Text HLabel 2000 6600 0    50   Input ~ 0
~RD
Text HLabel 2000 6700 0    50   Input ~ 0
~WR
Text HLabel 2000 6800 0    50   Input ~ 0
~IOREQ
Text HLabel 4200 6000 2    50   Output ~ 0
~NMI
Text HLabel 4200 6900 2    50   Output ~ 0
RDY
Text HLabel 2000 6900 0    50   Input ~ 0
SYNC
Text HLabel 4200 6500 2    50   Output ~ 0
~IRQ8
Text HLabel 4200 6600 2    50   Output ~ 0
~IRQ9
Text HLabel 4200 6700 2    50   Output ~ 0
~IRQ10
Text HLabel 4200 6800 2    50   Output ~ 0
~IRQ11
Text HLabel 2000 5400 0    50   BiDi ~ 0
D[0..7]
Entry Wire Line
	3000 6000 3100 5900
Entry Wire Line
	3200 6700 3100 6600
Entry Wire Line
	3200 6300 3100 6200
Entry Wire Line
	3200 6200 3100 6100
Entry Wire Line
	3200 6800 3100 6700
Entry Wire Line
	3100 6000 3200 6100
Wire Wire Line
	3200 6400 4200 6400
Text HLabel 4200 6400 2    50   Output ~ 0
~IRQ4
$Comp
L Connector_Generic:Conn_02x32_Odd_Even J?
U 1 1 61DA2CD9
P 5400 2900
AR Path="/61D87109/61DA2CD9" Ref="J?"  Part="1" 
AR Path="/61DA2CD9" Ref="J?"  Part="1" 
AR Path="/61DA6806/61DA2CD9" Ref="J17"  Part="1" 
F 0 "J17" H 5450 4617 50  0000 C CNN
F 1 "EXT BUS" H 5450 4526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x32_P2.54mm_Vertical" H 5400 2900 50  0001 C CNN
F 3 "~" H 5400 2900 50  0001 C CNN
	1    5400 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 61DA2CDF
P 3050 2750
AR Path="/61D87109/61DA2CDF" Ref="J?"  Part="1" 
AR Path="/61DA2CDF" Ref="J?"  Part="1" 
AR Path="/61DA6806/61DA2CDF" Ref="J16"  Part="1" 
F 0 "J16" H 3100 3067 50  0000 C CNN
F 1 "PWR" H 3100 2976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 3050 2750 50  0001 C CNN
F 3 "~" H 3050 2750 50  0001 C CNN
	1    3050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2850 2800 2850
Wire Wire Line
	2800 2850 2800 2750
Wire Wire Line
	2800 2750 2850 2750
Wire Wire Line
	2800 2750 2800 2650
Wire Wire Line
	2800 2650 2850 2650
Connection ~ 2800 2750
Wire Wire Line
	2800 2650 2800 2450
Connection ~ 2800 2650
$Comp
L power:+5V #PWR?
U 1 1 61DA2CED
P 2800 2450
AR Path="/61D87109/61DA2CED" Ref="#PWR?"  Part="1" 
AR Path="/61DA2CED" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61DA2CED" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2800 2300 50  0001 C CNN
F 1 "+5V" H 2815 2623 50  0000 C CNN
F 2 "" H 2800 2450 50  0001 C CNN
F 3 "" H 2800 2450 50  0001 C CNN
	1    2800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2650 3400 2650
Wire Wire Line
	3400 2650 3400 2750
Wire Wire Line
	3400 2750 3350 2750
Wire Wire Line
	3400 2750 3400 2850
Wire Wire Line
	3400 2850 3350 2850
Connection ~ 3400 2750
Wire Wire Line
	3400 2850 3400 3050
Connection ~ 3400 2850
$Comp
L power:GND #PWR?
U 1 1 61DA2CFB
P 3400 3050
AR Path="/61D87109/61DA2CFB" Ref="#PWR?"  Part="1" 
AR Path="/61DA2CFB" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61DA2CFB" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3400 2800 50  0001 C CNN
F 1 "GND" H 3405 2877 50  0000 C CNN
F 2 "" H 3400 3050 50  0001 C CNN
F 3 "" H 3400 3050 50  0001 C CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 61DA2D01
P 3050 3800
AR Path="/61D87109/61DA2D01" Ref="J?"  Part="1" 
AR Path="/61DA2D01" Ref="J?"  Part="1" 
AR Path="/61DA6806/61DA2D01" Ref="J18"  Part="1" 
F 0 "J18" H 3100 4117 50  0000 C CNN
F 1 "PWR" H 3100 4026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 3050 3800 50  0001 C CNN
F 3 "~" H 3050 3800 50  0001 C CNN
	1    3050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3900 2800 3900
Wire Wire Line
	2800 3900 2800 3800
Wire Wire Line
	2800 3800 2850 3800
Wire Wire Line
	2800 3800 2800 3700
Wire Wire Line
	2800 3700 2850 3700
Connection ~ 2800 3800
Wire Wire Line
	2800 3700 2800 3500
Connection ~ 2800 3700
$Comp
L power:+5V #PWR?
U 1 1 61DA2D0F
P 2800 3500
AR Path="/61D87109/61DA2D0F" Ref="#PWR?"  Part="1" 
AR Path="/61DA2D0F" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61DA2D0F" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 2800 3350 50  0001 C CNN
F 1 "+5V" H 2815 3673 50  0000 C CNN
F 2 "" H 2800 3500 50  0001 C CNN
F 3 "" H 2800 3500 50  0001 C CNN
	1    2800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3700 3400 3700
Wire Wire Line
	3400 3700 3400 3800
Wire Wire Line
	3400 3800 3350 3800
Wire Wire Line
	3400 3800 3400 3900
Wire Wire Line
	3400 3900 3350 3900
Connection ~ 3400 3800
Wire Wire Line
	3400 3900 3400 4100
Connection ~ 3400 3900
$Comp
L power:GND #PWR?
U 1 1 61DA2D1D
P 3400 4100
AR Path="/61D87109/61DA2D1D" Ref="#PWR?"  Part="1" 
AR Path="/61DA2D1D" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61DA2D1D" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3400 3850 50  0001 C CNN
F 1 "GND" H 3405 3927 50  0000 C CNN
F 2 "" H 3400 4100 50  0001 C CNN
F 3 "" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FEC874
P 900 1200
AR Path="/61BE126B/62FEC874" Ref="C?"  Part="1" 
AR Path="/62FEC874" Ref="C?"  Part="1" 
AR Path="/61D74077/62FEC874" Ref="C?"  Part="1" 
AR Path="/621D2996/62FEC874" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FEC874" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FEC874" Ref="C40"  Part="1" 
F 0 "C40" H 750 1250 50  0000 R CNN
F 1 "10µF" H 750 1150 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 900 1200 50  0001 C CNN
F 3 "~" H 900 1200 50  0001 C CNN
	1    900  1200
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FFA7EC
P 1400 1200
AR Path="/61BE126B/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/61D74077/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/621D2996/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FFA7EC" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FFA7EC" Ref="C41"  Part="1" 
F 0 "C41" H 1250 1250 50  0000 R CNN
F 1 "10µF" H 1250 1150 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1400 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1200
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FFAA2F
P 1900 1200
AR Path="/61BE126B/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/61D74077/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/621D2996/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FFAA2F" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FFAA2F" Ref="C42"  Part="1" 
F 0 "C42" H 1750 1250 50  0000 R CNN
F 1 "10µF" H 1750 1150 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1900 1200 50  0001 C CNN
F 3 "~" H 1900 1200 50  0001 C CNN
	1    1900 1200
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 62FFABC8
P 2400 1200
AR Path="/61BE126B/62FFABC8" Ref="C?"  Part="1" 
AR Path="/62FFABC8" Ref="C?"  Part="1" 
AR Path="/61D74077/62FFABC8" Ref="C?"  Part="1" 
AR Path="/621D2996/62FFABC8" Ref="C?"  Part="1" 
AR Path="/636AFA21/62FFABC8" Ref="C?"  Part="1" 
AR Path="/61DA6806/62FFABC8" Ref="C43"  Part="1" 
F 0 "C43" H 2250 1250 50  0000 R CNN
F 1 "10µF" H 2250 1150 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2400 1200 50  0001 C CNN
F 3 "~" H 2400 1200 50  0001 C CNN
	1    2400 1200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 62FFAD61
P 900 1450
F 0 "#PWR0105" H 900 1200 50  0001 C CNN
F 1 "GND" H 905 1277 50  0000 C CNN
F 2 "" H 900 1450 50  0001 C CNN
F 3 "" H 900 1450 50  0001 C CNN
	1    900  1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6300A6C0
P 900 950
AR Path="/61D87109/6300A6C0" Ref="#PWR?"  Part="1" 
AR Path="/6300A6C0" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/6300A6C0" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 900 800 50  0001 C CNN
F 1 "+5V" H 915 1123 50  0000 C CNN
F 2 "" H 900 950 50  0001 C CNN
F 3 "" H 900 950 50  0001 C CNN
	1    900  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1350 900  1400
Wire Wire Line
	900  1400 1400 1400
Wire Wire Line
	2400 1400 2400 1350
Connection ~ 900  1400
Wire Wire Line
	900  1400 900  1450
Wire Wire Line
	2400 1050 2400 1000
Wire Wire Line
	2400 1000 1900 1000
Wire Wire Line
	900  1000 900  1050
Wire Wire Line
	900  1000 900  950 
Connection ~ 900  1000
Wire Wire Line
	1400 1000 1400 1050
Connection ~ 1400 1000
Wire Wire Line
	1400 1000 900  1000
Wire Wire Line
	1900 1000 1900 1050
Connection ~ 1900 1000
Wire Wire Line
	1900 1000 1400 1000
Wire Wire Line
	1900 1350 1900 1400
Connection ~ 1900 1400
Wire Wire Line
	1900 1400 2400 1400
Wire Wire Line
	1400 1350 1400 1400
Connection ~ 1400 1400
Wire Wire Line
	1400 1400 1900 1400
Wire Wire Line
	4200 6100 3200 6100
Wire Wire Line
	4200 6200 3200 6200
Wire Wire Line
	4200 6300 3200 6300
Text HLabel 4200 6100 2    50   Output ~ 0
~IRQ0
Text HLabel 4200 6200 2    50   Output ~ 0
~IRQ1
Text HLabel 4200 6300 2    50   Output ~ 0
~IRQ3
Entry Wire Line
	3000 6500 3100 6400
Entry Wire Line
	3000 6200 3100 6100
Entry Wire Line
	3000 6300 3100 6200
Wire Wire Line
	3000 6200 2000 6200
Wire Wire Line
	3000 6300 2000 6300
Text HLabel 2000 6200 0    50   Input ~ 0
HCLK
Text HLabel 2000 6300 0    50   Input ~ 0
ACLK
NoConn ~ 5700 4100
NoConn ~ 5200 4100
NoConn ~ 5200 4200
NoConn ~ 5700 4200
NoConn ~ 5200 4300
NoConn ~ 5700 4300
NoConn ~ 5700 4000
Entry Wire Line
	4750 2700 4650 2800
Entry Wire Line
	4750 2600 4650 2700
Entry Wire Line
	4750 2500 4650 2600
Entry Wire Line
	4750 2400 4650 2500
Entry Wire Line
	4750 2300 4650 2400
Entry Wire Line
	4750 2200 4650 2300
Entry Wire Line
	4750 2100 4650 2200
Entry Wire Line
	4750 2000 4650 2100
Entry Wire Line
	4650 1900 4550 2000
Entry Wire Line
	4650 1800 4550 1900
Entry Wire Line
	4650 1700 4550 1800
Entry Wire Line
	4650 1600 4550 1700
Wire Wire Line
	4650 1900 5200 1900
Wire Wire Line
	4650 1800 5200 1800
Wire Wire Line
	4650 1700 5200 1700
Wire Wire Line
	4650 1600 5200 1600
Wire Wire Line
	4750 2700 5200 2700
Wire Wire Line
	4750 2600 5200 2600
Wire Wire Line
	4750 2500 5200 2500
Wire Wire Line
	4750 2400 5200 2400
Wire Wire Line
	4750 2300 5200 2300
Wire Wire Line
	4750 2200 5200 2200
Wire Wire Line
	4750 2100 5200 2100
Wire Wire Line
	4750 2000 5200 2000
Entry Wire Line
	4850 3800 4750 3900
Entry Wire Line
	4850 3700 4750 3800
Entry Wire Line
	4850 3500 4750 3600
Entry Wire Line
	4850 3400 4750 3500
Entry Wire Line
	4850 3300 4750 3400
Entry Wire Line
	4850 3200 4750 3300
Entry Wire Line
	4850 3100 4750 3200
Entry Wire Line
	4850 3000 4750 3100
Entry Wire Line
	4850 2900 4750 3000
Entry Wire Line
	4850 2800 4750 2900
Text Label 4850 3000 0    50   ~ 0
R~W
Text Label 4850 3500 0    50   ~ 0
~IRQ10
Text Label 4850 3100 0    50   ~ 0
~WR
Wire Wire Line
	5200 3500 4850 3500
Wire Wire Line
	5200 3600 4850 3600
Text Label 4850 2400 0    50   ~ 0
A8
Text Label 4850 2500 0    50   ~ 0
A10
Text Label 4850 2600 0    50   ~ 0
A12
Text Label 4850 2700 0    50   ~ 0
A14
Text Label 4850 3300 0    50   ~ 0
~IRQ3
Wire Wire Line
	5200 3700 4850 3700
Text Label 4850 2800 0    50   ~ 0
~IOREQ
Wire Wire Line
	5200 2900 4850 2900
Wire Wire Line
	5200 3000 4850 3000
Wire Wire Line
	5200 3100 4850 3100
Wire Wire Line
	5200 2800 4850 2800
Text Label 4850 2900 0    50   ~ 0
CLK
Text Label 4850 3800 0    50   ~ 0
RDY
Text Label 4850 3400 0    50   ~ 0
~IRQ8
Wire Wire Line
	4850 3200 5200 3200
Wire Wire Line
	5200 3400 4850 3400
Wire Wire Line
	5200 3300 4850 3300
Text Label 4850 3200 0    50   ~ 0
~IRQ0
Text Label 4850 2300 0    50   ~ 0
A6
Text Label 4850 2200 0    50   ~ 0
A4
Text Label 4850 2100 0    50   ~ 0
A2
Text Label 4850 1900 0    50   ~ 0
D6
Text Label 4850 1800 0    50   ~ 0
D4
Text Label 4850 1700 0    50   ~ 0
D2
Text Label 4850 1600 0    50   ~ 0
D0
Entry Wire Line
	6150 2700 6250 2800
Entry Wire Line
	6150 2600 6250 2700
Entry Wire Line
	6150 2500 6250 2600
Entry Wire Line
	6150 2400 6250 2500
Entry Wire Line
	6150 2300 6250 2400
Entry Wire Line
	6150 2200 6250 2300
Entry Wire Line
	6150 2100 6250 2200
Entry Wire Line
	6150 2000 6250 2100
Entry Wire Line
	6250 1900 6350 2000
Entry Wire Line
	6250 1800 6350 1900
Entry Wire Line
	6250 1700 6350 1800
Entry Wire Line
	6250 1600 6350 1700
Wire Wire Line
	5700 1900 6250 1900
Wire Wire Line
	5700 1800 6250 1800
Wire Wire Line
	5700 1700 6250 1700
Wire Wire Line
	5700 1600 6250 1600
Wire Wire Line
	5700 2700 6150 2700
Wire Wire Line
	5700 2600 6150 2600
Wire Wire Line
	5700 2500 6150 2500
Wire Wire Line
	5700 2400 6150 2400
Wire Wire Line
	5700 2300 6150 2300
Wire Wire Line
	5700 2200 6150 2200
Wire Wire Line
	5700 2100 6150 2100
Wire Wire Line
	5700 2000 6150 2000
Entry Wire Line
	6050 3800 6150 3900
Entry Wire Line
	6050 3700 6150 3800
Entry Wire Line
	6050 3500 6150 3600
Entry Wire Line
	6050 3400 6150 3500
Entry Wire Line
	6050 3300 6150 3400
Entry Wire Line
	6050 3200 6150 3300
Entry Wire Line
	6050 3100 6150 3200
Entry Wire Line
	6050 3000 6150 3100
Entry Wire Line
	6050 2900 6150 3000
Entry Wire Line
	6050 2800 6150 2900
Text Label 4850 3700 0    50   ~ 0
ACLK
Text Label 6050 3700 2    50   ~ 0
HCLK
Wire Wire Line
	5700 3700 6050 3700
Wire Wire Line
	5700 3600 6050 3600
Text Label 6050 3800 2    50   ~ 0
SYNC
Text Label 6050 3100 2    50   ~ 0
~NMI
Wire Wire Line
	5700 2900 6050 2900
Wire Wire Line
	5700 3000 6050 3000
Text Label 6050 2900 2    50   ~ 0
~CLK
Wire Wire Line
	6050 2800 5700 2800
Wire Wire Line
	5700 3100 6050 3100
Text Label 6050 3200 2    50   ~ 0
~IRQ1
Wire Wire Line
	5700 3300 6050 3300
Wire Wire Line
	5700 3400 6050 3400
Wire Wire Line
	5700 3200 6050 3200
Text Label 6050 2800 2    50   ~ 0
~RESET
Wire Wire Line
	5700 3500 6050 3500
Text Label 6050 3400 2    50   ~ 0
~IRQ9
Text Label 6050 3500 2    50   ~ 0
~IRQ11
Text Label 6050 3000 2    50   ~ 0
~RD
Text Label 6050 3300 2    50   ~ 0
~IRQ4
Text Label 6050 2700 2    50   ~ 0
A15
Text Label 6050 2600 2    50   ~ 0
A13
Text Label 6050 2500 2    50   ~ 0
A11
Text Label 6050 2400 2    50   ~ 0
A9
Text Label 6050 2300 2    50   ~ 0
A7
Text Label 6050 2200 2    50   ~ 0
A5
Text Label 6050 2100 2    50   ~ 0
A3
Text Label 6050 2000 2    50   ~ 0
A1
Text Label 6050 1900 2    50   ~ 0
D7
Text Label 6050 1800 2    50   ~ 0
D5
Text Label 6050 1700 2    50   ~ 0
D3
Text Label 6050 1600 2    50   ~ 0
D1
Wire Bus Line
	4750 5750 6150 5750
Wire Bus Line
	3100 5750 4750 5750
Connection ~ 4750 5750
Wire Bus Line
	4650 5600 6250 5600
Wire Bus Line
	2000 5600 4650 5600
Connection ~ 4650 5600
Wire Bus Line
	6350 5400 4550 5400
Wire Bus Line
	4550 5400 2000 5400
Connection ~ 4550 5400
Wire Wire Line
	3200 7000 4200 7000
Text HLabel 4200 7000 2    50   Output ~ 0
BE
Entry Wire Line
	3100 6900 3200 7000
Wire Wire Line
	3000 7000 2000 7000
Entry Wire Line
	3000 7000 3100 6900
Text HLabel 2000 7000 0    50   Input ~ 0
~ML
Wire Wire Line
	3000 7100 2000 7100
Entry Wire Line
	3000 7100 3100 7000
Text HLabel 2000 7100 0    50   Input ~ 0
~VP
Text Label 4850 2000 0    50   ~ 0
A0
Wire Wire Line
	5200 3800 4850 3800
Wire Wire Line
	6050 3800 5700 3800
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J15
U 1 1 61F5F78D
P 8000 2300
F 0 "J15" H 8050 3417 50  0000 C CNN
F 1 "BB BUS" H 8050 3326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8000 2300 50  0001 C CNN
F 3 "~" H 8000 2300 50  0001 C CNN
	1    8000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1400 8300 1400
$Comp
L power:+5V #PWR?
U 1 1 61F7D086
P 8350 1250
AR Path="/61D87109/61F7D086" Ref="#PWR?"  Part="1" 
AR Path="/61F7D086" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61F7D086" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 8350 1100 50  0001 C CNN
F 1 "+5V" H 8365 1423 50  0000 C CNN
F 2 "" H 8350 1250 50  0001 C CNN
F 3 "" H 8350 1250 50  0001 C CNN
	1    8350 1250
	1    0    0    -1  
$EndComp
Entry Wire Line
	8750 2300 8850 2400
Entry Wire Line
	8750 2200 8850 2300
Entry Wire Line
	8750 2100 8850 2200
Entry Wire Line
	8750 2000 8850 2100
Entry Wire Line
	8850 1900 8950 2000
Entry Wire Line
	8850 1800 8950 1900
Entry Wire Line
	8850 1700 8950 1800
Entry Wire Line
	8850 1600 8950 1700
Wire Wire Line
	8300 1900 8850 1900
Wire Wire Line
	8300 1800 8850 1800
Wire Wire Line
	8300 1700 8850 1700
Wire Wire Line
	8300 1600 8850 1600
Wire Wire Line
	8300 2300 8750 2300
Wire Wire Line
	8300 2200 8750 2200
Wire Wire Line
	8300 2100 8750 2100
Wire Wire Line
	8300 2000 8750 2000
Text Label 8650 2300 2    50   ~ 0
A7
Text Label 8650 2200 2    50   ~ 0
A5
Text Label 8650 2100 2    50   ~ 0
A3
Text Label 8650 2000 2    50   ~ 0
A1
Text Label 8650 1900 2    50   ~ 0
D7
Text Label 8650 1800 2    50   ~ 0
D5
Text Label 8650 1700 2    50   ~ 0
D3
Text Label 8650 1600 2    50   ~ 0
D1
Entry Wire Line
	7350 2300 7250 2400
Entry Wire Line
	7350 2200 7250 2300
Entry Wire Line
	7350 2100 7250 2200
Entry Wire Line
	7350 2000 7250 2100
Entry Wire Line
	7250 1900 7150 2000
Entry Wire Line
	7250 1800 7150 1900
Entry Wire Line
	7250 1700 7150 1800
Entry Wire Line
	7250 1600 7150 1700
Wire Wire Line
	7250 1900 7800 1900
Wire Wire Line
	7250 1800 7800 1800
Wire Wire Line
	7250 1700 7800 1700
Wire Wire Line
	7250 1600 7800 1600
Wire Wire Line
	7350 2300 7800 2300
Wire Wire Line
	7350 2200 7800 2200
Wire Wire Line
	7350 2100 7800 2100
Wire Wire Line
	7350 2000 7800 2000
Text Label 7450 2300 0    50   ~ 0
A6
Text Label 7450 2200 0    50   ~ 0
A4
Text Label 7450 2100 0    50   ~ 0
A2
Text Label 7450 1900 0    50   ~ 0
D6
Text Label 7450 1800 0    50   ~ 0
D4
Text Label 7450 1700 0    50   ~ 0
D2
Text Label 7450 1600 0    50   ~ 0
D0
Text Label 7450 2000 0    50   ~ 0
A0
Wire Wire Line
	7800 1400 7750 1400
$Comp
L power:GND #PWR0103
U 1 1 61FA1BCA
P 7750 1250
F 0 "#PWR0103" H 7750 1000 50  0001 C CNN
F 1 "GND" H 7755 1077 50  0000 C CNN
F 2 "" H 7750 1250 50  0001 C CNN
F 3 "" H 7750 1250 50  0001 C CNN
	1    7750 1250
	-1   0    0    1   
$EndComp
Text Label 7450 2400 0    50   ~ 0
~IOREQ
Text Label 8650 2400 2    50   ~ 0
~RESET
Text Label 7450 2500 0    50   ~ 0
CLK
Text Label 8650 2500 2    50   ~ 0
~CLK
Text Label 7450 2600 0    50   ~ 0
R~W
Text Label 8650 2600 2    50   ~ 0
~RD
Text Label 7450 2700 0    50   ~ 0
~WR
Text Label 8650 2700 2    50   ~ 0
~NMI
Text Label 7450 2800 0    50   ~ 0
~IRQ0
Text Label 8650 2800 2    50   ~ 0
~IRQ1
Text Label 7450 2900 0    50   ~ 0
~IRQ8
Text Label 7450 3100 0    50   ~ 0
RDY
Text Label 8650 3100 2    50   ~ 0
SYNC
Text Label 7450 3000 0    50   ~ 0
ACLK
Text Label 8650 3000 2    50   ~ 0
HCLK
Wire Wire Line
	8300 3300 8350 3300
Wire Wire Line
	7800 3300 7750 3300
$Comp
L power:+5V #PWR?
U 1 1 61FADA98
P 7750 3450
AR Path="/61D87109/61FADA98" Ref="#PWR?"  Part="1" 
AR Path="/61FADA98" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61FADA98" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7750 3300 50  0001 C CNN
F 1 "+5V" H 7765 3623 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3200 7750 3200
$Comp
L power:GND #PWR0109
U 1 1 61FC143D
P 8350 3450
F 0 "#PWR0109" H 8350 3200 50  0001 C CNN
F 1 "GND" H 8355 3277 50  0000 C CNN
F 2 "" H 8350 3450 50  0001 C CNN
F 3 "" H 8350 3450 50  0001 C CNN
	1    8350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2400 7450 2400
Wire Wire Line
	7800 2500 7450 2500
Wire Wire Line
	7800 2600 7450 2600
Wire Wire Line
	7800 2700 7450 2700
Wire Wire Line
	7800 2800 7450 2800
Wire Wire Line
	7800 2900 7450 2900
Wire Wire Line
	7800 3000 7450 3000
Wire Wire Line
	7800 3100 7450 3100
Wire Wire Line
	8300 2400 8650 2400
Wire Wire Line
	8300 2500 8650 2500
Wire Wire Line
	8300 2600 8650 2600
Wire Wire Line
	8300 2700 8650 2700
Wire Wire Line
	8300 2800 8650 2800
Wire Wire Line
	8300 2900 8650 2900
Wire Wire Line
	8300 3000 8650 3000
Wire Wire Line
	8300 3100 8650 3100
Entry Wire Line
	7450 2700 7350 2800
Entry Wire Line
	7450 2600 7350 2700
Entry Wire Line
	7450 2500 7350 2600
Entry Wire Line
	7450 2400 7350 2500
Entry Wire Line
	7450 3100 7350 3200
Entry Wire Line
	7450 3000 7350 3100
Entry Wire Line
	7450 2900 7350 3000
Entry Wire Line
	7450 2800 7350 2900
Entry Wire Line
	8650 2700 8750 2800
Entry Wire Line
	8650 2600 8750 2700
Entry Wire Line
	8650 2500 8750 2600
Entry Wire Line
	8650 2400 8750 2500
Entry Wire Line
	8650 3100 8750 3200
Entry Wire Line
	8650 3000 8750 3100
Entry Wire Line
	8650 2900 8750 3000
Entry Wire Line
	8650 2800 8750 2900
Wire Bus Line
	7350 5750 8750 5750
Wire Bus Line
	7350 5750 6150 5750
Connection ~ 7350 5750
Connection ~ 6150 5750
Wire Bus Line
	6250 5600 7250 5600
Connection ~ 6250 5600
Connection ~ 7250 5600
Wire Bus Line
	7250 5600 8850 5600
Wire Bus Line
	8950 5400 7150 5400
Connection ~ 6350 5400
Connection ~ 7150 5400
Wire Bus Line
	7150 5400 6350 5400
Entry Wire Line
	4850 4000 4750 4100
Entry Wire Line
	4850 3900 4750 4000
Entry Wire Line
	6050 3900 6150 4000
Wire Wire Line
	6050 3900 5700 3900
Wire Wire Line
	5200 3900 4850 3900
Wire Wire Line
	5200 4000 4850 4000
Text Label 4850 3900 0    50   ~ 0
BE
Text Label 6050 3900 2    50   ~ 0
~ML
Text Label 4850 4000 0    50   ~ 0
~VP
Wire Wire Line
	8300 3200 8350 3200
Wire Wire Line
	8350 3200 8350 3300
Connection ~ 8350 3300
Wire Wire Line
	8350 3300 8350 3450
Wire Wire Line
	7750 3200 7750 3300
Connection ~ 7750 3300
Wire Wire Line
	7750 3300 7750 3450
Wire Wire Line
	7800 1500 7750 1500
Wire Wire Line
	7750 1500 7750 1400
Connection ~ 7750 1400
Wire Wire Line
	7750 1400 7750 1250
Wire Wire Line
	8300 1500 8350 1500
Wire Wire Line
	8350 1500 8350 1400
Connection ~ 8350 1400
Wire Wire Line
	8350 1400 8350 1250
Wire Wire Line
	5200 1400 5150 1400
$Comp
L power:GND #PWR0101
U 1 1 61FD9B4F
P 5150 1250
F 0 "#PWR0101" H 5150 1000 50  0001 C CNN
F 1 "GND" H 5155 1077 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "" H 5150 1250 50  0001 C CNN
	1    5150 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 1500 5150 1500
Wire Wire Line
	5150 1500 5150 1400
Connection ~ 5150 1400
Wire Wire Line
	5150 1400 5150 1250
Wire Wire Line
	5750 1400 5700 1400
$Comp
L power:+5V #PWR?
U 1 1 61FE5B66
P 5750 1250
AR Path="/61D87109/61FE5B66" Ref="#PWR?"  Part="1" 
AR Path="/61FE5B66" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/61FE5B66" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5750 1100 50  0001 C CNN
F 1 "+5V" H 5765 1423 50  0000 C CNN
F 2 "" H 5750 1250 50  0001 C CNN
F 3 "" H 5750 1250 50  0001 C CNN
	1    5750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1500 5750 1500
Wire Wire Line
	5750 1500 5750 1400
Connection ~ 5750 1400
Wire Wire Line
	5750 1400 5750 1250
Wire Wire Line
	5700 4500 5750 4500
$Comp
L power:GND #PWR0113
U 1 1 6201DCC8
P 5750 4650
F 0 "#PWR0113" H 5750 4400 50  0001 C CNN
F 1 "GND" H 5755 4477 50  0000 C CNN
F 2 "" H 5750 4650 50  0001 C CNN
F 3 "" H 5750 4650 50  0001 C CNN
	1    5750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4400 5750 4400
Wire Wire Line
	5750 4400 5750 4500
Connection ~ 5750 4500
Wire Wire Line
	5750 4500 5750 4650
Wire Wire Line
	5200 4500 5150 4500
$Comp
L power:+5V #PWR?
U 1 1 62029947
P 5150 4650
AR Path="/61D87109/62029947" Ref="#PWR?"  Part="1" 
AR Path="/62029947" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/62029947" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5150 4500 50  0001 C CNN
F 1 "+5V" H 5165 4823 50  0000 C CNN
F 2 "" H 5150 4650 50  0001 C CNN
F 3 "" H 5150 4650 50  0001 C CNN
	1    5150 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4400 5150 4400
Wire Wire Line
	5150 4400 5150 4500
Connection ~ 5150 4500
Wire Wire Line
	5150 4500 5150 4650
Entry Wire Line
	3200 6900 3100 6800
NoConn ~ 4850 3600
NoConn ~ 6050 3600
Text Label 8650 2900 2    50   ~ 0
~IRQ9
Wire Bus Line
	6350 1700 6350 5400
Wire Bus Line
	4550 1700 4550 5400
Wire Bus Line
	8950 1700 8950 5400
Wire Bus Line
	8850 2100 8850 5600
Wire Bus Line
	7150 1700 7150 5400
Wire Bus Line
	7250 2100 7250 5600
Wire Bus Line
	8750 2500 8750 5750
Wire Bus Line
	6250 2100 6250 5600
Wire Bus Line
	4650 2100 4650 5600
Wire Bus Line
	7350 2500 7350 5750
Wire Bus Line
	3100 5750 3100 7000
Wire Bus Line
	6150 2900 6150 5750
Wire Bus Line
	4750 2900 4750 5750
$EndSCHEMATC
