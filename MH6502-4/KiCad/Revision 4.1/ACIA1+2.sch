EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 9 11
Title "ACIA - DTE & DCE"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4750 2000 5150 2000
Wire Wire Line
	4700 2100 5150 2100
Wire Wire Line
	4800 2200 5150 2200
Wire Wire Line
	4650 2300 5150 2300
$Comp
L power:+5V #PWR?
U 1 1 6283DA2F
P 5650 1100
AR Path="/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/6283DA2F" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6283DA2F" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 5650 950 50  0001 C CNN
F 1 "+5V" H 5665 1273 50  0000 C CNN
F 2 "" H 5650 1100 50  0001 C CNN
F 3 "" H 5650 1100 50  0001 C CNN
	1    5650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 625E1346
P 5100 2650
AR Path="/625E1346" Ref="C?"  Part="1" 
AR Path="/5F86B098/625E1346" Ref="C?"  Part="1" 
AR Path="/61696C53/625E1346" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/625E1346" Ref="C?"  Part="1" 
AR Path="/61C02D3D/625E1346" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E1346" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E1346" Ref="C?"  Part="1" 
AR Path="/61C8316E/625E1346" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E1346" Ref="C?"  Part="1" 
AR Path="/6233755F/625E1346" Ref="C?"  Part="1" 
AR Path="/61E1D503/625E1346" Ref="C27"  Part="1" 
F 0 "C27" H 5200 2600 50  0000 L CNN
F 1 "1µF" H 5200 2700 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5100 2650 50  0001 C CNN
F 3 "~" H 5100 2650 50  0001 C CNN
	1    5100 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 2800 5100 2850
$Comp
L power:GND #PWR?
U 1 1 625E1347
P 5100 2850
AR Path="/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/625E1347" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E1347" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 5100 2600 50  0001 C CNN
F 1 "GND" H 5105 2677 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Text Notes 5100 2200 2    50   ~ 0
RX
Text Notes 5100 2000 2    50   ~ 0
TX
Text Notes 6200 2200 0    50   ~ 0
RX
Text Notes 6200 2000 0    50   ~ 0
TX
Wire Wire Line
	6900 2000 6150 2000
$Comp
L Device:CP1 C?
U 1 1 6283DA1F
P 6200 1300
AR Path="/6283DA1F" Ref="C?"  Part="1" 
AR Path="/5F86B098/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61696C53/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61C02D3D/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61C8316E/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/6283DA1F" Ref="C?"  Part="1" 
AR Path="/6233755F/6283DA1F" Ref="C?"  Part="1" 
AR Path="/61E1D503/6283DA1F" Ref="C24"  Part="1" 
F 0 "C24" H 6085 1254 50  0000 R CNN
F 1 "1µF" H 6085 1345 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6200 1300 50  0001 C CNN
F 3 "~" H 6200 1300 50  0001 C CNN
	1    6200 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 61E367C3
P 6200 1750
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
AR Path="/61E1D503/61E367C3" Ref="C26"  Part="1" 
F 0 "C26" H 6315 1796 50  0000 L CNN
F 1 "1µF" H 6315 1705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6200 1750 50  0001 C CNN
F 3 "~" H 6200 1750 50  0001 C CNN
	1    6200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1600 6150 1600
Wire Wire Line
	6200 1900 6150 1900
$Comp
L Device:CP1 C?
U 1 1 6283DA30
P 5100 1750
AR Path="/6283DA30" Ref="C?"  Part="1" 
AR Path="/5F86B098/6283DA30" Ref="C?"  Part="1" 
AR Path="/61696C53/6283DA30" Ref="C?"  Part="1" 
AR Path="/61A0C5E5/6283DA30" Ref="C?"  Part="1" 
AR Path="/61C02D3D/6283DA30" Ref="C?"  Part="1" 
AR Path="/61D74077/61FBDBE3/6283DA30" Ref="C?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/6283DA30" Ref="C?"  Part="1" 
AR Path="/61C8316E/6283DA30" Ref="C?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/6283DA30" Ref="C?"  Part="1" 
AR Path="/6233755F/6283DA30" Ref="C?"  Part="1" 
AR Path="/61E1D503/6283DA30" Ref="C25"  Part="1" 
F 0 "C25" H 5000 1800 50  0000 R CNN
F 1 "1µF" H 5000 1700 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5100 1750 50  0001 C CNN
F 3 "~" H 5100 1750 50  0001 C CNN
	1    5100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1600 5150 1600
Wire Wire Line
	5100 1900 5150 1900
Text Notes 5100 2100 2    50   ~ 0
RTS
Text Notes 5100 2300 2    50   ~ 0
CTS
Wire Wire Line
	6150 2100 6500 2100
Text Notes 6200 2100 0    50   ~ 0
RTS
Text Notes 6200 2300 0    50   ~ 0
CTS
Wire Wire Line
	5650 1100 5650 1150
Wire Wire Line
	5650 1150 6200 1150
Connection ~ 5650 1150
Wire Wire Line
	5650 1150 5650 1200
Wire Wire Line
	5100 2800 5650 2800
Wire Wire Line
	6150 2200 6900 2200
Wire Wire Line
	6400 2300 6150 2300
Wire Wire Line
	3850 1300 4050 1300
Wire Wire Line
	3850 1400 4050 1400
