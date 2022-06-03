EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 11
Title "Power and Reset"
Date "2022-01-22"
Rev "3"
Comp "Frédéric Segard"
Comment1 "The Micro Hobbyist"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_Fred's_Local_Library:DS1813 RS?
U 1 1 636FD437
P 5900 1600
AR Path="/636FD437" Ref="RS?"  Part="1" 
AR Path="/62C3F3B9/636FD437" Ref="RS?"  Part="1" 
AR Path="/636AFA21/636FD437" Ref="RS1"  Part="1" 
F 0 "RS1" H 5900 1725 50  0000 C CNN
F 1 "DS1813" H 5900 1634 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 5900 1600 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1700 5500 1700
Wire Wire Line
	5500 1700 5500 1550
$Comp
L power:GND #PWR?
U 1 1 636FD446
P 5500 2650
AR Path="/636FD446" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/636FD446" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/636FD446" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5500 2400 50  0001 C CNN
F 1 "GND" H 5505 2477 50  0000 C CNN
F 2 "" H 5500 2650 50  0001 C CNN
F 3 "" H 5500 2650 50  0001 C CNN
	1    5500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2000 6300 1850
Wire Wire Line
	6300 1850 6200 1850
Wire Wire Line
	6300 2400 6300 2500
Wire Wire Line
	6300 2500 5500 2500
Wire Wire Line
	5600 2000 5500 2000
Wire Wire Line
	5500 2000 5500 2500
Connection ~ 5500 2500
Wire Wire Line
	5500 2650 5500 2500
$Comp
L power:+5V #PWR?
U 1 1 6603842F
P 5500 1550
AR Path="/6603842F" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6603842F" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6603842F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 5500 1400 50  0001 C CNN
F 1 "+5V" H 5515 1723 50  0000 C CNN
F 2 "" H 5500 1550 50  0001 C CNN
F 3 "" H 5500 1550 50  0001 C CNN
	1    5500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2350 8050 2250
$Comp
L Device:LED D?
U 1 1 6254756E
P 8050 2500
AR Path="/6254756E" Ref="D?"  Part="1" 
AR Path="/62C3F3B9/6254756E" Ref="D?"  Part="1" 
AR Path="/636AFA21/6254756E" Ref="D2"  Part="1" 
F 0 "D2" V 8089 2382 50  0000 R CNN
F 1 "RST LED" V 7998 2382 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8050 2500 50  0001 C CNN
F 3 "~" H 8050 2500 50  0001 C CNN
	1    8050 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 1850 6500 1850
Connection ~ 6300 1850
Text Notes 1200 2600 0    50   ~ 0
2.1 x 5.5mm
Wire Wire Line
	3350 1900 2900 1900
Wire Wire Line
	1950 2000 2100 2000
Wire Wire Line
	1950 2250 1950 2000
Wire Wire Line
	1750 2250 1950 2250
$Comp
L Switch:SW_SPDT SW?
U 1 1 62AB6956
P 2300 2000
AR Path="/62AB6956" Ref="SW?"  Part="1" 
AR Path="/63885FFC/62AB6956" Ref="SW?"  Part="1" 
AR Path="/61BE126B/62AB6956" Ref="SW?"  Part="1" 
AR Path="/61D74077/62AB6956" Ref="SW?"  Part="1" 
AR Path="/621D2996/62AB6956" Ref="SW?"  Part="1" 
AR Path="/636AFA21/62AB6956" Ref="SW1"  Part="1" 
F 0 "SW1" H 2300 2285 50  0000 C CNN
F 1 "POWER" H 2300 2194 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Microswitch_3mm_spacing" H 2300 2000 50  0001 C CNN
F 3 "~" H 2300 2000 50  0001 C CNN
	1    2300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 62AB6957
