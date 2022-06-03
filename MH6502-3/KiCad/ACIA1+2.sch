EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 11
Title "ACIA - DTE & DCE"
Date "2022-01-22"
Rev "3"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4000 2050 4400 2050
Wire Wire Line
	3950 2150 4400 2150
Wire Wire Line
	4050 2250 4400 2250
Wire Wire Line
	3900 2350 4400 2350
$Comp
L power:+5V #PWR?
U 1 1 63F5D667
P 4900 1150
AR Path="/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/63F5D667" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63F5D667" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 4900 1000 50  0001 C CNN
F 1 "+5V" H 4915 1323 50  0000 C CNN
F 2 "" H 4900 1150 50  0001 C CNN
F 3 "" H 4900 1150 50  0001 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 61E367C0
P 4350 2700
AR Path="/61E367C0" Ref="C?"  Part="1" 
AR Path="/5F86B098/61E367C0" Ref="C?"  Part="1" 
AR Path="/61696C53/61E367C0" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/61E367C0" Ref="C?"  Part="1" 
AR Path="/61C02D3D/61E367C0" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367C0" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367C0" Ref="C?"  Part="1" 
AR Path="/61C8316E/61E367C0" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367C0" Ref="C?"  Part="1" 
AR Path="/6233755F/61E367C0" Ref="C?"  Part="1" 
AR Path="/61E1D503/61E367C0" Ref="C18"  Part="1" 
F 0 "C18" H 4450 2650 50  0000 L CNN
F 1 "1µF" H 4450 2750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4350 2700 50  0001 C CNN
F 3 "~" H 4350 2700 50  0001 C CNN
	1    4350 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 2850 4350 2900
$Comp
L power:GND #PWR?
U 1 1 61E367C1
P 4350 2900
AR Path="/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61E367C1" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61E367C1" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 4350 2650 50  0001 C CNN
F 1 "GND" H 4355 2727 50  0000 C CNN
F 2 "" H 4350 2900 50  0001 C CNN
F 3 "" H 4350 2900 50  0001 C CNN
	1    4350 2900
	1    0    0    -1  
$EndComp
Text Notes 4350 2250 2    50   ~ 0
RX
Text Notes 4350 2050 2    50   ~ 0
TX
Text Notes 5450 2250 0    50   ~ 0
RX
Text Notes 5450 2050 0    50   ~ 0
TX
Wire Wire Line
	6150 2050 5400 2050
$Comp
L Device:CP1 C?
U 1 1 61E367C2
P 5450 1350
AR Path="/61E367C2" Ref="C?"  Part="1" 
AR Path="/5F86B098/61E367C2" Ref="C?"  Part="1" 
AR Path="/61696C53/61E367C2" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/61E367C2" Ref="C?"  Part="1" 
AR Path="/61C02D3D/61E367C2" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367C2" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367C2" Ref="C?"  Part="1" 
AR Path="/61C8316E/61E367C2" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367C2" Ref="C?"  Part="1" 
AR Path="/6233755F/61E367C2" Ref="C?"  Part="1" 
AR Path="/61E1D503/61E367C2" Ref="C15"  Part="1" 
F 0 "C15" H 5335 1304 50  0000 R CNN
F 1 "1µF" H 5335 1395 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5450 1350 50  0001 C CNN
F 3 "~" H 5450 1350 50  0001 C CNN
	1    5450 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 61E367C3
P 5450 1800
AR Path="/61E367C3" Ref="C?"  Part="1" 
AR Path="/5F86B098/61E367C3" Ref="C?"  Part="1" 
AR Path="/61696C53/61E367C3" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/61E367C3" Ref="C?"  Part="1" 
AR Path="/61C02D3D/61E367C3" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367C3" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367C3" Ref="C?"  Part="1" 
AR Path="/61C8316E/61E367C3" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367C3" Ref="C?"  Part="1" 
AR Path="/6233755F/61E367C3" Ref="C?"  Part="1" 
AR Path="/61E1D503/61E367C3" Ref="C17"  Part="1" 
F 0 "C17" H 5565 1846 50  0000 L CNN
F 1 "1µF" H 5565 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5450 1800 50  0001 C CNN
F 3 "~" H 5450 1800 50  0001 C CNN
	1    5450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1650 5400 1650
Wire Wire Line
	5450 1950 5400 1950
$Comp
L Device:CP1 C?
U 1 1 63F5D68D
P 4350 1800
AR Path="/63F5D68D" Ref="C?"  Part="1" 
AR Path="/5F86B098/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61696C53/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61C02D3D/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/63F5D68D" Ref="C?"  Part="1" 
AR Path="/6233755F/63F5D68D" Ref="C?"  Part="1" 
AR Path="/61E1D503/63F5D68D" Ref="C16"  Part="1" 
F 0 "C16" H 4250 1850 50  0000 R CNN
F 1 "1µF" H 4250 1750 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4350 1800 50  0001 C CNN
F 3 "~" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1650 4400 1650
Wire Wire Line
	4350 1950 4400 1950
Text Notes 4350 2150 2    50   ~ 0
RTS
Text Notes 4350 2350 2    50   ~ 0
CTS
Wire Wire Line
	5400 2150 5750 2150
Text Notes 5450 2150 0    50   ~ 0
RTS
Text Notes 5450 2350 0    50   ~ 0
CTS
Wire Wire Line
	4900 1150 4900 1200
Wire Wire Line
	4900 1200 5450 1200
Connection ~ 4900 1200
Wire Wire Line
	4900 1200 4900 1250
Wire Wire Line
	4350 2850 4900 2850
Wire Wire Line
	5400 2250 6150 2250
Wire Wire Line
	5650 2350 5400 2350
Wire Wire Line
	3100 1350 3300 1350
Wire Wire Line
	3100 1450 3300 1450
NoConn ~ 6150 2550
NoConn ~ 6150 1850
Wire Wire Line
	6050 2650 6150 2650
Wire Wire Line
	6050 2750 6050 2650