NoConn ~ 6900 2500
NoConn ~ 6900 1800
Wire Wire Line
	6800 2600 6900 2600
Wire Wire Line
	6800 2700 6800 2600
$Comp
L power:GND #PWR?
U 1 1 625E1349
P 6800 2700
AR Path="/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/625E1349" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E1349" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 6800 2450 50  0001 C CNN
F 1 "GND" H 6805 2527 50  0000 C CNN
F 2 "" H 6800 2700 50  0001 C CNN
F 3 "" H 6800 2700 50  0001 C CNN
	1    6800 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J?
U 1 1 63F5D6B4
P 7200 2200
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
AR Path="/61E1D503/63F5D6B4" Ref="J12"  Part="1" 
F 0 "J12" H 7050 2950 50  0000 L CNN
F 1 "DCE-F" H 7050 2850 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 7200 2200 50  0001 C CNN
F 3 " ~" H 7200 2200 50  0001 C CNN
	1    7200 2200
	1    0    0    -1  
$EndComp
NoConn ~ 6900 2400
NoConn ~ 6900 1900
Wire Wire Line
	6400 2400 6400 2300
Wire Wire Line
	6600 2400 6400 2400
NoConn ~ 3850 1600
Wire Wire Line
	2800 1400 2850 1400
Wire Wire Line
	2800 1500 2800 1400
Wire Wire Line
	2850 1500 2800 1500
Wire Wire Line
	6600 2400 6600 2100
Wire Wire Line
	6600 2100 6900 2100
Wire Wire Line
	6500 2300 6900 2300
Wire Wire Line
	6500 2300 6500 2100
Wire Wire Line
	4650 1800 4650 2300
Wire Wire Line
	4700 1900 4700 2100
Wire Wire Line
	3850 1900 4700 1900
Wire Wire Line
	3850 1800 4650 1800
Wire Wire Line
	4750 1700 3850 1700
Wire Wire Line
	4750 1700 4750 2000
$Comp
L power:+5V #PWR?
U 1 1 6283DA32
P 2800 1200
AR Path="/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/6283DA32" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6283DA32" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 2800 1050 50  0001 C CNN
F 1 "+5V" H 2815 1373 50  0000 C CNN
F 2 "" H 2800 1200 50  0001 C CNN
F 3 "" H 2800 1200 50  0001 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
Text Label 4050 1300 2    50   ~ 0
A1
Text Label 4050 1400 2    50   ~ 0
A0
NoConn ~ 3850 2200
NoConn ~ 3850 2000
$Comp
L power:GND #PWR?
U 1 1 625E134A
P 3950 2700
AR Path="/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/625E134A" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E134A" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 3950 2450 50  0001 C CNN
F 1 "GND" H 3955 2527 50  0000 C CNN
F 2 "" H 3950 2700 50  0001 C CNN
F 3 "" H 3950 2700 50  0001 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
Text Label 2650 2300 0    50   ~ 0
D7
Text Label 2650 2200 0    50   ~ 0
D6
Text Label 2650 2100 0    50   ~ 0
D5
Text Label 2650 2000 0    50   ~ 0
D4
Text Label 2650 1900 0    50   ~ 0
D3
Text Label 2650 1800 0    50   ~ 0
D2
Text Label 2650 1700 0    50   ~ 0
D1
Text Label 2650 1600 0    50   ~ 0
D0
Text Notes 6850 2000 2    50   ~ 0
TX
Text Notes 6850 2100 2    50   ~ 0
CTS
Text Notes 6850 2200 2    50   ~ 0
RX
Text Notes 6850 2300 2    50   ~ 0
RTS
$Comp
L power:+5V #PWR?
U 1 1 625E134B
P 4500 2400
AR Path="/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/625E134B" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E134B" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 4500 2250 50  0001 C CNN
F 1 "+5V" H 4500 2575 50  0000 C CNN
F 2 "" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2400 4500 2500
Text Notes 3000 2800 0    50   ~ 0
DCE to Computer
Connection ~ 5100 2800
Entry Wire Line
	2450 2400 2550 2300
Entry Wire Line
	2450 2300 2550 2200
Entry Wire Line
	2450 2200 2550 2100
Entry Wire Line
	2450 2100 2550 2000
Entry Wire Line
	2450 2000 2550 1900
Entry Wire Line
	2450 1900 2550 1800
Entry Wire Line
	2450 1800 2550 1700
Entry Wire Line
	2450 1700 2550 1600
Entry Wire Line
	4150 1200 4050 1300
Entry Wire Line
	4150 1300 4050 1400
Wire Wire Line
	3850 2500 4500 2500
Wire Wire Line
	5150 2450 5100 2450
Wire Wire Line
	5100 2450 5100 2500
Wire Wire Line
	3850 2400 4200 2400
Wire Wire Line
	2550 1600 2850 1600
Wire Wire Line
	2550 1700 2850 1700
Wire Wire Line
	2550 1800 2850 1800
Wire Wire Line
	2550 1900 2850 1900
Wire Wire Line
	2550 2000 2850 2000
Wire Wire Line
	2550 2100 2850 2100
Wire Wire Line
	2550 2200 2850 2200
Wire Wire Line
	2550 2300 2850 2300
Wire Bus Line
	2450 3100 1750 3100