P 3500 1900
AR Path="/62AB6957" Ref="D?"  Part="1" 
AR Path="/63885FFC/62AB6957" Ref="D?"  Part="1" 
AR Path="/61BE126B/62AB6957" Ref="D?"  Part="1" 
AR Path="/61D74077/62AB6957" Ref="D?"  Part="1" 
AR Path="/621D2996/62AB6957" Ref="D?"  Part="1" 
AR Path="/636AFA21/62AB6957" Ref="D1"  Part="1" 
F 0 "D1" H 3500 1750 50  0000 C CNN
F 1 "PWR LED" H 3500 2050 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3500 1900 50  0001 C CNN
F 3 "~" H 3500 1900 50  0001 C CNN
	1    3500 1900
	-1   0    0    1   
$EndComp
NoConn ~ 2500 2100
$Comp
L power:GND #PWR?
U 1 1 62AB6958
P 2150 2650
AR Path="/62AB6958" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62AB6958" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AB6958" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62AB6958" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AB6958" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62AB6958" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62AB6958" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2150 2400 50  0001 C CNN
F 1 "GND" H 2155 2477 50  0000 C CNN
F 2 "" H 2150 2650 50  0001 C CNN
F 3 "" H 2150 2650 50  0001 C CNN
	1    2150 2650
	1    0    0    -1  
$EndComp
Connection ~ 2900 1900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62AB6959
P 2150 2400
AR Path="/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/5F3EA81D/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/60CF5668/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/63885FFC/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/61BE126B/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/61D74077/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/621D2996/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/636AFA21/62AB6959" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 2150 2475 50  0001 C CNN
F 1 "PWR_FLAG" V 2150 2528 50  0001 L CNN
F 2 "" H 2150 2400 50  0001 C CNN
F 3 "~" H 2150 2400 50  0001 C CNN
	1    2150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62AB695A
P 2700 1550
AR Path="/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/5F3EA81D/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/60CF5668/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/63885FFC/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/61BE126B/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/61D74077/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/621D2996/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/636AFA21/62AB695A" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2700 1625 50  0001 C CNN
F 1 "PWR_FLAG" V 2700 1678 50  0001 L CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "~" H 2700 1550 50  0001 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61E53AB3
P 2900 1300
AR Path="/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/61E53AB3" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61E53AB3" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2900 1150 50  0001 C CNN
F 1 "+5V" H 2915 1473 50  0000 C CNN
F 2 "" H 2900 1300 50  0001 C CNN
F 3 "" H 2900 1300 50  0001 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2650 2150 2450
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61E53ABB
P 2400 1350
AR Path="/63885FFC/61E53ABB" Ref="J?"  Part="1" 
AR Path="/61BE126B/61E53ABB" Ref="J?"  Part="1" 
AR Path="/61E53ABB" Ref="J?"  Part="1" 
AR Path="/61D74077/61E53ABB" Ref="J?"  Part="1" 
AR Path="/621D2996/61E53ABB" Ref="J?"  Part="1" 
AR Path="/636AFA21/61E53ABB" Ref="J1"  Part="1" 
F 0 "J1" V 2600 1300 50  0000 C CNN
F 1 "PWR SW" V 2500 1300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2400 1350 50  0001 C CNN
F 3 "~" H 2400 1350 50  0001 C CNN
	1    2400 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2000 1950 1550
Wire Wire Line
	1950 1550 2400 1550
Connection ~ 1950 2000
Wire Wire Line
	3250 1550 2900 1550
Connection ~ 2900 1550
Wire Wire Line
	2900 1550 2900 1900
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61E53ADF
P 3250 1350
AR Path="/63885FFC/61E53ADF" Ref="J?"  Part="1" 
AR Path="/61BE126B/61E53ADF" Ref="J?"  Part="1" 
AR Path="/61E53ADF" Ref="J?"  Part="1" 
AR Path="/61D74077/61E53ADF" Ref="J?"  Part="1" 
AR Path="/621D2996/61E53ADF" Ref="J?"  Part="1" 
AR Path="/636AFA21/61E53ADF" Ref="J2"  Part="1" 
F 0 "J2" V 3450 1300 50  0000 C CNN
F 1 "PWR LED" V 3350 1300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3250 1350 50  0001 C CNN
F 3 "~" H 3250 1350 50  0001 C CNN
	1    3250 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1550 2700 1550