$Comp
L power:GND #PWR?
U 1 1 61E367C6
P 6050 2750
AR Path="/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61E367C6" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61E367C6" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 6050 2500 50  0001 C CNN
F 1 "GND" H 6055 2577 50  0000 C CNN
F 2 "" H 6050 2750 50  0001 C CNN
F 3 "" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J?
U 1 1 63F5D6B4
P 6450 2250
AR Path="/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/5F86B098/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61696C53/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61A0C5E5/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61C02D3D/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61C8316E/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/6233755F/63F5D6B4" Ref="J?"  Part="1" 
AR Path="/61E1D503/63F5D6B4" Ref="J6"  Part="1" 
F 0 "J6" H 6300 3000 50  0000 L CNN
F 1 "DCE-F" H 6300 2900 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 6450 2250 50  0001 C CNN
F 3 " ~" H 6450 2250 50  0001 C CNN
	1    6450 2250
	1    0    0    -1  
$EndComp
NoConn ~ 6150 2450
NoConn ~ 6150 1950
Wire Wire Line
	5650 2450 5650 2350
Wire Wire Line
	5850 2450 5650 2450
NoConn ~ 3100 1650
Wire Wire Line
	2050 1450 2100 1450
Wire Wire Line
	2050 1550 2050 1450
Wire Wire Line
	2100 1550 2050 1550
Wire Wire Line
	5850 2450 5850 2150
Wire Wire Line
	5850 2150 6150 2150
Wire Wire Line
	5750 2350 6150 2350
Wire Wire Line
	5750 2350 5750 2150
Wire Wire Line
	3900 1850 3900 2350
Wire Wire Line
	3950 1950 3950 2150
Wire Wire Line
	3100 1950 3950 1950
Wire Wire Line
	3100 1850 3900 1850
Wire Wire Line
	4000 1750 3100 1750
Wire Wire Line
	4000 1750 4000 2050
$Comp
L power:+5V #PWR?
U 1 1 63F5D6D4
P 2050 1250
AR Path="/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/63F5D6D4" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63F5D6D4" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 2050 1100 50  0001 C CNN
F 1 "+5V" H 2065 1423 50  0000 C CNN
F 2 "" H 2050 1250 50  0001 C CNN
F 3 "" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
Text Label 3300 1350 2    50   ~ 0
A1
Text Label 3300 1450 2    50   ~ 0
A0
NoConn ~ 3100 2250
NoConn ~ 3100 2050
$Comp
L power:GND #PWR?
U 1 1 61E367CA
P 3200 2750
AR Path="/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61E367CA" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61E367CA" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 3200 2500 50  0001 C CNN
F 1 "GND" H 3205 2577 50  0000 C CNN
F 2 "" H 3200 2750 50  0001 C CNN
F 3 "" H 3200 2750 50  0001 C CNN
	1    3200 2750
	1    0    0    -1  
$EndComp
Text Label 1900 2350 0    50   ~ 0
D7
Text Label 1900 2250 0    50   ~ 0
D6
Text Label 1900 2150 0    50   ~ 0
D5
Text Label 1900 2050 0    50   ~ 0
D4
Text Label 1900 1950 0    50   ~ 0
D3
Text Label 1900 1850 0    50   ~ 0
D2
Text Label 1900 1750 0    50   ~ 0
D1
Text Label 1900 1650 0    50   ~ 0
D0
Text Notes 6100 2050 2    50   ~ 0
TX
Text Notes 6100 2150 2    50   ~ 0
CTS
Text Notes 6100 2250 2    50   ~ 0
RX
Text Notes 6100 2350 2    50   ~ 0
RTS
$Comp
L power:+5V #PWR?
U 1 1 61E367CC
P 3750 2450
AR Path="/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61E367CC" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61E367CC" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 3750 2300 50  0001 C CNN
F 1 "+5V" H 3750 2625 50  0000 C CNN
F 2 "" H 3750 2450 50  0001 C CNN
F 3 "" H 3750 2450 50  0001 C CNN
	1    3750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2450 3750 2550
Text Notes 2250 2850 0    50   ~ 0
DCE to Computer
Connection ~ 4350 2850
Entry Wire Line
	1700 2450 1800 2350
Entry Wire Line
	1700 2350 1800 2250
Entry Wire Line
	1700 2250 1800 2150
Entry Wire Line
	1700 2150 1800 2050
Entry Wire Line
	1700 2050 1800 1950
Entry Wire Line
	1700 1950 1800 1850
Entry Wire Line
	1700 1850 1800 1750
Entry Wire Line
	1700 1750 1800 1650
Entry Wire Line
	3400 1250 3300 1350
Entry Wire Line
	3400 1350 3300 1450
Wire Wire Line
	3100 2550 3750 2550
Wire Wire Line
	4400 2500 4350 2500
Wire Wire Line
	4350 2500 4350 2550
Wire Wire Line
	3100 2450 3450 2450
Wire Wire Line
	1800 1650 2100 1650
Wire Wire Line
	1800 1750 2100 1750
Wire Wire Line
	1800 1850 2100 1850
Wire Wire Line
	1800 1950 2100 1950
Wire Wire Line
	1800 2050 2100 2050
Wire Wire Line
	1800 2150 2100 2150
Wire Wire Line
	1800 2250 2100 2250
Wire Wire Line
	1800 2350 2100 2350
Wire Bus Line
	1700 3150 1000 3150
Wire Wire Line
	1550 1450 2050 1450
Connection ~ 2050 1450
Wire Wire Line
	3200 1550 3200 1650
Wire Wire Line
	3200 1650 4050 1650
Wire Wire Line
	3200 1550 3100 1550
Wire Wire Line
	4050 1650 4050 2250
Wire Wire Line
	3450 2450 3450 3050
Wire Wire Line
	3650 2150 3100 2150
Wire Wire Line
	3550 2350 3100 2350
Wire Wire Line
	1000 3050 3450 3050
Wire Bus Line
	3400 900  1400 900 
Wire Wire Line
	2100 2450 1850 2450
Wire Wire Line
	1850 2450 1850 3350