Wire Wire Line
	2300 1400 2800 1400
Connection ~ 2800 1400
Wire Wire Line
	3950 1500 3950 1600
Wire Wire Line
	3950 1600 4800 1600
Wire Wire Line
	3950 1500 3850 1500
Wire Wire Line
	4800 1600 4800 2200
Wire Wire Line
	4200 2400 4200 3000
Wire Wire Line
	4400 2100 3850 2100
Wire Wire Line
	4300 2300 3850 2300
Wire Wire Line
	1750 3000 4200 3000
Wire Bus Line
	4150 850  2150 850 
Wire Wire Line
	2850 2400 2600 2400
Wire Wire Line
	2600 2400 2600 3300
Text Label 3950 2300 0    50   ~ 0
~RESET
Text Label 3950 2400 0    50   ~ 0
~ACIA1
Wire Wire Line
	4300 2300 4300 3200
Wire Wire Line
	4300 3200 1850 3200
Wire Wire Line
	2300 1400 2300 1500
Wire Wire Line
	6200 1450 6150 1450
$Comp
L power:GND #PWR?
U 1 1 625E134C
P 2300 1500
AR Path="/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/6233755F/625E134C" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E134C" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 2300 1250 50  0001 C CNN
F 1 "GND" H 2305 1327 50  0000 C CNN
F 2 "" H 2300 1500 50  0001 C CNN
F 3 "" H 2300 1500 50  0001 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
Text Label 2650 2600 0    50   ~ 0
R~W
Text Label 2650 2500 0    50   ~ 0
CLK
Wire Wire Line
	2800 1200 2800 1300
Wire Wire Line
	2800 1300 2850 1300
Wire Wire Line
	3950 2700 3950 2600
Wire Wire Line
	3950 2600 3850 2600
Text Label 2650 2400 0    47   ~ 0
~IRQ5
$Comp
L 0_Fred's_Local_Library:W65C51N U?
U 1 1 625E134D
P 3350 4750
AR Path="/625E134D" Ref="U?"  Part="1" 
AR Path="/61E1D503/625E134D" Ref="U14"  Part="1" 
F 0 "U14" H 3350 3763 60  0000 C CNN
F 1 "R65C51P2" H 3350 3869 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 3350 4550 60  0001 C CNN
F 3 "" H 3350 4550 60  0001 C CNN
	1    3350 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 4200 6150 4200
Text Label 2650 5150 0    47   ~ 0
~IQR6
Wire Wire Line
	3950 5350 3850 5350
Wire Wire Line
	3950 5450 3950 5350
Wire Wire Line
	2800 4050 2850 4050
Wire Wire Line
	2800 3950 2800 4050
Text Label 2650 5250 0    50   ~ 0
CLK
Text Label 2650 5350 0    50   ~ 0
R~W
$Comp
L power:GND #PWR?
U 1 1 625E1355
P 2300 4250
AR Path="/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/62337561/625E1355" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E1355" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 2300 4000 50  0001 C CNN
F 1 "GND" H 2305 4077 50  0000 C CNN
F 2 "" H 2300 4250 50  0001 C CNN
F 3 "" H 2300 4250 50  0001 C CNN
	1    2300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4150 2300 4250
Text Label 3950 4850 0    50   ~ 0
ACLK
Text Label 3950 5150 0    50   ~ 0
~ACIA2
Text Label 3950 5050 0    50   ~ 0
~RESET
Wire Wire Line
	2600 5850 7350 5850
Wire Wire Line
	2600 5150 2600 5850
Wire Bus Line
	4150 3650 2150 3650
Wire Wire Line
	4300 5050 3850 5050
Wire Wire Line
	4400 4850 4300 4850
Wire Wire Line
	4200 5150 4200 5750
Wire Wire Line
	3900 4250 3850 4250
Wire Wire Line
	3900 4250 3900 4350
Connection ~ 2800 4150
Wire Wire Line
	2550 5050 2850 5050
Wire Wire Line
	2550 4950 2850 4950
Wire Wire Line
	2550 4850 2850 4850
Wire Wire Line
	2550 4750 2850 4750
Wire Wire Line
	2550 4650 2850 4650
Wire Wire Line
	2550 4550 2850 4550
Wire Wire Line
	2550 4450 2850 4450
Wire Wire Line
	2550 4350 2850 4350
Wire Wire Line
	3850 5250 4500 5250
Entry Wire Line
	4150 4050 4050 4150
Entry Wire Line
	4150 3950 4050 4050
Entry Wire Line
	2450 4950 2550 5050
Entry Wire Line
	2450 4850 2550 4950
Entry Wire Line
	2450 4750 2550 4850
Entry Wire Line
	2450 4650 2550 4750
Entry Wire Line
	2450 4550 2550 4650
Entry Wire Line
	2450 4450 2550 4550
Entry Wire Line
	2450 4350 2550 4450
Entry Wire Line
	2450 4250 2550 4350
Text Notes 3000 5550 0    50   ~ 0
DTE to Peripheral
Wire Wire Line
	4500 5300 4500 5250