Wire Wire Line
	2900 1300 2900 1550
Wire Wire Line
	2150 2400 2150 2450
$Comp
L Connector:Barrel_Jack J?
U 1 1 61E53B0A
P 1450 2350
AR Path="/60CF5668/61E53B0A" Ref="J?"  Part="1" 
AR Path="/61E53B0A" Ref="J?"  Part="1" 
AR Path="/63885FFC/61E53B0A" Ref="J?"  Part="1" 
AR Path="/61BE126B/61E53B0A" Ref="J?"  Part="1" 
AR Path="/61D74077/61E53B0A" Ref="J?"  Part="1" 
AR Path="/621D2996/61E53B0A" Ref="J?"  Part="1" 
AR Path="/636AFA21/61E53B0A" Ref="J4"  Part="1" 
F 0 "J4" H 1450 2650 50  0000 C CNN
F 1 "POWER IN" H 1450 2550 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1500 2310 50  0001 C CNN
F 3 "~" H 1500 2310 50  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2250 7950 2250
Text Notes 3350 2150 0    50   ~ 0
Green
$Comp
L Device:C C?
U 1 1 6229247C
P 1050 6200
AR Path="/6229247C" Ref="C?"  Part="1" 
AR Path="/63D20D31/6229247C" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/6229247C" Ref="C?"  Part="1" 
AR Path="/636AFA21/6229247C" Ref="C2"  Part="1" 
F 0 "C2" H 1165 6246 50  0000 L CNN
F 1 "0.1µF" H 1165 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1088 6050 50  0001 C CNN
F 3 "~" H 1050 6200 50  0001 C CNN
	1    1050 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62292482
P 1050 6450
AR Path="/62292482" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62292482" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62292482" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62292482" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 1050 6200 50  0001 C CNN
F 1 "GND" H 1055 6277 50  0000 C CNN
F 2 "" H 1050 6450 50  0001 C CNN
F 3 "" H 1050 6450 50  0001 C CNN
	1    1050 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62AB6964
P 1050 5950
AR Path="/62AB6964" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62AB6964" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62AB6964" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62AB6964" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 1050 5800 50  0001 C CNN
F 1 "+5V" H 1065 6123 50  0000 C CNN
F 2 "" H 1050 5950 50  0001 C CNN
F 3 "" H 1050 5950 50  0001 C CNN
	1    1050 5950
	1    0    0    -1  
$EndComp
Text Notes 1150 5950 0    50   ~ 0
Bypass capacitors
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61CD2FE3
P 8750 2400
AR Path="/63885FFC/61CD2FE3" Ref="J?"  Part="1" 
AR Path="/61BE126B/61CD2FE3" Ref="J?"  Part="1" 
AR Path="/61CD2FE3" Ref="J?"  Part="1" 
AR Path="/61D74077/61CD2FE3" Ref="J?"  Part="1" 
AR Path="/621D2996/61CD2FE3" Ref="J?"  Part="1" 
AR Path="/636AFA21/61CD2FE3" Ref="J5"  Part="1" 
F 0 "J5" H 8850 2400 50  0000 L CNN
F 1 " RST LED" H 8800 2300 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8750 2400 50  0001 C CNN
F 3 "~" H 8750 2400 50  0001 C CNN
	1    8750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2400 8550 2250
Wire Wire Line
	8550 2250 8050 2250
Connection ~ 8050 2250
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61CE43E2
P 6700 2150
AR Path="/63885FFC/61CE43E2" Ref="J?"  Part="1" 
AR Path="/61BE126B/61CE43E2" Ref="J?"  Part="1" 
AR Path="/61CE43E2" Ref="J?"  Part="1" 
AR Path="/61D74077/61CE43E2" Ref="J?"  Part="1" 
AR Path="/621D2996/61CE43E2" Ref="J?"  Part="1" 
AR Path="/636AFA21/61CE43E2" Ref="J3"  Part="1" 
F 0 "J3" H 6800 2150 50  0000 L CNN
F 1 "RST SW" H 6800 2050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6700 2150 50  0001 C CNN
F 3 "~" H 6700 2150 50  0001 C CNN
	1    6700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2150 6500 1850