Text Label 3200 2350 0    50   ~ 0
~RESET
Text Label 3200 2450 0    50   ~ 0
~ACIA1
Wire Wire Line
	3550 2350 3550 3250
Wire Wire Line
	3550 3250 1100 3250
Wire Wire Line
	1550 1450 1550 1550
Wire Wire Line
	5450 1500 5400 1500
$Comp
L power:GND #PWR?
U 1 1 61E367D0
P 1550 1550
AR Path="/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61E367D0" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61E367D0" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 1550 1300 50  0001 C CNN
F 1 "GND" H 1555 1377 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
Text Label 1900 2650 0    50   ~ 0
R~W
Text Label 1900 2550 0    50   ~ 0
CLK
Wire Wire Line
	2050 1250 2050 1350
Wire Wire Line
	2050 1350 2100 1350
Wire Wire Line
	3200 2750 3200 2650
Wire Wire Line
	3200 2650 3100 2650
Text Label 1900 2450 0    47   ~ 0
~IRQ5
$Comp
L 0_Fred's_Local_Library:W65C51N U?
U 1 1 61E3A01D
P 2600 4800
AR Path="/61E3A01D" Ref="U?"  Part="1" 
AR Path="/61E1D503/61E3A01D" Ref="U12"  Part="1" 
F 0 "U12" H 2600 3813 60  0000 C CNN
F 1 "R65C51P2" H 2600 3919 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 2600 4600 60  0001 C CNN
F 3 "" H 2600 4600 60  0001 C CNN
	1    2600 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 4250 5400 4250
Text Label 1900 5200 0    47   ~ 0
~IQR6
Wire Wire Line
	3200 5400 3100 5400
Wire Wire Line
	3200 5500 3200 5400
Wire Wire Line
	2050 4100 2100 4100
Wire Wire Line
	2050 4000 2050 4100
Text Label 1900 5300 0    50   ~ 0
CLK
Text Label 1900 5400 0    50   ~ 0
R~W
$Comp
L power:GND #PWR?
U 1 1 622B1CD3
P 1550 4300
AR Path="/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/62337561/622B1CD3" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/622B1CD3" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 1550 4050 50  0001 C CNN
F 1 "GND" H 1555 4127 50  0000 C CNN
F 2 "" H 1550 4300 50  0001 C CNN
F 3 "" H 1550 4300 50  0001 C CNN
	1    1550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4200 1550 4300
Text Label 3200 4900 0    50   ~ 0
ACLK
Text Label 3200 5200 0    50   ~ 0
~ACIA2
Text Label 3200 5100 0    50   ~ 0
~RESET
Wire Wire Line
	1850 5900 9350 5900
Wire Wire Line
	1850 5200 1850 5900
Wire Bus Line
	3400 3700 1400 3700
Wire Wire Line
	3550 5100 3100 5100
Wire Wire Line
	3650 4900 3100 4900
Wire Wire Line
	3450 5200 3450 5800
Wire Wire Line
	3200 4300 3100 4300
Wire Wire Line
	3200 4400 4050 4400
Wire Wire Line
	3200 4300 3200 4400
Connection ~ 2050 4200
Wire Wire Line
	1800 5100 2100 5100
Wire Wire Line
	1800 5000 2100 5000
Wire Wire Line
	1800 4900 2100 4900
Wire Wire Line
	1800 4800 2100 4800
Wire Wire Line
	1800 4700 2100 4700
Wire Wire Line
	1800 4600 2100 4600
Wire Wire Line
	1800 4500 2100 4500
Wire Wire Line
	1800 4400 2100 4400
Wire Wire Line
	3100 5300 3750 5300
Entry Wire Line
	3400 4100 3300 4200
Entry Wire Line
	3400 4000 3300 4100
Entry Wire Line
	1700 5000 1800 5100
Entry Wire Line
	1700 4900 1800 5000
Entry Wire Line
	1700 4800 1800 4900
Entry Wire Line
	1700 4700 1800 4800
Entry Wire Line
	1700 4600 1800 4700
Entry Wire Line
	1700 4500 1800 4600
Entry Wire Line
	1700 4400 1800 4500
Entry Wire Line
	1700 4300 1800 4400
Text Notes 2250 5600 0    50   ~ 0
DTE to Peripheral
Wire Wire Line
	3750 5200 3750 5300
$Comp
L power:+5V #PWR?
U 1 1 622B1C78
P 3750 5200
AR Path="/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/62337561/622B1C78" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/622B1C78" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 3750 5050 50  0001 C CNN
F 1 "+5V" H 3750 5375 50  0000 C CNN
F 2 "" H 3750 5200 50  0001 C CNN
F 3 "" H 3750 5200 50  0001 C CNN
	1    3750 5200
	1    0    0    -1  
$EndComp
Text Label 1900 4400 0    50   ~ 0
D0
Text Label 1900 4500 0    50   ~ 0
D1
Text Label 1900 4600 0    50   ~ 0
D2
Text Label 1900 4700 0    50   ~ 0
D3
Text Label 1900 4800 0    50   ~ 0
D4
Text Label 1900 4900 0    50   ~ 0
D5
Text Label 1900 5000 0    50   ~ 0
D6
Text Label 1900 5100 0    50   ~ 0
D7
$Comp
L power:GND #PWR?
U 1 1 622B1C60
P 3200 5500
AR Path="/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/62337561/622B1C60" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/622B1C60" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 3200 5250 50  0001 C CNN
F 1 "GND" H 3205 5327 50  0000 C CNN
F 2 "" H 3200 5500 50  0001 C CNN
F 3 "" H 3200 5500 50  0001 C CNN
	1    3200 5500
	1    0    0    -1  
$EndComp
NoConn ~ 3100 4800
NoConn ~ 3100 5000
Text Label 3300 4200 2    50   ~ 0
A0
Text Label 3300 4100 2    50   ~ 0
A1
$Comp
L power:+5V #PWR?
U 1 1 622B1C56
P 2050 4000
AR Path="/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/62337561/622B1C56" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/622B1C56" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 2050 3850 50  0001 C CNN
F 1 "+5V" H 2065 4173 50  0000 C CNN
F 2 "" H 2050 4000 50  0001 C CNN
F 3 "" H 2050 4000 50  0001 C CNN
	1    2050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4500 3100 4500