$Comp
L power:+5V #PWR?
U 1 1 625E1354
P 4500 5300
AR Path="/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/5F86B098/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61696C53/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61A0C5E5/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61C02D3D/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE3/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62980B83/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61C8316E/63F2C0E8/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/62337561/625E1354" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E1354" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 4500 5150 50  0001 C CNN
F 1 "+5V" H 4500 5475 50  0000 C CNN
F 2 "" H 4500 5300 50  0001 C CNN
F 3 "" H 4500 5300 50  0001 C CNN
	1    4500 5300
	-1   0    0    1   
$EndComp
Text Label 2650 4350 0    50   ~ 0
D0
Text Label 2650 4450 0    50   ~ 0
D1
Text Label 2650 4550 0    50   ~ 0
D2
Text Label 2650 4650 0    50   ~ 0
D3
Text Label 2650 4750 0    50   ~ 0
D4
Text Label 2650 4850 0    50   ~ 0
D5
Text Label 2650 4950 0    50   ~ 0
D6
Text Label 2650 5050 0    50   ~ 0
D7
$Comp
L power:GND #PWR?
U 1 1 622B1C60
P 3950 5450
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
AR Path="/61E1D503/622B1C60" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 3950 5200 50  0001 C CNN
F 1 "GND" H 3955 5277 50  0000 C CNN
F 2 "" H 3950 5450 50  0001 C CNN
F 3 "" H 3950 5450 50  0001 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
NoConn ~ 3850 4750
NoConn ~ 3850 4950
Text Label 4050 4150 2    50   ~ 0
A0
Text Label 4050 4050 2    50   ~ 0
A1
$Comp
L power:+5V #PWR?
U 1 1 622B1C56
P 2800 3950
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
AR Path="/61E1D503/622B1C56" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 2800 3800 50  0001 C CNN
F 1 "+5V" H 2815 4123 50  0000 C CNN
F 2 "" H 2800 3950 50  0001 C CNN
F 3 "" H 2800 3950 50  0001 C CNN
	1    2800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4450 3850 4450
Wire Wire Line
	3850 4550 4450 4550
Wire Wire Line
	3850 4650 4650 4650
Wire Wire Line
	2850 4250 2800 4250
Wire Wire Line
	2800 4250 2800 4150
Wire Wire Line
	2800 4150 2850 4150
NoConn ~ 3850 4350
Wire Wire Line
	3850 4050 4050 4050
Wire Wire Line
	4800 4350 4800 4950
Wire Wire Line
	6500 4750 6500 4950
Wire Wire Line
	6150 4750 6500 4750
Wire Wire Line
	6500 4950 6900 4950
Wire Wire Line
	6550 4650 6550 4750
Wire Wire Line
	6450 4650 6550 4650
Wire Wire Line
	6550 4750 6900 4750
Wire Wire Line
	5100 5550 5100 5600
Wire Wire Line
	6450 4950 6450 4650
Wire Wire Line
	6150 4950 6450 4950
Wire Wire Line
	6150 4850 6900 4850
Wire Wire Line
	6150 5050 6900 5050
Connection ~ 5100 5550
Text Notes 6850 4850 2    50   ~ 0
RTS
Text Notes 6850 4750 2    50   ~ 0
RX
Text Notes 6850 5050 2    50   ~ 0
CTS
Text Notes 6850 4950 2    50   ~ 0
TX
Wire Wire Line
	4700 4450 4700 4750
Wire Wire Line
	4650 4650 4650 4850
NoConn ~ 6900 4650
NoConn ~ 6900 5150
$Comp
L power:GND #PWR?
U 1 1 63FC71BD
P 6800 5450
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
AR Path="/61E1D503/63FC71BD" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 6800 5200 50  0001 C CNN
F 1 "GND" H 6805 5277 50  0000 C CNN
F 2 "" H 6800 5450 50  0001 C CNN
F 3 "" H 6800 5450 50  0001 C CNN
	1    6800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5450 6800 5350
Wire Wire Line
	6800 5350 6900 5350
NoConn ~ 6900 4550
NoConn ~ 6900 5250
Wire Wire Line
	5100 5200 5150 5200
Wire Wire Line
	5100 5550 5650 5550
Wire Wire Line
	5650 3900 5650 3950
Connection ~ 5650 3900
Wire Wire Line
	5650 3900 6200 3900
Wire Wire Line
	5650 3850 5650 3900
Text Notes 6200 5050 0    50   ~ 0
CTS
Text Notes 6200 4850 0    50   ~ 0
RTS
Text Notes 5100 5050 2    50   ~ 0
CTS
Wire Wire Line
	5100 4650 5150 4650
Wire Wire Line
	5100 4350 5150 4350
$Comp
L Device:CP1 C?
U 1 1 63FC719E
P 5100 4500
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
AR Path="/61E1D503/63FC719E" Ref="C29"  Part="1" 
F 0 "C29" H 5000 4550 50  0000 R CNN
F 1 "1µF" H 5000 4450 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5100 4500 50  0001 C CNN
F 3 "~" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4650 6150 4650
Wire Wire Line
	6200 4350 6150 4350
$Comp
L Device:CP1 C?
U 1 1 63FC7196
P 6200 4500
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
AR Path="/61E1D503/63FC7196" Ref="C30"  Part="1" 
F 0 "C30" H 6315 4546 50  0000 L CNN
F 1 "1µF" H 6315 4455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6200 4500 50  0001 C CNN
F 3 "~" H 6200 4500 50  0001 C CNN
	1    6200 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 63FC7190