Wire Wire Line
	6500 2250 6500 2500
Wire Wire Line
	6500 2500 6300 2500
Connection ~ 6300 2500
$Comp
L Switch:SW_Push SW2
U 1 1 62AB6953
P 6300 2200
F 0 "SW2" V 6250 2350 50  0000 L CNN
F 1 "RESET" V 6350 2350 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6300 2400 50  0001 C CNN
F 3 "~" H 6300 2400 50  0001 C CNN
	1    6300 2200
	0    -1   1    0   
$EndComp
Wire Wire Line
	8800 1850 7250 1850
Text HLabel 8800 1850 2    50   Output ~ 0
~RESET
Wire Wire Line
	8050 2650 8050 2800
Wire Wire Line
	3650 1900 4050 1900
Wire Wire Line
	4050 1900 4050 2000
$Comp
L Device:R_US R?
U 1 1 62A486DC
P 8050 2950
AR Path="/62A486DC" Ref="R?"  Part="1" 
AR Path="/62C3F3B9/62A486DC" Ref="R?"  Part="1" 
AR Path="/61D84C49/62A486DC" Ref="R?"  Part="1" 
AR Path="/636AFA21/62A486DC" Ref="R2"  Part="1" 
F 0 "R2" H 8150 2900 50  0000 L CNN
F 1 "330Ω" H 8150 3000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 2940 50  0001 C CNN
F 3 "~" H 8050 2950 50  0001 C CNN
	1    8050 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	8550 2500 8550 2700
Wire Wire Line
	8050 3100 8050 3200
$Comp
L power:GND #PWR?
U 1 1 62A4D4BF
P 8050 3200
AR Path="/62A4D4BF" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62A4D4BF" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62A4D4BF" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 8050 2950 50  0001 C CNN
F 1 "GND" H 8055 3027 50  0000 C CNN
F 2 "" H 8050 3200 50  0001 C CNN
F 3 "" H 8050 3200 50  0001 C CNN
	1    8050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A4D918
P 8550 2700
AR Path="/62A4D918" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62A4D918" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62A4D918" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 8550 2450 50  0001 C CNN
F 1 "GND" H 8555 2527 50  0000 C CNN
F 2 "" H 8550 2700 50  0001 C CNN
F 3 "" H 8550 2700 50  0001 C CNN
	1    8550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 62A4F544
P 4050 2150
AR Path="/62A4F544" Ref="R?"  Part="1" 
AR Path="/62C3F3B9/62A4F544" Ref="R?"  Part="1" 
AR Path="/61D84C49/62A4F544" Ref="R?"  Part="1" 
AR Path="/636AFA21/62A4F544" Ref="R1"  Part="1" 
F 0 "R1" H 4150 2100 50  0000 L CNN
F 1 "220Ω" H 4150 2200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4090 2140 50  0001 C CNN
F 3 "~" H 4050 2150 50  0001 C CNN
	1    4050 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A51A5E
P 4050 2350
AR Path="/62A51A5E" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62A51A5E" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62A51A5E" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62A51A5E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62A51A5E" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62A51A5E" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62A51A5E" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4050 2100 50  0001 C CNN
F 1 "GND" H 4055 2177 50  0000 C CNN
F 2 "" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2350 4050 2300
Wire Wire Line
	3350 1550 4050 1550
Wire Wire Line
	4050 1550 4050 1600
$Comp
L power:GND #PWR?
U 1 1 62A5573E
P 4050 1600
AR Path="/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62A5573E" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4050 1350 50  0001 C CNN
F 1 "GND" H 4055 1427 50  0000 C CNN
F 2 "" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0001 C CNN
	1    4050 1600
	1    0    0    -1  
$EndComp
Text Notes 8150 3100 0    50   ~ 0
Red
Wire Wire Line
	1050 6350 1050 6400
Wire Wire Line
	1050 5950 1050 6000