Wire Wire Line
	3100 4600 3900 4600
Wire Wire Line
	3100 4700 3950 4700
Wire Wire Line
	2100 4300 2050 4300
Wire Wire Line
	2050 4300 2050 4200
Wire Wire Line
	2050 4200 2100 4200
NoConn ~ 3100 4400
Wire Wire Line
	3100 4100 3300 4100
Wire Wire Line
	4050 4400 4050 5000
Wire Wire Line
	5750 4800 5750 5000
Wire Wire Line
	5400 4800 5750 4800
Wire Wire Line
	5750 5000 6150 5000
Wire Wire Line
	5800 4700 5800 4800
Wire Wire Line
	5700 4700 5800 4700
Wire Wire Line
	5800 4800 6150 4800
Wire Wire Line
	4350 5600 4350 5650
Wire Wire Line
	5700 5000 5700 4700
Wire Wire Line
	5400 5000 5700 5000
Wire Wire Line
	5400 4900 6150 4900
Wire Wire Line
	5400 5100 6150 5100
Connection ~ 4350 5600
Text Notes 6100 4900 2    50   ~ 0
RTS
Text Notes 6100 4800 2    50   ~ 0
RX
Text Notes 6100 5100 2    50   ~ 0
CTS
Text Notes 6100 5000 2    50   ~ 0
TX
Wire Wire Line
	4000 4500 4000 4800
Wire Wire Line
	3950 4700 3950 4900
Wire Wire Line
	3900 4600 3900 5100
NoConn ~ 6150 4700
NoConn ~ 6150 5200
$Comp
L power:GND #PWR?
U 1 1 63FC71BD
P 6050 5500
AR Path="/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/62337561/63FC71BD" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63FC71BD" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 6050 5250 50  0001 C CNN
F 1 "GND" H 6055 5327 50  0000 C CNN
F 2 "" H 6050 5500 50  0001 C CNN
F 3 "" H 6050 5500 50  0001 C CNN
	1    6050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5500 6050 5400
Wire Wire Line
	6050 5400 6150 5400
NoConn ~ 6150 4600
NoConn ~ 6150 5300
Wire Wire Line
	4350 5250 4400 5250
Wire Wire Line
	4350 5600 4900 5600
Wire Wire Line
	4900 3950 4900 4000
Connection ~ 4900 3950
Wire Wire Line
	4900 3950 5450 3950
Wire Wire Line
	4900 3900 4900 3950
Text Notes 5450 5100 0    50   ~ 0
CTS
Text Notes 5450 4900 0    50   ~ 0
RTS
Text Notes 4350 5100 2    50   ~ 0
CTS
Text Notes 4350 4900 2    50   ~ 0
RTS
Wire Wire Line
	4350 4700 4400 4700
Wire Wire Line
	4350 4400 4400 4400
$Comp
L Device:CP1 C?
U 1 1 63FC719E
P 4350 4550
AR Path="/63FC719E" Ref="C?"  Part="1" 
AR Path="/5F86B098/63FC719E" Ref="C?"  Part="1" 
AR Path="/61696C53/63FC719E" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/63FC719E" Ref="C?"  Part="1" 
AR Path="/61C02D3D/63FC719E" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC719E" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC719E" Ref="C?"  Part="1" 
AR Path="/61C8316E/63FC719E" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC719E" Ref="C?"  Part="1" 
AR Path="/62337561/63FC719E" Ref="C?"  Part="1" 
AR Path="/61E1D503/63FC719E" Ref="C20"  Part="1" 
F 0 "C20" H 4250 4600 50  0000 R CNN
F 1 "1µF" H 4250 4500 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4350 4550 50  0001 C CNN
F 3 "~" H 4350 4550 50  0001 C CNN
	1    4350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4700 5400 4700
Wire Wire Line
	5450 4400 5400 4400
$Comp
L Device:CP1 C?
U 1 1 63FC7196
P 5450 4550
AR Path="/63FC7196" Ref="C?"  Part="1" 
AR Path="/5F86B098/63FC7196" Ref="C?"  Part="1" 
AR Path="/61696C53/63FC7196" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/63FC7196" Ref="C?"  Part="1" 
AR Path="/61C02D3D/63FC7196" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC7196" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC7196" Ref="C?"  Part="1" 
AR Path="/61C8316E/63FC7196" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC7196" Ref="C?"  Part="1" 
AR Path="/62337561/63FC7196" Ref="C?"  Part="1" 
AR Path="/61E1D503/63FC7196" Ref="C21"  Part="1" 
F 0 "C21" H 5565 4596 50  0000 L CNN
F 1 "1µF" H 5565 4505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5450 4550 50  0001 C CNN
F 3 "~" H 5450 4550 50  0001 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 63FC7190
P 5450 4100
AR Path="/63FC7190" Ref="C?"  Part="1" 
AR Path="/5F86B098/63FC7190" Ref="C?"  Part="1" 
AR Path="/61696C53/63FC7190" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/63FC7190" Ref="C?"  Part="1" 
AR Path="/61C02D3D/63FC7190" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC7190" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC7190" Ref="C?"  Part="1" 
AR Path="/61C8316E/63FC7190" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC7190" Ref="C?"  Part="1" 
AR Path="/62337561/63FC7190" Ref="C?"  Part="1" 
AR Path="/61E1D503/63FC7190" Ref="C19"  Part="1" 
F 0 "C19" H 5335 4054 50  0000 R CNN
F 1 "1µF" H 5335 4145 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5450 4100 50  0001 C CNN
F 3 "~" H 5450 4100 50  0001 C CNN
	1    5450 4100
	-1   0    0    1   