P 6200 4050
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
AR Path="/61E1D503/63FC7190" Ref="C28"  Part="1" 
F 0 "C28" H 6085 4004 50  0000 R CNN
F 1 "1µF" H 6085 4095 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6200 4050 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	-1   0    0    1   
$EndComp
Text Notes 6200 4750 0    50   ~ 0
TX
Text Notes 6200 4950 0    50   ~ 0
RX
Text Notes 5100 4950 2    50   ~ 0
RX
$Comp
L power:GND #PWR?
U 1 1 63FC7186
P 5100 5600
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
AR Path="/61E1D503/63FC7186" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 5100 5350 50  0001 C CNN
F 1 "GND" H 5105 5427 50  0000 C CNN
F 2 "" H 5100 5600 50  0001 C CNN
F 3 "" H 5100 5600 50  0001 C CNN
	1    5100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5550 5100 5500
$Comp
L Device:CP1 C?
U 1 1 63FC717F
P 5100 5350
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
AR Path="/61E1D503/63FC717F" Ref="C31"  Part="1" 
F 0 "C31" H 5200 5300 50  0000 L CNN
F 1 "1µF" H 5200 5400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5100 5350 50  0001 C CNN
F 3 "~" H 5100 5350 50  0001 C CNN
	1    5100 5350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63FC7179
P 5650 3850
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
AR Path="/61E1D503/63FC7179" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 5650 3700 50  0001 C CNN
F 1 "+5V" H 5665 4023 50  0000 C CNN
F 2 "" H 5650 3850 50  0001 C CNN
F 3 "" H 5650 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5050 5150 5050
Wire Wire Line
	4800 4950 5150 4950
Wire Wire Line
	4650 4850 5150 4850
Wire Wire Line
	4700 4750 5150 4750
Wire Wire Line
	4300 5050 4300 5950
Wire Wire Line
	4300 5950 1850 5950
Wire Wire Line
	2300 4150 2800 4150
Wire Wire Line
	3850 4150 4050 4150
Wire Wire Line
	3850 5150 4200 5150
Wire Wire Line
	2600 5150 2850 5150
$Comp
L 0_Fred's_Local_Library:MAX232 U?
U 1 1 61EBC5FF
P 5650 5150
AR Path="/61EBC5FF" Ref="U?"  Part="1" 
AR Path="/61E1D503/61EBC5FF" Ref="U15"  Part="1" 
F 0 "U15" H 5700 6300 50  0000 L CNN
F 1 "MAX232" H 5700 6200 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5700 4100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 5650 5200 50  0001 C CNN
	1    5650 5150
	1    0    0    -1  
$EndComp
Text HLabel 1750 850  0    50   Input ~ 0
A[0..15]
Text HLabel 1750 2500 0    50   Input ~ 0
CLK
Text HLabel 1750 2600 0    50   Input ~ 0
R~W
Text HLabel 1750 5750 0    50   Input ~ 0
~ACIA2
Text HLabel 1750 3100 0    50   Input ~ 0
D[0..7]
Text HLabel 1750 3200 0    50   Input ~ 0
~RESET
Wire Wire Line
	5350 6500 5350 6550
$Comp
L power:+5V #PWR?
U 1 1 61ED0040
P 5350 6500
AR Path="/61ED0040" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61ED0040" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61ED0040" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/61ED0040" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 5350 6350 50  0001 C CNN
F 1 "+5V" H 5365 6673 50  0000 C CNN
F 2 "" H 5350 6500 50  0001 C CNN
F 3 "" H 5350 6500 50  0001 C CNN
	1    5350 6500
	-1   0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 6283DA26
P 5000 6900
AR Path="/6283DA26" Ref="X?"  Part="1" 
AR Path="/60CF5668/6283DA26" Ref="X?"  Part="1" 
AR Path="/63D20D31/6283DA26" Ref="X?"  Part="1" 
AR Path="/62C3F3B9/6283DA26" Ref="X?"  Part="1" 
AR Path="/61E1D503/6283DA26" Ref="X3"  Part="1" 
F 0 "X3" H 5100 7250 50  0000 L CNN
F 1 "1.8432MHz" H 5100 7150 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 5450 6550 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 4900 6900 50  0001 C CNN
	1    5000 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 6900 5350 6900
$Comp
L power:GND #PWR?
U 1 1 625E1350
P 5000 7250
AR Path="/625E1350" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/625E1350" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/625E1350" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/625E1350" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/625E1350" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 5000 7000 50  0001 C CNN
F 1 "GND" H 5005 7077 50  0000 C CNN
F 2 "" H 5000 7250 50  0001 C CNN
F 3 "" H 5000 7250 50  0001 C CNN
	1    5000 7250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 7200 5000 7250
Connection ~ 5350 6550
Wire Wire Line
	5000 6550 5350 6550
Wire Wire Line
	5000 6550 5000 6600
Wire Wire Line
	5350 6550 5350 6900
Text HLabel 7350 5850 2    50   Output ~ 0
~IRQ6
$Comp
L 0_Fred's_Local_Library:W65C51N U?
U 1 1 6283DA28
P 3350 2000
AR Path="/6283DA28" Ref="U?"  Part="1" 
AR Path="/61E1D503/6283DA28" Ref="U12"  Part="1" 
F 0 "U12" H 3350 1013 60  0000 C CNN
F 1 "R65C51P2" H 3350 1119 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 3350 1800 60  0001 C CNN
F 3 "" H 3350 1800 60  0001 C CNN
	1    3350 2000
	-1   0    0    1   