Wire Wire Line
	4900 4750 4900 3750
$Comp
L power:GND #PWR?
U 1 1 61F09070
P 3550 7450
AR Path="/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61F09070" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3550 7200 50  0001 C CNN
F 1 "GND" H 3555 7277 50  0000 C CNN
F 2 "" H 3550 7450 50  0001 C CNN
F 3 "" H 3550 7450 50  0001 C CNN
	1    3550 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61F09076
P 3550 6450
AR Path="/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61F09076" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3550 6300 50  0001 C CNN
F 1 "+5V" H 3565 6623 50  0000 C CNN
F 2 "" H 3550 6450 50  0001 C CNN
F 3 "" H 3550 6450 50  0001 C CNN
	1    3550 6450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC74 U?
U 3 1 61F0907C
P 3550 6950
AR Path="/61F0907C" Ref="U?"  Part="3" 
AR Path="/63D20D31/61F0907C" Ref="U?"  Part="3" 
AR Path="/62C3F3B9/61F0907C" Ref="U?"  Part="3" 
AR Path="/61D84C49/61F0907C" Ref="U?"  Part="3" 
AR Path="/636AFA21/61F0907C" Ref="U2"  Part="3" 
F 0 "U2" H 3600 7400 50  0000 L CNN
F 1 "74HC74" H 3600 7300 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3550 6950 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3550 6950 50  0001 C CNN
	3    3550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7450 3550 7350
Wire Wire Line
	3550 6550 3550 6450
$Comp
L 74xx:74HC74 U?
U 1 1 61F090A6
P 4400 4400
AR Path="/61F090A6" Ref="U?"  Part="1" 
AR Path="/63D20D31/61F090A6" Ref="U?"  Part="1" 
AR Path="/62C3F3B9/61F090A6" Ref="U?"  Part="1" 
AR Path="/61D84C49/61F090A6" Ref="U?"  Part="2" 
AR Path="/636AFA21/61F090A6" Ref="U2"  Part="1" 
F 0 "U2" H 4450 4750 50  0000 L CNN
F 1 "74HC74" H 4450 4650 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4400 4400 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4400 4400 50  0001 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 61F090AD
P 3600 4400
AR Path="/61F090AD" Ref="X?"  Part="1" 
AR Path="/60CF5668/61F090AD" Ref="X?"  Part="1" 
AR Path="/63D20D31/61F090AD" Ref="X?"  Part="1" 
AR Path="/62C3F3B9/61F090AD" Ref="X?"  Part="1" 
AR Path="/61D84C49/61F090AD" Ref="X?"  Part="1" 
AR Path="/636AFA21/61F090AD" Ref="X1"  Part="1" 
F 0 "X1" H 3650 4750 50  0000 L CNN
F 1 "4MHz" H 3650 4650 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 4050 4050 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 3500 4400 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3650 3250 3750
Wire Wire Line
	3600 4700 3600 4750
$Comp
L power:GND #PWR?
U 1 1 61F090B5
P 3600 4750
AR Path="/61F090B5" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61F090B5" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61F090B5" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/61F090B5" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61F090B5" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 3600 4500 50  0001 C CNN
F 1 "GND" H 3605 4577 50  0000 C CNN
F 2 "" H 3600 4750 50  0001 C CNN
F 3 "" H 3600 4750 50  0001 C CNN
	1    3600 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61F090BB
P 3250 3650
AR Path="/61F090BB" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61F090BB" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61F090BB" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/61F090BB" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61F090BB" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 3250 3500 50  0001 C CNN
F 1 "+5V" H 3265 3823 50  0000 C CNN
F 2 "" H 3250 3650 50  0001 C CNN
F 3 "" H 3250 3650 50  0001 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4400 3250 4400
Wire Wire Line
	4700 4500 4800 4500
Wire Wire Line
	4800 4500 4800 3950
Wire Wire Line
	4800 3950 4050 3950
Wire Wire Line
	4050 4300 4100 4300
Wire Wire Line
	4400 4700 4400 4750