$EndComp
Text Notes 5450 4800 0    50   ~ 0
TX
Text Notes 5450 5000 0    50   ~ 0
RX
Text Notes 4350 4800 2    50   ~ 0
TX
Text Notes 4350 5000 2    50   ~ 0
RX
$Comp
L power:GND #PWR?
U 1 1 63FC7186
P 4350 5650
AR Path="/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/62337561/63FC7186" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63FC7186" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 4350 5400 50  0001 C CNN
F 1 "GND" H 4355 5477 50  0000 C CNN
F 2 "" H 4350 5650 50  0001 C CNN
F 3 "" H 4350 5650 50  0001 C CNN
	1    4350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5600 4350 5550
$Comp
L Device:CP1 C?
U 1 1 63FC717F
P 4350 5400
AR Path="/63FC717F" Ref="C?"  Part="1" 
AR Path="/5F86B098/63FC717F" Ref="C?"  Part="1" 
AR Path="/61696C53/63FC717F" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/63FC717F" Ref="C?"  Part="1" 
AR Path="/61C02D3D/63FC717F" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC717F" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC717F" Ref="C?"  Part="1" 
AR Path="/61C8316E/63FC717F" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC717F" Ref="C?"  Part="1" 
AR Path="/62337561/63FC717F" Ref="C?"  Part="1" 
AR Path="/61E1D503/63FC717F" Ref="C22"  Part="1" 
F 0 "C22" H 4450 5350 50  0000 L CNN
F 1 "1µF" H 4450 5450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4350 5400 50  0001 C CNN
F 3 "~" H 4350 5400 50  0001 C CNN
	1    4350 5400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63FC7179
P 4900 3900
AR Path="/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C103/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/62337561/63FC7179" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63FC7179" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 4900 3750 50  0001 C CNN
F 1 "+5V" H 4915 4073 50  0000 C CNN
F 2 "" H 4900 3900 50  0001 C CNN
F 3 "" H 4900 3900 50  0001 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5100 4400 5100
Wire Wire Line
	4050 5000 4400 5000
Wire Wire Line
	3950 4900 4400 4900
Wire Wire Line
	4000 4800 4400 4800
Wire Wire Line
	3550 5100 3550 6000
Wire Wire Line
	3550 6000 1100 6000
Wire Wire Line
	1550 4200 2050 4200
Wire Wire Line
	3100 4200 3300 4200
Wire Wire Line
	3100 5200 3450 5200
Wire Wire Line
	1850 5200 2100 5200
$Comp
L 0_Fred's_Local_Library:MAX232 U?
U 1 1 61EBC5FF
P 4900 5200
AR Path="/61EBC5FF" Ref="U?"  Part="1" 
AR Path="/61E1D503/61EBC5FF" Ref="U13"  Part="1" 
F 0 "U13" H 4950 6350 50  0000 L CNN
F 1 "MAX232" H 4950 6250 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 4950 4150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 4900 5250 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
Text HLabel 1000 900  0    50   Input ~ 0
A[0..15]
Text HLabel 1000 2550 0    50   Input ~ 0
CLK
Text HLabel 1000 2650 0    50   Input ~ 0
R~W
Text HLabel 1000 5800 0    50   Input ~ 0
~ACIA2
Text HLabel 1000 3150 0    50   Input ~ 0
D[0..7]
Text HLabel 1000 3250 0    50   Input ~ 0
~RESET
Wire Wire Line
	4600 6550 4600 6600
$Comp
L power:+5V #PWR?
U 1 1 61ED0040
P 4600 6550
AR Path="/61ED0040" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61ED0040" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61ED0040" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61ED0040" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 4600 6400 50  0001 C CNN
F 1 "+5V" H 4615 6723 50  0000 C CNN
F 2 "" H 4600 6550 50  0001 C CNN
F 3 "" H 4600 6550 50  0001 C CNN
	1    4600 6550
	-1   0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 61ED0047
P 4250 6950
AR Path="/61ED0047" Ref="X?"  Part="1" 
AR Path="/60CF5668/61ED0047" Ref="X?"  Part="1" 
AR Path="/63D20D31/61ED0047" Ref="X?"  Part="1" 
AR Path="/62C3F3B9/61ED0047" Ref="X?"  Part="1" 
AR Path="/61E1D503/61ED0047" Ref="X2"  Part="1" 
F 0 "X2" H 4350 7300 50  0000 L CNN
F 1 "1.8432MHz" H 4350 7200 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 4700 6600 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 4150 6950 50  0001 C CNN
	1    4250 6950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 6950 4600 6950
$Comp
L power:GND #PWR?
U 1 1 61ED004E
P 4250 7300
AR Path="/61ED004E" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61ED004E" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61ED004E" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61ED004E" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61ED004E" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 4250 7050 50  0001 C CNN
F 1 "GND" H 4255 7127 50  0000 C CNN
F 2 "" H 4250 7300 50  0001 C CNN
F 3 "" H 4250 7300 50  0001 C CNN
	1    4250 7300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 7250 4250 7300
Connection ~ 4600 6600
Wire Wire Line
	4250 6600 4600 6600
Wire Wire Line
	4250 6600 4250 6650
Wire Wire Line
	4600 6600 4600 6950
Wire Wire Line
	3650 4900 3650 6300
Text HLabel 9350 5900 2    50   Output ~ 0
~IRQ6
$Comp
L 0_Fred's_Local_Library:W65C51N U?
U 1 1 61F94B2C
P 2600 2050
AR Path="/61F94B2C" Ref="U?"  Part="1" 
AR Path="/61E1D503/61F94B2C" Ref="U9"  Part="1" 
F 0 "U9" H 2600 1063 60  0000 C CNN
F 1 "R65C51P2" H 2600 1169 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 2600 1850 60  0001 C CNN
F 3 "" H 2600 1850 60  0001 C CNN
	1    2600 2050
	-1   0    0    1   
$EndComp
$Comp
L 0_Fred's_Local_Library:MAX232 U?
U 1 1 61F95E5B
P 4900 2450
AR Path="/61F95E5B" Ref="U?"  Part="1" 
AR Path="/61E1D503/61F95E5B" Ref="U10"  Part="1" 
F 0 "U10" H 4950 3600 50  0000 L CNN
F 1 "MAX232" H 4950 3500 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 4950 1400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 4900 2500 50  0001 C CNN
	1    4900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2550 1300 2550