$EndComp
$Comp
L 0_Fred's_Local_Library:MAX232 U?
U 1 1 6283DA29
P 5650 2400
AR Path="/6283DA29" Ref="U?"  Part="1" 
AR Path="/61E1D503/6283DA29" Ref="U13"  Part="1" 
F 0 "U13" H 5700 3550 50  0000 L CNN
F 1 "MAX232" H 5700 3450 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5700 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 5650 2450 50  0001 C CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2500 2050 2500
Wire Wire Line
	1750 2600 1950 2600
Wire Wire Line
	4400 2100 4400 3400
Wire Bus Line
	2150 3650 2150 850 
Connection ~ 2150 850 
Wire Bus Line
	2150 850  1750 850 
Wire Wire Line
	2050 5250 2850 5250
Connection ~ 2050 2500
Wire Wire Line
	2050 2500 2850 2500
Wire Wire Line
	1950 5350 2850 5350
Connection ~ 1950 2600
Wire Wire Line
	1950 2600 2850 2600
Connection ~ 2450 3100
Wire Wire Line
	1850 5950 1850 3200
Connection ~ 1850 3200
Wire Wire Line
	1850 3200 1750 3200
Wire Wire Line
	4200 5750 1750 5750
Text HLabel 1750 3000 0    50   Input ~ 0
~ACIA1
Text HLabel 7350 3300 2    50   Output ~ 0
~IRQ5
Wire Wire Line
	4400 6900 4700 6900
$Comp
L power:GND #PWR?
U 1 1 63574B4F
P 800 7600
AR Path="/5F86B098/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/63574B4F" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63574B4F" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 800 7350 50  0001 C CNN
F 1 "GND" H 805 7427 50  0000 C CNN
F 2 "" H 800 7600 50  0001 C CNN
F 3 "" H 800 7600 50  0001 C CNN
	1    800  7600
	1    0    0    -1  
$EndComp
Connection ~ 1150 7500
Connection ~ 1150 7100
Connection ~ 800  7100
Wire Wire Line
	800  7500 1150 7500
Wire Wire Line
	800  7450 800  7500
Wire Wire Line
	800  7100 1150 7100
Wire Wire Line
	800  7150 800  7100
$Comp
L Device:C C?
U 1 1 6283DA2B
P 800 7300
AR Path="/6283DA2B" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/6283DA2B" Ref="C?"  Part="1" 
AR Path="/60CF5668/6283DA2B" Ref="C?"  Part="1" 
AR Path="/63885FFC/6283DA2B" Ref="C?"  Part="1" 
AR Path="/61BE126B/6283DA2B" Ref="C?"  Part="1" 
AR Path="/61D74077/6283DA2B" Ref="C?"  Part="1" 
AR Path="/623467B9/6283DA2B" Ref="C?"  Part="1" 
AR Path="/62716C39/6283DA2B" Ref="C?"  Part="1" 
AR Path="/61E1D503/6283DA2B" Ref="C32"  Part="1" 
F 0 "C32" H 850 7400 50  0000 L CNN
F 1 "0.1µF" H 850 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 838 7150 50  0001 C CNN
F 3 "~" H 800 7300 50  0001 C CNN
	1    800  7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7000 800  7100
Wire Wire Line
	1150 7500 1500 7500
Wire Wire Line
	1500 7450 1500 7500
Wire Wire Line
	1500 7150 1500 7100
$Comp
L Device:C C?
U 1 1 6283DA2C
P 1500 7300
AR Path="/6283DA2C" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/6283DA2C" Ref="C?"  Part="1" 
AR Path="/60CF5668/6283DA2C" Ref="C?"  Part="1" 
AR Path="/63885FFC/6283DA2C" Ref="C?"  Part="1" 
AR Path="/61BE126B/6283DA2C" Ref="C?"  Part="1" 
AR Path="/61D74077/6283DA2C" Ref="C?"  Part="1" 
AR Path="/623467B9/6283DA2C" Ref="C?"  Part="1" 
AR Path="/62716C39/6283DA2C" Ref="C?"  Part="1" 
AR Path="/61E1D503/6283DA2C" Ref="C34"  Part="1" 
F 0 "C34" H 1550 7400 50  0000 L CNN
F 1 "0.1µF" H 1550 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1538 7150 50  0001 C CNN
F 3 "~" H 1500 7300 50  0001 C CNN
	1    1500 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 7450 1150 7500
Wire Wire Line
	1150 7100 1500 7100
Wire Wire Line
	1150 7150 1150 7100
$Comp
L Device:C C?
U 1 1 6283DA2D
P 1150 7300
AR Path="/6283DA2D" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/6283DA2D" Ref="C?"  Part="1" 
AR Path="/60CF5668/6283DA2D" Ref="C?"  Part="1" 
AR Path="/63885FFC/6283DA2D" Ref="C?"  Part="1" 
AR Path="/61BE126B/6283DA2D" Ref="C?"  Part="1" 
AR Path="/61D74077/6283DA2D" Ref="C?"  Part="1" 
AR Path="/623467B9/6283DA2D" Ref="C?"  Part="1" 
AR Path="/62716C39/6283DA2D" Ref="C?"  Part="1" 
AR Path="/61E1D503/6283DA2D" Ref="C33"  Part="1" 
F 0 "C33" H 1200 7400 50  0000 L CNN
F 1 "0.1µF" H 1200 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1188 7150 50  0001 C CNN
F 3 "~" H 1150 7300 50  0001 C CNN
	1    1150 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63574B75