Wire Wire Line
	4400 4750 4900 4750
Wire Wire Line
	4900 3750 4400 3750
Wire Wire Line
	4400 4100 4400 3750
Connection ~ 4400 3750
Connection ~ 3250 3750
Wire Wire Line
	3250 3750 3250 4400
Wire Wire Line
	3600 4100 3600 3750
Wire Wire Line
	3250 3750 3600 3750
Connection ~ 3600 3750
Wire Wire Line
	4050 3950 4050 4300
Wire Wire Line
	3600 3750 4400 3750
Text HLabel 6550 4850 2    50   Output ~ 0
CLK
Text HLabel 6550 5250 2    50   Output ~ 0
~CLK
$Comp
L 74xx:74HC74 U?
U 2 1 61F090D7
P 5450 4400
AR Path="/61F090D7" Ref="U?"  Part="1" 
AR Path="/63D20D31/61F090D7" Ref="U?"  Part="1" 
AR Path="/62C3F3B9/61F090D7" Ref="U?"  Part="2" 
AR Path="/61D84C49/61F090D7" Ref="U?"  Part="2" 
AR Path="/636AFA21/61F090D7" Ref="U2"  Part="2" 
F 0 "U2" H 5500 4750 50  0000 L CNN
F 1 "74HC74" H 5500 4650 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5450 4400 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5450 4400 50  0001 C CNN
	2    5450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6400 1050 6400
Wire Wire Line
	1500 6000 1050 6000
Wire Wire Line
	1500 6350 1500 6400
Wire Wire Line
	1500 6050 1500 6000
$Comp
L Device:C C?
U 1 1 61F0C0AE
P 1500 6200
AR Path="/61F0C0AE" Ref="C?"  Part="1" 
AR Path="/63D20D31/61F0C0AE" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/61F0C0AE" Ref="C?"  Part="1" 
AR Path="/61D84C49/61F0C0AE" Ref="C?"  Part="1" 
AR Path="/636AFA21/61F0C0AE" Ref="C3"  Part="1" 
F 0 "C3" H 1615 6246 50  0000 L CNN
F 1 "0.1µF" H 1615 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1538 6050 50  0001 C CNN
F 3 "~" H 1500 6200 50  0001 C CNN
	1    1500 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6400 1500 6400
Wire Wire Line
	1950 6000 1500 6000
Wire Wire Line
	1950 6350 1950 6400
Wire Wire Line
	1950 6050 1950 6000
$Comp
L Device:C C?
U 1 1 61F0F758
P 1950 6200
AR Path="/61F0F758" Ref="C?"  Part="1" 
AR Path="/63D20D31/61F0F758" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/61F0F758" Ref="C?"  Part="1" 
AR Path="/61D84C49/61F0F758" Ref="C?"  Part="1" 
AR Path="/636AFA21/61F0F758" Ref="C4"  Part="1" 
F 0 "C4" H 2065 6246 50  0000 L CNN
F 1 "0.1µF" H 2065 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1988 6050 50  0001 C CNN
F 3 "~" H 1950 6200 50  0001 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
Text Notes 1250 1050 0    100  ~ 0
POWER
Text Notes 3200 3350 0    100  ~ 0
CLOCK
Text Notes 5200 1050 0    100  ~ 0
RESET
Wire Wire Line
	2500 1900 2900 1900
Connection ~ 2700 1550
Wire Wire Line
	2700 1550 2900 1550
Connection ~ 1050 6000
Wire Wire Line
	1050 6000 1050 6050
Connection ~ 1050 6400
Wire Wire Line
	1050 6400 1050 6450
Connection ~ 1500 6400
Connection ~ 1500 6000
Wire Wire Line
	5850 3950 5100 3950
Wire Wire Line
	5100 3950 5100 4300
Wire Wire Line
	5100 4300 5150 4300
Wire Wire Line
	5450 4100 5450 3750
Wire Wire Line
	5950 3750 5450 3750
Wire Wire Line
	5950 4750 5450 4750
Wire Wire Line
	5450 4750 5450 4700