Wire Wire Line
	1000 2650 1200 2650
Wire Wire Line
	3650 2150 3650 4900
Connection ~ 3650 4900
Wire Bus Line
	1400 3700 1400 900 
Connection ~ 1400 900 
Wire Bus Line
	1400 900  1000 900 
Wire Wire Line
	1300 5300 1300 3450
Wire Wire Line
	1300 5300 2100 5300
Connection ~ 1300 2550
Wire Wire Line
	1300 2550 2100 2550
Wire Wire Line
	1200 5400 1200 3550
Wire Wire Line
	1200 5400 2100 5400
Connection ~ 1200 2650
Wire Wire Line
	1200 2650 2100 2650
Connection ~ 1700 3150
Wire Wire Line
	1100 6000 1100 3250
Connection ~ 1100 3250
Wire Wire Line
	1100 3250 1000 3250
Wire Wire Line
	3450 5800 1000 5800
Text HLabel 1000 3050 0    50   Input ~ 0
~ACIA1
Text HLabel 9350 4900 2    50   Output ~ 0
~IRQ5
Wire Wire Line
	3650 6300 8850 6300
Connection ~ 3650 6300
Text HLabel 9350 6300 2    50   Output ~ 0
ACLK
Wire Wire Line
	3650 6950 3950 6950
Wire Wire Line
	3650 6300 3650 6950
$Comp
L power:GND #PWR?
U 1 1 63574B4F
P 900 7500
AR Path="/5F86B098/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63574B4F" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 900 7250 50  0001 C CNN
F 1 "GND" H 905 7327 50  0000 C CNN
F 2 "" H 900 7500 50  0001 C CNN
F 3 "" H 900 7500 50  0001 C CNN
	1    900  7500
	1    0    0    -1  
$EndComp
Connection ~ 1250 7400
Connection ~ 1250 7000
Connection ~ 900  7000
Wire Wire Line
	900  7400 1250 7400
Wire Wire Line
	900  7350 900  7400
Wire Wire Line
	900  7000 1250 7000
Wire Wire Line
	900  7050 900  7000
$Comp
L Device:C C?
U 1 1 63574B5C
P 900 7200
AR Path="/63574B5C" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B5C" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B5C" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B5C" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B5C" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B5C" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B5C" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B5C" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B5C" Ref="C23"  Part="1" 
F 0 "C23" H 950 7300 50  0000 L CNN
F 1 "0.1µF" H 950 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 938 7050 50  0001 C CNN
F 3 "~" H 900 7200 50  0001 C CNN
	1    900  7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6900 900  7000
Wire Wire Line
	1250 7400 1600 7400
Wire Wire Line
	1600 7350 1600 7400
Wire Wire Line
	1600 7050 1600 7000
$Comp
L Device:C C?
U 1 1 63574B66
P 1600 7200
AR Path="/63574B66" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B66" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B66" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B66" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B66" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B66" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B66" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B66" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B66" Ref="C25"  Part="1" 
F 0 "C25" H 1650 7300 50  0000 L CNN
F 1 "0.1µF" H 1650 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1638 7050 50  0001 C CNN
F 3 "~" H 1600 7200 50  0001 C CNN
	1    1600 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7350 1250 7400
Wire Wire Line
	1250 7000 1600 7000
Wire Wire Line
	1250 7050 1250 7000
$Comp
L Device:C C?
U 1 1 63574B6F
P 1250 7200
AR Path="/63574B6F" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B6F" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B6F" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B6F" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B6F" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B6F" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B6F" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B6F" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B6F" Ref="C24"  Part="1" 
F 0 "C24" H 1300 7300 50  0000 L CNN
F 1 "0.1µF" H 1300 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1288 7050 50  0001 C CNN
F 3 "~" H 1250 7200 50  0001 C CNN
	1    1250 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63574B75
P 900 6900
AR Path="/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63574B75" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 900 6750 50  0001 C CNN
F 1 "+5V" H 915 7073 50  0000 C CNN
F 2 "" H 900 6900 50  0001 C CNN
F 3 "" H 900 6900 50  0001 C CNN
	1    900  6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7500 900  7400
Text Notes 950  6950 0    50   ~ 0
Bypass capacitors
Connection ~ 900  7400
Wire Wire Line
	1600 7400 1950 7400
Wire Wire Line
	1950 7350 1950 7400
Wire Wire Line
	1950 7050 1950 7000
$Comp
L Device:C C?
U 1 1 63574B81
P 1950 7200
AR Path="/63574B81" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B81" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B81" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B81" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B81" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B81" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B81" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B81" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B81" Ref="C26"  Part="1" 
F 0 "C26" H 2000 7300 50  0000 L CNN
F 1 "0.1µF" H 2000 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1988 7050 50  0001 C CNN
F 3 "~" H 1950 7200 50  0001 C CNN
	1    1950 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7000 1950 7000
Wire Wire Line
	1950 7400 2300 7400
Wire Wire Line
	2300 7350 2300 7400
Wire Wire Line
	2300 7050 2300 7000
$Comp
L Device:C C?
U 1 1 63574B8B
P 2300 7200
AR Path="/63574B8B" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B8B" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B8B" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B8B" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B8B" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B8B" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B8B" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B8B" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B8B" Ref="C27"  Part="1" 
F 0 "C27" H 2350 7300 50  0000 L CNN
F 1 "0.1µF" H 2350 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2338 7050 50  0001 C CNN
F 3 "~" H 2300 7200 50  0001 C CNN
	1    2300 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7000 2300 7000
Connection ~ 1950 7000
Connection ~ 1600 7000
Connection ~ 1600 7400
Connection ~ 1950 7400
Text Label 3200 2150 0    50   ~ 0
ACLK
Wire Wire Line
	8350 2750 8550 2750
Wire Wire Line
	8350 2850 8550 2850