P 800 7000
AR Path="/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/623467B9/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/62716C39/63574B75" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/63574B75" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 800 6850 50  0001 C CNN
F 1 "+5V" H 815 7173 50  0000 C CNN
F 2 "" H 800 7000 50  0001 C CNN
F 3 "" H 800 7000 50  0001 C CNN
	1    800  7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7600 800  7500
Text Notes 850  7050 0    50   ~ 0
Bypass capacitors
Connection ~ 800  7500
Wire Wire Line
	1500 7500 1850 7500
Wire Wire Line
	1850 7450 1850 7500
Wire Wire Line
	1850 7150 1850 7100
$Comp
L Device:C C?
U 1 1 63574B81
P 1850 7300
AR Path="/63574B81" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B81" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B81" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B81" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B81" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B81" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B81" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B81" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B81" Ref="C35"  Part="1" 
F 0 "C35" H 1900 7400 50  0000 L CNN
F 1 "0.1µF" H 1900 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1888 7150 50  0001 C CNN
F 3 "~" H 1850 7300 50  0001 C CNN
	1    1850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7100 1850 7100
Wire Wire Line
	1850 7500 2200 7500
Wire Wire Line
	2200 7450 2200 7500
Wire Wire Line
	2200 7150 2200 7100
$Comp
L Device:C C?
U 1 1 63574B8B
P 2200 7300
AR Path="/63574B8B" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/63574B8B" Ref="C?"  Part="1" 
AR Path="/60CF5668/63574B8B" Ref="C?"  Part="1" 
AR Path="/63885FFC/63574B8B" Ref="C?"  Part="1" 
AR Path="/61BE126B/63574B8B" Ref="C?"  Part="1" 
AR Path="/61D74077/63574B8B" Ref="C?"  Part="1" 
AR Path="/623467B9/63574B8B" Ref="C?"  Part="1" 
AR Path="/62716C39/63574B8B" Ref="C?"  Part="1" 
AR Path="/61E1D503/63574B8B" Ref="C36"  Part="1" 
F 0 "C36" H 2250 7400 50  0000 L CNN
F 1 "0.1µF" H 2250 7200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2238 7150 50  0001 C CNN
F 3 "~" H 2200 7300 50  0001 C CNN
	1    2200 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7100 2200 7100
Connection ~ 1850 7100
Connection ~ 1500 7100
Connection ~ 1500 7500
Connection ~ 1850 7500
Text Label 3950 2100 0    50   ~ 0
ACLK
$Comp
L Connector:DB9_Male J16
U 1 1 625E1351
P 7200 4950
F 0 "J16" H 7118 4258 50  0000 C CNN
F 1 "DTE-M" H 7118 4349 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 7200 4950 50  0001 C CNN
F 3 " ~" H 7200 4950 50  0001 C CNN
	1    7200 4950
	1    0    0    1   
$EndComp
Wire Wire Line
	2600 3300 7350 3300
Wire Wire Line
	2050 2500 2050 5250
Wire Wire Line
	1950 2600 1950 5350
Wire Wire Line
	4400 4850 4400 6900
$Comp
L power:+5V #PWR?
U 1 1 61EC376A
P 8800 5550
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
AR Path="/61E1D503/61EC376A" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 8800 5400 50  0001 C CNN
F 1 "+5V" H 8800 5725 50  0000 C CNN
F 2 "" H 8800 5550 50  0001 C CNN
F 3 "" H 8800 5550 50  0001 C CNN
	1    8800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5550 8800 5650
$Comp
L power:GND #PWR?
U 1 1 6206D1D7
P 9750 5100
AR Path="/63ACFEAF/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6206D1D7" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6206D1D7" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 9750 4850 50  0001 C CNN
F 1 "GND" H 9755 4927 50  0000 C CNN
F 2 "" H 9750 5100 50  0001 C CNN
F 3 "" H 9750 5100 50  0001 C CNN
	1    9750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4250 8550 4350
Wire Wire Line
	9400 4350 9750 4350
$Comp
L Connector:Mini-DIN-6 J?
U 1 1 6206D1E9
P 9100 4350
AR Path="/63ACFEAF/6206D1E9" Ref="J?"  Part="1" 
AR Path="/6395FB84/6206D1E9" Ref="J?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6206D1E9" Ref="J?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6206D1E9" Ref="J?"  Part="1" 
AR Path="/6314D1EA/6206D1E9" Ref="J?"  Part="1" 
AR Path="/624C7B02/6206D1E9" Ref="J?"  Part="1" 
AR Path="/64B1B512/6206D1E9" Ref="J?"  Part="1" 
AR Path="/61E1D503/6206D1E9" Ref="J15"  Part="1" 
F 0 "J15" H 9100 4717 50  0000 C CNN
F 1 "SERIAL TTL" H 9100 4626 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Mini-DIN_6p" H 9100 4350 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 9100 4350 50  0001 C CNN
	1    9100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4350 8550 4350