Wire Wire Line
	5950 3750 5950 4750
Wire Wire Line
	5850 4500 5750 4500
Wire Wire Line
	5850 3950 5850 4500
Text HLabel 6550 4300 2    50   Output ~ 0
HCLK
Text Notes 6550 4450 0    50   ~ 0
Half CLock (1MHz)
Text Notes 6550 5400 0    50   ~ 0
Inverted System Clock (2MHz @ 180°)
Text Notes 6550 5000 0    50   ~ 0
System Clock (2MHz)
$Comp
L Device:CP1 C?
U 1 1 62555D1D
P 2900 2250
AR Path="/61BE126B/62555D1D" Ref="C?"  Part="1" 
AR Path="/62555D1D" Ref="C?"  Part="1" 
AR Path="/61D74077/62555D1D" Ref="C?"  Part="1" 
AR Path="/621D2996/62555D1D" Ref="C?"  Part="1" 
AR Path="/636AFA21/62555D1D" Ref="C1"  Part="1" 
AR Path="/61DA6806/62555D1D" Ref="C?"  Part="1" 
F 0 "C1" H 2750 2300 50  0000 R CNN
F 1 "100µF" H 2750 2200 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 2900 2250 50  0001 C CNN
F 3 "~" H 2900 2250 50  0001 C CNN
	1    2900 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 2100 2900 1900
Wire Wire Line
	2900 2400 2900 2500
$Comp
L power:GND #PWR?
U 1 1 625622D9
P 2900 2500
AR Path="/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/625622D9" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2900 2250 50  0001 C CNN
F 1 "GND" H 2905 2327 50  0000 C CNN
F 2 "" H 2900 2500 50  0001 C CNN
F 3 "" H 2900 2500 50  0001 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
Connection ~ 2150 2450
Wire Wire Line
	1750 2450 2150 2450
$Comp
L Device:CP1 C?
U 1 1 628A1911
P 1050 7350
AR Path="/61BE126B/628A1911" Ref="C?"  Part="1" 
AR Path="/628A1911" Ref="C?"  Part="1" 
AR Path="/61D74077/628A1911" Ref="C?"  Part="1" 
AR Path="/621D2996/628A1911" Ref="C?"  Part="1" 
AR Path="/636AFA21/628A1911" Ref="C5"  Part="1" 
AR Path="/61DA6806/628A1911" Ref="C?"  Part="1" 
F 0 "C5" H 900 7400 50  0000 R CNN
F 1 "10µF" H 900 7300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1050 7350 50  0001 C CNN
F 3 "~" H 1050 7350 50  0001 C CNN
	1    1050 7350
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 628A1917
P 1550 7350
AR Path="/61BE126B/628A1917" Ref="C?"  Part="1" 
AR Path="/628A1917" Ref="C?"  Part="1" 
AR Path="/61D74077/628A1917" Ref="C?"  Part="1" 
AR Path="/621D2996/628A1917" Ref="C?"  Part="1" 
AR Path="/636AFA21/628A1917" Ref="C6"  Part="1" 
AR Path="/61DA6806/628A1917" Ref="C?"  Part="1" 
F 0 "C6" H 1400 7400 50  0000 R CNN
F 1 "10µF" H 1400 7300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1550 7350 50  0001 C CNN
F 3 "~" H 1550 7350 50  0001 C CNN
	1    1550 7350
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 628A191D
P 2050 7350
AR Path="/61BE126B/628A191D" Ref="C?"  Part="1" 
AR Path="/628A191D" Ref="C?"  Part="1" 
AR Path="/61D74077/628A191D" Ref="C?"  Part="1" 
AR Path="/621D2996/628A191D" Ref="C?"  Part="1" 
AR Path="/636AFA21/628A191D" Ref="C7"  Part="1" 
AR Path="/61DA6806/628A191D" Ref="C?"  Part="1" 
F 0 "C7" H 1900 7400 50  0000 R CNN
F 1 "10µF" H 1900 7300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2050 7350 50  0001 C CNN
F 3 "~" H 2050 7350 50  0001 C CNN
	1    2050 7350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628A1929