$Comp
L power:+5V #PWR?
U 1 1 61EC3752
P 7300 2650
AR Path="/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61EC3752" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61EC3752" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 7300 2500 50  0001 C CNN
F 1 "+5V" H 7315 2823 50  0000 C CNN
F 2 "" H 7300 2650 50  0001 C CNN
F 3 "" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Text Label 8550 2750 2    50   ~ 0
A1
Text Label 8550 2850 2    50   ~ 0
A0
NoConn ~ 8350 3450
$Comp
L power:GND #PWR?
U 1 1 61EC375C
P 8450 4150
AR Path="/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61EC375C" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61EC375C" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 8450 3900 50  0001 C CNN
F 1 "GND" H 8455 3977 50  0000 C CNN
F 2 "" H 8450 4150 50  0001 C CNN
F 3 "" H 8450 4150 50  0001 C CNN
	1    8450 4150
	1    0    0    -1  
$EndComp
Text Label 7150 3750 0    50   ~ 0
D7
Text Label 7150 3650 0    50   ~ 0
D6
Text Label 7150 3550 0    50   ~ 0
D5
Text Label 7150 3450 0    50   ~ 0
D4
Text Label 7150 3350 0    50   ~ 0
D3
Text Label 7150 3250 0    50   ~ 0
D2
Text Label 7150 3150 0    50   ~ 0
D1
Text Label 7150 3050 0    50   ~ 0
D0
$Comp
L power:+5V #PWR?
U 1 1 61EC376A
P 9150 3850
AR Path="/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/61EC376A" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61EC376A" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 9150 3700 50  0001 C CNN
F 1 "+5V" H 9150 4025 50  0000 C CNN
F 2 "" H 9150 3850 50  0001 C CNN
F 3 "" H 9150 3850 50  0001 C CNN
	1    9150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3850 9150 3950
Text Notes 7500 4250 0    50   ~ 0
DTE to TTL Peripheral
Entry Wire Line
	6950 3850 7050 3750
Entry Wire Line
	6950 3750 7050 3650
Entry Wire Line
	6950 3650 7050 3550
Entry Wire Line
	6950 3550 7050 3450
Entry Wire Line
	6950 3450 7050 3350
Entry Wire Line
	6950 3350 7050 3250
Entry Wire Line
	6950 3250 7050 3150
Entry Wire Line
	6950 3150 7050 3050
Entry Wire Line
	8650 2650 8550 2750
Entry Wire Line
	8650 2750 8550 2850
Wire Wire Line
	8350 3950 9150 3950
Wire Wire Line
	8350 3850 8650 3850
Wire Wire Line
	7050 3050 7350 3050
Wire Wire Line
	7050 3150 7350 3150
Wire Wire Line
	7050 3250 7350 3250
Wire Wire Line
	7050 3350 7350 3350
Wire Wire Line
	7050 3450 7350 3450
Wire Wire Line
	7050 3550 7350 3550
Wire Wire Line
	7050 3650 7350 3650
Wire Wire Line
	7050 3750 7350 3750
Wire Wire Line
	8850 3550 8350 3550
Wire Wire Line
	8750 3750 8350 3750
Wire Wire Line
	7350 3850 7100 3850
Wire Wire Line
	7100 3850 7100 4600
Text Label 8450 3750 0    50   ~ 0
~RESET
Text Label 8450 3850 0    50   ~ 0
~ACIA3
Text Label 7150 4050 0    50   ~ 0
R~W
Text Label 7150 3950 0    50   ~ 0
CLK
Wire Wire Line
	7300 2650 7300 2750
Wire Wire Line
	7300 2750 7350 2750
Wire Wire Line
	8450 4150 8450 4050
Wire Wire Line
	8450 4050 8350 4050
Text Label 7150 3850 0    47   ~ 0
~IRQ7
$Comp
L 0_Fred's_Local_Library:W65C51N U?
U 1 1 61EC37A1
P 7850 3450
AR Path="/61EC37A1" Ref="U?"  Part="1" 
AR Path="/61E1D503/61EC37A1" Ref="U11"  Part="1" 
F 0 "U11" H 7850 2463 60  0000 C CNN
F 1 "R65C51P2" H 7850 2569 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 7850 3250 60  0001 C CNN
F 3 "" H 7850 3250 60  0001 C CNN
	1    7850 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 3550 8850 6300
Text Label 8450 3550 0    50   ~ 0
ACLK
Connection ~ 3400 900 
Wire Bus Line
	1700 3150 6950 3150
Wire Wire Line
	1300 3450 6750 3450
Wire Wire Line
	6750 3450 6750 3950
Connection ~ 1300 3450
Wire Wire Line
	1300 3450 1300 2550
Wire Wire Line
	6750 3950 7350 3950
Wire Wire Line
	1200 3550 6650 3550
Wire Wire Line
	6650 3550 6650 4050
Connection ~ 1200 3550
Wire Wire Line
	1200 3550 1200 2650
Wire Wire Line
	6650 4050 7350 4050
Connection ~ 8850 6300
Wire Wire Line
	8850 6300 9350 6300
Text HLabel 1000 6100 0    50   Input ~ 0
~ACIA3
Wire Wire Line
	1000 6100 8650 6100
Wire Wire Line
	8650 3850 8650 6100
Wire Wire Line
	3550 6000 8750 6000
Wire Wire Line
	8750 3750 8750 6000
Connection ~ 3550 6000
Wire Wire Line
	7100 4600 9350 4600
Text HLabel 9350 4600 2    50   Output ~ 0
~IRQ7
$Comp
L Connector:DB9_Male J9
U 1 1 620074B4
P 6450 5000
F 0 "J9" H 6368 4308 50  0000 C CNN
F 1 "DTE-M" H 6368 4399 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 6450 5000 50  0001 C CNN
F 3 " ~" H 6450 5000 50  0001 C CNN
	1    6450 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	6850 3350 6850 4900
Wire Wire Line
	6850 4900 9350 4900
Wire Wire Line
	1850 3350 6850 3350
Wire Bus Line
	8650 900  3400 900 
Wire Wire Line
	2300 7400 2650 7400
Wire Wire Line
	2650 7350 2650 7400