$Comp
L power:+5V #PWR?
U 1 1 6206D1F1
P 8550 4250
AR Path="/63ACFEAF/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/6395FB84/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61FBDBE5/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/629A0B9E/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/6314D1EA/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/624C7B02/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/64B1B512/6206D1F1" Ref="#PWR?"  Part="1" 
AR Path="/61E1D503/6206D1F1" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 8550 4100 50  0001 C CNN
F 1 "+5V" H 8565 4423 50  0000 C CNN
F 2 "" H 8550 4250 50  0001 C CNN
F 3 "" H 8550 4250 50  0001 C CNN
	1    8550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4350 9750 5050
Wire Wire Line
	8400 4650 9450 4650
Wire Wire Line
	9450 4650 9450 4450
Wire Wire Line
	9450 4450 9400 4450
Wire Wire Line
	8400 4850 8750 4850
Wire Wire Line
	8750 4850 8750 4450
Wire Wire Line
	8750 4450 8800 4450
Text Label 8400 4650 0    50   ~ 0
RX
Text Label 8400 4850 0    50   ~ 0
TX
Wire Wire Line
	9550 4250 9400 4250
Wire Wire Line
	8400 5050 8650 5050
Wire Wire Line
	8650 5050 8650 4250
Wire Wire Line
	8650 4250 8800 4250
Text Label 8400 4950 0    50   ~ 0
CTS
Text Label 8400 5050 0    50   ~ 0
RTS
Wire Wire Line
	9550 4950 9550 4250
Wire Wire Line
	8400 4950 9550 4950
$Comp
L Connector_Generic:Conn_01x06 J17
U 1 1 626D6493
P 9600 5650
F 0 "J17" H 9680 5642 50  0000 L CNN
F 1 "SERIAL TTL" H 9680 5551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9600 5650 50  0001 C CNN
F 3 "~" H 9600 5650 50  0001 C CNN
	1    9600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5450 9200 5450
Wire Wire Line
	9400 5550 9200 5550
Wire Wire Line
	9400 5750 9200 5750
Wire Wire Line
	9400 5850 9200 5850
Wire Wire Line
	9400 5950 9200 5950
Text Label 9200 5550 0    50   ~ 0
CTS
Text Label 9200 5750 0    50   ~ 0
TX
Text Label 9200 5850 0    50   ~ 0
RX
Text Label 9200 5950 0    50   ~ 0
RTS
Wire Wire Line
	8800 5650 9400 5650
Wire Wire Line
	9200 5050 9750 5050
Wire Wire Line
	9200 5050 9200 5450
Connection ~ 9750 5050
Wire Wire Line
	9750 5050 9750 5100
Text Label 5100 4750 2    50   ~ 0
TX
Text Label 5100 4850 2    50   ~ 0
RTS
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62691537
P 4700 4150
AR Path="/63885FFC/62691537" Ref="J?"  Part="1" 
AR Path="/61BE126B/62691537" Ref="J?"  Part="1" 
AR Path="/62691537" Ref="J?"  Part="1" 
AR Path="/61D74077/62691537" Ref="J?"  Part="1" 
AR Path="/621D2996/62691537" Ref="J?"  Part="1" 
AR Path="/636AFA21/62691537" Ref="J?"  Part="1" 
AR Path="/61E1D503/62691537" Ref="J14"  Part="1" 
F 0 "J14" V 4900 4100 50  0000 C CNN
F 1 "RX" V 4800 4100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 4150 50  0001 C CNN
F 3 "~" H 4700 4150 50  0001 C CNN
	1    4700 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 4350 4700 4350
Wire Wire Line
	4300 3400 4400 3400
Connection ~ 4300 4850
Wire Wire Line
	4300 4850 3850 4850
Wire Wire Line
	4300 3400 4300 4850
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 626F7931
P 4450 4050
AR Path="/63885FFC/626F7931" Ref="J?"  Part="1" 
AR Path="/61BE126B/626F7931" Ref="J?"  Part="1" 
AR Path="/626F7931" Ref="J?"  Part="1" 
AR Path="/61D74077/626F7931" Ref="J?"  Part="1" 
AR Path="/621D2996/626F7931" Ref="J?"  Part="1" 
AR Path="/636AFA21/626F7931" Ref="J?"  Part="1" 
AR Path="/61E1D503/626F7931" Ref="J13"  Part="1" 
F 0 "J13" V 4650 4000 50  0000 C CNN
F 1 "CTS" V 4550 4000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4450 4050 50  0001 C CNN
F 3 "~" H 4450 4050 50  0001 C CNN
	1    4450 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 4250 4450 4550
Wire Wire Line
	4550 4250 4550 5050
Text Label 3950 4350 0    50   ~ 0
RX
Text Label 3950 4550 0    50   ~ 0
CTS
Text Label 3950 4450 0    50   ~ 0
TX
Text Label 3950 4650 0    50   ~ 0
RTS
Wire Bus Line
	4150 3650 4150 4050
Wire Bus Line
	4150 850  4150 1300
Wire Bus Line
	2450 1700 2450 3100
Wire Bus Line
	2450 3100 2450 4950
$EndSCHEMATC