P 1050 7600
AR Path="/61DA6806/628A1929" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/628A1929" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1050 7350 50  0001 C CNN
F 1 "GND" H 1055 7427 50  0000 C CNN
F 2 "" H 1050 7600 50  0001 C CNN
F 3 "" H 1050 7600 50  0001 C CNN
	1    1050 7600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628A192F
P 1050 7100
AR Path="/61D87109/628A192F" Ref="#PWR?"  Part="1" 
AR Path="/628A192F" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/628A192F" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/628A192F" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 1050 6950 50  0001 C CNN
F 1 "+5V" H 1065 7273 50  0000 C CNN
F 2 "" H 1050 7100 50  0001 C CNN
F 3 "" H 1050 7100 50  0001 C CNN
	1    1050 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7500 1050 7550
Wire Wire Line
	1050 7550 1550 7550
Connection ~ 1050 7550
Wire Wire Line
	1050 7550 1050 7600
Wire Wire Line
	1050 7150 1050 7200
Wire Wire Line
	1050 7150 1050 7100
Connection ~ 1050 7150
Wire Wire Line
	1550 7150 1550 7200
Connection ~ 1550 7150
Wire Wire Line
	1550 7150 1050 7150
Wire Wire Line
	2050 7150 2050 7200
Wire Wire Line
	2050 7150 1550 7150
Wire Wire Line
	2050 7500 2050 7550
Wire Wire Line
	1550 7500 1550 7550
Connection ~ 1550 7550
Wire Wire Line
	1550 7550 2050 7550
Wire Wire Line
	5750 4300 6550 4300
Connection ~ 6500 1850
Wire Wire Line
	4700 4300 5000 4300
Wire Wire Line
	5000 4300 5000 4400
Wire Wire Line
	5000 4400 5150 4400
Wire Wire Line
	5450 3750 4900 3750
Connection ~ 5450 3750
Connection ~ 4900 3750
Wire Wire Line
	5000 4400 5000 4850
Wire Wire Line
	5000 4850 6550 4850
Connection ~ 5000 4400
Wire Wire Line
	4800 5250 6550 5250
Connection ~ 4800 4500
Wire Wire Line
	4800 4500 4800 5250
$Comp
L 74xx:74HC14 U?
U 1 1 6298F09E
P 7650 2250
AR Path="/64B1B512/6298F09E" Ref="U?"  Part="1" 
AR Path="/636AFA21/6298F09E" Ref="U1"  Part="1" 
F 0 "U1" H 7650 2500 50  0000 L CNN
F 1 "74HC14" H 7650 2400 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7650 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7650 2250 50  0001 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2250 7250 2250
Wire Wire Line
	7250 2250 7250 1850
Connection ~ 7250 1850
Wire Wire Line
	7250 1850 6500 1850
$Comp
L Device:CP1 C?
U 1 1 6204A24A
P 2550 7350
AR Path="/61BE126B/6204A24A" Ref="C?"  Part="1" 
AR Path="/6204A24A" Ref="C?"  Part="1" 
AR Path="/61D74077/6204A24A" Ref="C?"  Part="1" 
AR Path="/621D2996/6204A24A" Ref="C?"  Part="1" 
AR Path="/636AFA21/6204A24A" Ref="C8"  Part="1" 
AR Path="/61DA6806/6204A24A" Ref="C?"  Part="1" 
F 0 "C8" H 2400 7400 50  0000 R CNN
F 1 "10µF" H 2400 7300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2550 7350 50  0001 C CNN
F 3 "~" H 2550 7350 50  0001 C CNN
	1    2550 7350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 7150 2550 7200
Wire Wire Line
	2550 7150 2050 7150
Wire Wire Line
	2550 7500 2550 7550
Wire Wire Line
	2050 7550 2550 7550
Connection ~ 2050 7150
Connection ~ 2050 7550
Text Label 1950 1550 0    50   ~ 0
Vin
Wire Wire Line
	3900 4400 4100 4400
$EndSCHEMATC