Wire Wire Line
	2650 7050 2650 7000
$Comp
L Device:C C?
U 1 1 622EF512
P 2650 7200
AR Path="/622EF512" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/622EF512" Ref="C?"  Part="1" 
AR Path="/60CF5668/622EF512" Ref="C?"  Part="1" 
AR Path="/63885FFC/622EF512" Ref="C?"  Part="1" 
AR Path="/61BE126B/622EF512" Ref="C?"  Part="1" 
AR Path="/61D74077/622EF512" Ref="C?"  Part="1" 
AR Path="/623467B9/622EF512" Ref="C?"  Part="1" 
AR Path="/62716C39/622EF512" Ref="C?"  Part="1" 
AR Path="/61E1D503/622EF512" Ref="C28"  Part="1" 
F 0 "C28" H 2700 7300 50  0000 L CNN
F 1 "0.1µF" H 2700 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2688 7050 50  0001 C CNN
F 3 "~" H 2650 7200 50  0001 C CNN
	1    2650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7000 2650 7000
Connection ~ 2300 7000
Connection ~ 2300 7400
Wire Wire Line
	7350 2950 7300 2950
Wire Wire Line
	7300 2950 7300 2850
Wire Wire Line
	7300 2850 7350 2850
Wire Wire Line
	7300 2850 6850 2850
Wire Wire Line
	6850 2850 6850 2900
Connection ~ 7300 2850
$Comp
L power:GND #PWR?
U 1 1 6200E32B
P 6850 2900
AR Path="/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/6200E32B" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6200E32B" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 6850 2650 50  0001 C CNN
F 1 "GND" H 6855 2727 50  0000 C CNN
F 2 "" H 6850 2900 50  0001 C CNN
F 3 "" H 6850 2900 50  0001 C CNN
	1    6850 2900
	1    0    0    -1  
$EndComp
NoConn ~ 8350 3050
$Comp
L power:GND #PWR?
U 1 1 6206D1D7
P 10100 3400
AR Path="/63ACFEAF/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6206D1D7" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 10100 3150 50  0001 C CNN
F 1 "GND" H 10105 3227 50  0000 C CNN
F 2 "" H 10100 3400 50  0001 C CNN
F 3 "" H 10100 3400 50  0001 C CNN
	1    10100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2550 8900 2650
Wire Wire Line
	9750 2650 10100 2650
$Comp
L Connector:Mini-DIN-6 J?
U 1 1 6206D1E9
P 9450 2650
AR Path="/63ACFEAF/6206D1E9" Ref="J?"  Part="1" 
AR Path="/6395FB84/6206D1E9" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6206D1E9" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6206D1E9" Ref="J?"  Part="1" 
AR Path="/6314D1EA/6206D1E9" Ref="J?"  Part="1" 
AR Path="/624C7B02/6206D1E9" Ref="J?"  Part="1" 
AR Path="/64B1B512/6206D1E9" Ref="J?"  Part="1" 
AR Path="/61E1D503/6206D1E9" Ref="J7"  Part="1" 
F 0 "J7" H 9450 3017 50  0000 C CNN
F 1 "SERIAL TTL" H 9450 2926 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Mini-DIN_6p" H 9450 2650 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 9450 2650 50  0001 C CNN
	1    9450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2650 8900 2650
$Comp
L power:+5V #PWR?
U 1 1 6206D1F1
P 8900 2550
AR Path="/63ACFEAF/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6206D1F1" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 8900 2400 50  0001 C CNN
F 1 "+5V" H 8915 2723 50  0000 C CNN
F 2 "" H 8900 2550 50  0001 C CNN
F 3 "" H 8900 2550 50  0001 C CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2650 10100 3350
Wire Wire Line
	8350 2950 9800 2950
Wire Wire Line
	9800 2950 9800 2750
Wire Wire Line
	9800 2750 9750 2750
Wire Wire Line
	8350 3150 9100 3150
Wire Wire Line
	9100 3150 9100 2750
Wire Wire Line
	9100 2750 9150 2750
Text Label 8900 2950 2    50   ~ 0
RX
Text Label 8900 3150 2    50   ~ 0
TX
Wire Wire Line
	9900 2550 9750 2550
Wire Wire Line
	8350 3350 9000 3350
Wire Wire Line
	9000 3350 9000 2550
Wire Wire Line
	9000 2550 9150 2550
Text Label 8900 3250 2    50   ~ 0
CTS
Text Label 8900 3350 2    50   ~ 0
RTS
NoConn ~ 8350 3650
Wire Wire Line
	9900 3250 9900 2550
Wire Wire Line
	8350 3250 9900 3250
$Comp
L Connector_Generic:Conn_01x06 J8
U 1 1 626D6493
P 9950 3950
F 0 "J8" H 10030 3942 50  0000 L CNN
F 1 "SERIAL TTL" H 10030 3851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9950 3950 50  0001 C CNN
F 3 "~" H 9950 3950 50  0001 C CNN
	1    9950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3750 9550 3750
Wire Wire Line
	9750 3850 9550 3850
Wire Wire Line
	9750 4050 9550 4050
Wire Wire Line
	9750 4150 9550 4150
Wire Wire Line
	9750 4250 9550 4250
Text Label 9550 3850 0    50   ~ 0
CTS
Text Label 9550 4050 0    50   ~ 0
TX
Text Label 9550 4150 0    50   ~ 0
RX
Text Label 9550 4250 0    50   ~ 0
RTS
Wire Wire Line
	9150 3950 9750 3950
Connection ~ 9150 3950
Wire Wire Line
	9550 3350 10100 3350
Wire Wire Line
	9550 3350 9550 3750
Connection ~ 10100 3350
Wire Wire Line
	10100 3350 10100 3400
Wire Bus Line
	3400 3700 3400 4100
Wire Bus Line
	3400 900  3400 1350
Wire Bus Line
	8650 900  8650 2750
Wire Bus Line
	6950 3150 6950 3850
Wire Bus Line
	1700 1750 1700 3150
Wire Bus Line
	1700 3150 1700 5000
$EndSCHEMATC
