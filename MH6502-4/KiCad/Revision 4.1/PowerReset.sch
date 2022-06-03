EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 8 11
Title "Power and Reset"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 0_Fred's_Local_Library:DS1813 RS?
U 1 1 636FD437
P 5550 1650
AR Path="/636FD437" Ref="RS?"  Part="1" 
AR Path="/62C3F3B9/636FD437" Ref="RS?"  Part="1" 
AR Path="/636AFA21/636FD437" Ref="RS1"  Part="1" 
F 0 "RS1" H 5550 1775 50  0000 C CNN
F 1 "DS1813" H 5550 1684 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 5550 1650 50  0001 C CNN
F 3 "" H 5550 1650 50  0001 C CNN
	1    5550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1750 5150 1750
Wire Wire Line
	5150 1750 5150 1600
$Comp
L power:GND #PWR?
U 1 1 636FD446
P 5150 2700
AR Path="/636FD446" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/636FD446" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/636FD446" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 5150 2450 50  0001 C CNN
F 1 "GND" H 5155 2527 50  0000 C CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0001 C CNN
	1    5150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2050 5950 1900
Wire Wire Line
	5950 1900 5850 1900
Wire Wire Line
	5950 2450 5950 2550
Wire Wire Line
	5950 2550 5150 2550
Wire Wire Line
	5250 2050 5150 2050
Wire Wire Line
	5150 2050 5150 2550
Connection ~ 5150 2550
Wire Wire Line
	5150 2700 5150 2550
$Comp
L power:+5V #PWR?
U 1 1 62918DA6
P 5150 1600
AR Path="/62918DA6" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62918DA6" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918DA6" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 5150 1450 50  0001 C CNN
F 1 "+5V" H 5165 1773 50  0000 C CNN
F 2 "" H 5150 1600 50  0001 C CNN
F 3 "" H 5150 1600 50  0001 C CNN
	1    5150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1900 6150 1900
Connection ~ 5950 1900
Text Notes 1100 2850 0    50   ~ 0
2.1 x 5.5mm
Wire Wire Line
	3250 2150 2800 2150
Wire Wire Line
	1850 2250 2000 2250
Wire Wire Line
	1850 2500 1850 2250
Wire Wire Line
	1650 2500 1850 2500
$Comp
L Switch:SW_SPDT SW?
U 1 1 62918D98
P 2200 2250
AR Path="/62918D98" Ref="SW?"  Part="1" 
AR Path="/63885FFC/62918D98" Ref="SW?"  Part="1" 
AR Path="/61BE126B/62918D98" Ref="SW?"  Part="1" 
AR Path="/61D74077/62918D98" Ref="SW?"  Part="1" 
AR Path="/621D2996/62918D98" Ref="SW?"  Part="1" 
AR Path="/636AFA21/62918D98" Ref="SW1"  Part="1" 
F 0 "SW1" H 2200 2535 50  0000 C CNN
F 1 "POWER" H 2200 2444 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Microswitch_3mm_spacing_2" H 2200 2250 50  0001 C CNN
F 3 "~" H 2200 2250 50  0001 C CNN
	1    2200 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 62918D99
P 3400 2150
AR Path="/62918D99" Ref="D?"  Part="1" 
AR Path="/63885FFC/62918D99" Ref="D?"  Part="1" 
AR Path="/61BE126B/62918D99" Ref="D?"  Part="1" 
AR Path="/61D74077/62918D99" Ref="D?"  Part="1" 
AR Path="/621D2996/62918D99" Ref="D?"  Part="1" 
AR Path="/636AFA21/62918D99" Ref="D1"  Part="1" 
F 0 "D1" H 3400 2000 50  0000 C CNN
F 1 "PWR LED" H 3400 2300 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3400 2150 50  0001 C CNN
F 3 "~" H 3400 2150 50  0001 C CNN
	1    3400 2150
	-1   0    0    1   
$EndComp
NoConn ~ 2400 2350
$Comp
L power:GND #PWR?
U 1 1 62918D9A
P 2050 2900
AR Path="/62918D9A" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62918D9A" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62918D9A" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62918D9A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62918D9A" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62918D9A" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D9A" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 2050 2650 50  0001 C CNN
F 1 "GND" H 2055 2727 50  0000 C CNN
F 2 "" H 2050 2900 50  0001 C CNN
F 3 "" H 2050 2900 50  0001 C CNN
	1    2050 2900
	1    0    0    -1  
$EndComp
Connection ~ 2800 2150
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62AB6959
P 2050 2650
AR Path="/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/5F3EA81D/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/60CF5668/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/63885FFC/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/61BE126B/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/61D74077/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/621D2996/62AB6959" Ref="#FLG?"  Part="1" 
AR Path="/636AFA21/62AB6959" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 2050 2725 50  0001 C CNN
F 1 "PWR_FLAG" V 2050 2778 50  0001 L CNN
F 2 "" H 2050 2650 50  0001 C CNN
F 3 "~" H 2050 2650 50  0001 C CNN
	1    2050 2650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62AB695A
P 2600 1800
AR Path="/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/5F3EA81D/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/60CF5668/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/63885FFC/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/61BE126B/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/61D74077/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/621D2996/62AB695A" Ref="#FLG?"  Part="1" 
AR Path="/636AFA21/62AB695A" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2600 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 2600 1928 50  0001 L CNN
F 2 "" H 2600 1800 50  0001 C CNN
F 3 "~" H 2600 1800 50  0001 C CNN
	1    2600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62918D84
P 2800 1550
AR Path="/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62918D84" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D84" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 2800 1400 50  0001 C CNN
F 1 "+5V" H 2815 1723 50  0000 C CNN
F 2 "" H 2800 1550 50  0001 C CNN
F 3 "" H 2800 1550 50  0001 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2900 2050 2700
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61E53ABB
P 2300 1600
AR Path="/63885FFC/61E53ABB" Ref="J?"  Part="1" 
AR Path="/61BE126B/61E53ABB" Ref="J?"  Part="1" 
AR Path="/61E53ABB" Ref="J?"  Part="1" 
AR Path="/61D74077/61E53ABB" Ref="J?"  Part="1" 
AR Path="/621D2996/61E53ABB" Ref="J?"  Part="1" 
AR Path="/636AFA21/61E53ABB" Ref="J7"  Part="1" 
F 0 "J7" V 2500 1550 50  0000 C CNN
F 1 "PWR SW" V 2400 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 1600 50  0001 C CNN
F 3 "~" H 2300 1600 50  0001 C CNN
	1    2300 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 2250 1850 1800
Wire Wire Line
	1850 1800 2300 1800
Connection ~ 1850 2250
Wire Wire Line
	3150 1800 2800 1800
Connection ~ 2800 1800
Wire Wire Line
	2800 1800 2800 2150
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61E53ADF
P 3150 1600
AR Path="/63885FFC/61E53ADF" Ref="J?"  Part="1" 
AR Path="/61BE126B/61E53ADF" Ref="J?"  Part="1" 
AR Path="/61E53ADF" Ref="J?"  Part="1" 
AR Path="/61D74077/61E53ADF" Ref="J?"  Part="1" 
AR Path="/621D2996/61E53ADF" Ref="J?"  Part="1" 
AR Path="/636AFA21/61E53ADF" Ref="J8"  Part="1" 
F 0 "J8" V 3350 1550 50  0000 C CNN
F 1 "PWR LED" V 3250 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3150 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 1800 2600 1800
Wire Wire Line
	2800 1550 2800 1800
Wire Wire Line
	2050 2650 2050 2700
$Comp
L Connector:Barrel_Jack J?
U 1 1 62918D85
P 1350 2600
AR Path="/60CF5668/62918D85" Ref="J?"  Part="1" 
AR Path="/62918D85" Ref="J?"  Part="1" 
AR Path="/63885FFC/62918D85" Ref="J?"  Part="1" 
AR Path="/61BE126B/62918D85" Ref="J?"  Part="1" 
AR Path="/61D74077/62918D85" Ref="J?"  Part="1" 
AR Path="/621D2996/62918D85" Ref="J?"  Part="1" 
AR Path="/636AFA21/62918D85" Ref="J11"  Part="1" 
F 0 "J11" H 1350 2900 50  0000 C CNN
F 1 "POWER IN" H 1350 2800 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1400 2560 50  0001 C CNN
F 3 "~" H 1400 2560 50  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
Text Notes 3250 2400 0    50   ~ 0
Green
$Comp
L Device:C C?
U 1 1 6229247C
P 1050 6200
AR Path="/6229247C" Ref="C?"  Part="1" 
AR Path="/63D20D31/6229247C" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/6229247C" Ref="C?"  Part="1" 
AR Path="/636AFA21/6229247C" Ref="C17"  Part="1" 
F 0 "C17" H 1165 6246 50  0000 L CNN
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
AR Path="/636AFA21/62292482" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 1050 6200 50  0001 C CNN
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
AR Path="/636AFA21/62AB6964" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 1050 5800 50  0001 C CNN
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
U 1 1 61CE43E2
P 6350 2200
AR Path="/63885FFC/61CE43E2" Ref="J?"  Part="1" 
AR Path="/61BE126B/61CE43E2" Ref="J?"  Part="1" 
AR Path="/61CE43E2" Ref="J?"  Part="1" 
AR Path="/61D74077/61CE43E2" Ref="J?"  Part="1" 
AR Path="/621D2996/61CE43E2" Ref="J?"  Part="1" 
AR Path="/636AFA21/61CE43E2" Ref="J9"  Part="1" 
F 0 "J9" H 6450 2200 50  0000 L CNN
F 1 "RST SW" H 6450 2100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6350 2200 50  0001 C CNN
F 3 "~" H 6350 2200 50  0001 C CNN
	1    6350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2200 6150 1900
Wire Wire Line
	6150 2300 6150 2550
Wire Wire Line
	6150 2550 5950 2550
Connection ~ 5950 2550
$Comp
L Switch:SW_Push SW2
U 1 1 62AB6953
P 5950 2250
F 0 "SW2" V 5900 2400 50  0000 L CNN
F 1 "RESET" V 6000 2400 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5950 2450 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2250
	0    -1   1    0   
$EndComp
Text HLabel 8000 1900 2    50   Output ~ 0
~RESET
Wire Wire Line
	3550 2150 3950 2150
Wire Wire Line
	3950 2150 3950 2250
$Comp
L Device:R_US R?
U 1 1 62A4F544
P 3950 2400
AR Path="/62A4F544" Ref="R?"  Part="1" 
AR Path="/62C3F3B9/62A4F544" Ref="R?"  Part="1" 
AR Path="/61D84C49/62A4F544" Ref="R?"  Part="1" 
AR Path="/636AFA21/62A4F544" Ref="R1"  Part="1" 
F 0 "R1" H 4050 2350 50  0000 L CNN
F 1 "220Ω" H 4050 2450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3990 2390 50  0001 C CNN
F 3 "~" H 3950 2400 50  0001 C CNN
	1    3950 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62918D96
P 3950 2650
AR Path="/62918D96" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62918D96" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62918D96" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62918D96" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62918D96" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62918D96" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D96" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3950 2400 50  0001 C CNN
F 1 "GND" H 3955 2477 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2650 3950 2550
Wire Wire Line
	3250 1800 3950 1800
Wire Wire Line
	3950 1800 3950 1850
$Comp
L power:GND #PWR?
U 1 1 62A5573E
P 3950 1850
AR Path="/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/62A5573E" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62A5573E" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 3950 1600 50  0001 C CNN
F 1 "GND" H 3955 1677 50  0000 C CNN
F 2 "" H 3950 1850 50  0001 C CNN
F 3 "" H 3950 1850 50  0001 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6350 1050 6400
Wire Wire Line
	1050 5950 1050 6000
Wire Wire Line
	2850 5100 2850 4100
$Comp
L power:GND #PWR?
U 1 1 61F09070
P 4600 7350
AR Path="/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/61F09070" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61F09070" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 4600 7100 50  0001 C CNN
F 1 "GND" H 4605 7177 50  0000 C CNN
F 2 "" H 4600 7350 50  0001 C CNN
F 3 "" H 4600 7350 50  0001 C CNN
	1    4600 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61F09076
P 4600 6350
AR Path="/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/61F09076" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/61F09076" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 4600 6200 50  0001 C CNN
F 1 "+5V" H 4615 6523 50  0000 C CNN
F 2 "" H 4600 6350 50  0001 C CNN
F 3 "" H 4600 6350 50  0001 C CNN
	1    4600 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC74 U?
U 3 1 61F0907C
P 4600 6850
AR Path="/61F0907C" Ref="U?"  Part="3" 
AR Path="/63D20D31/61F0907C" Ref="U?"  Part="3" 
AR Path="/62C3F3B9/61F0907C" Ref="U?"  Part="3" 
AR Path="/61D84C49/61F0907C" Ref="U?"  Part="3" 
AR Path="/636AFA21/61F0907C" Ref="U11"  Part="3" 
F 0 "U11" H 4650 7300 50  0000 L CNN
F 1 "74HC74" H 4650 7200 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4600 6850 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4600 6850 50  0001 C CNN
	3    4600 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7350 4600 7250
Wire Wire Line
	4600 6450 4600 6350
$Comp
L 74xx:74HC74 U?
U 1 1 61F090A6
P 2350 4750
AR Path="/61F090A6" Ref="U?"  Part="1" 
AR Path="/63D20D31/61F090A6" Ref="U?"  Part="1" 
AR Path="/62C3F3B9/61F090A6" Ref="U?"  Part="1" 
AR Path="/61D84C49/61F090A6" Ref="U?"  Part="2" 
AR Path="/636AFA21/61F090A6" Ref="U11"  Part="1" 
F 0 "U11" H 2400 5100 50  0000 L CNN
F 1 "74HC74" H 2400 5000 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2350 4750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2350 4750 50  0001 C CNN
	1    2350 4750
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 62918D8A
P 1550 4750
AR Path="/62918D8A" Ref="X?"  Part="1" 
AR Path="/60CF5668/62918D8A" Ref="X?"  Part="1" 
AR Path="/63D20D31/62918D8A" Ref="X?"  Part="1" 
AR Path="/62C3F3B9/62918D8A" Ref="X?"  Part="1" 
AR Path="/61D84C49/62918D8A" Ref="X?"  Part="1" 
AR Path="/636AFA21/62918D8A" Ref="X1"  Part="1" 
F 0 "X1" H 1600 5050 50  0000 L CNN
F 1 "4MHz" H 1600 4450 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 2000 4400 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 1450 4750 50  0001 C CNN
	1    1550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4000 1200 4100
Wire Wire Line
	1550 5050 1550 5100
$Comp
L power:GND #PWR?
U 1 1 62918D8B
P 1550 5100
AR Path="/62918D8B" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62918D8B" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62918D8B" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/62918D8B" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D8B" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 1550 4850 50  0001 C CNN
F 1 "GND" H 1555 4927 50  0000 C CNN
F 2 "" H 1550 5100 50  0001 C CNN
F 3 "" H 1550 5100 50  0001 C CNN
	1    1550 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62918D8C
P 1200 4000
AR Path="/62918D8C" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62918D8C" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62918D8C" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/62918D8C" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D8C" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 1200 3850 50  0001 C CNN
F 1 "+5V" H 1215 4173 50  0000 C CNN
F 2 "" H 1200 4000 50  0001 C CNN
F 3 "" H 1200 4000 50  0001 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4750 1200 4750
Wire Wire Line
	2650 4850 2750 4850
Wire Wire Line
	2750 4850 2750 4300
Wire Wire Line
	2750 4300 2000 4300
Wire Wire Line
	2000 4650 2050 4650
Wire Wire Line
	2350 5050 2350 5100
Wire Wire Line
	2350 5100 2850 5100
Wire Wire Line
	2850 4100 2350 4100
Wire Wire Line
	2350 4450 2350 4100
Connection ~ 2350 4100
Connection ~ 1200 4100
Wire Wire Line
	1200 4100 1200 4750
Wire Wire Line
	1550 4450 1550 4100
Wire Wire Line
	1200 4100 1550 4100
Connection ~ 1550 4100
Wire Wire Line
	2000 4300 2000 4650
Wire Wire Line
	1550 4100 2350 4100
Text HLabel 4050 4650 2    50   Output ~ 0
CLK
Text HLabel 4050 4850 2    50   Output ~ 0
~CLK
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
U 1 1 62918D8D
P 1500 6200
AR Path="/62918D8D" Ref="C?"  Part="1" 
AR Path="/63D20D31/62918D8D" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/62918D8D" Ref="C?"  Part="1" 
AR Path="/61D84C49/62918D8D" Ref="C?"  Part="1" 
AR Path="/636AFA21/62918D8D" Ref="C18"  Part="1" 
F 0 "C18" H 1615 6246 50  0000 L CNN
F 1 "0.1µF" H 1615 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1538 6050 50  0001 C CNN
F 3 "~" H 1500 6200 50  0001 C CNN
	1    1500 6200
	1    0    0    -1  
$EndComp
Text Notes 1150 1300 0    100  ~ 0
POWER
Text Notes 1150 3700 0    100  ~ 0
CPU CLOCK
Text Notes 5100 1300 0    100  ~ 0
RESET
Wire Wire Line
	2400 2150 2800 2150
Connection ~ 2600 1800
Wire Wire Line
	2600 1800 2800 1800
Connection ~ 1050 6000
Wire Wire Line
	1050 6000 1050 6050
Connection ~ 1050 6400
Wire Wire Line
	1050 6400 1050 6450
$Comp
L Device:CP1 C?
U 1 1 62555D1D
P 2800 2500
AR Path="/61BE126B/62555D1D" Ref="C?"  Part="1" 
AR Path="/62555D1D" Ref="C?"  Part="1" 
AR Path="/61D74077/62555D1D" Ref="C?"  Part="1" 
AR Path="/621D2996/62555D1D" Ref="C?"  Part="1" 
AR Path="/636AFA21/62555D1D" Ref="C16"  Part="1" 
AR Path="/61DA6806/62555D1D" Ref="C?"  Part="1" 
F 0 "C16" H 2650 2550 50  0000 R CNN
F 1 "100µF" H 2650 2450 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 2800 2500 50  0001 C CNN
F 3 "~" H 2800 2500 50  0001 C CNN
	1    2800 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 2350 2800 2150
Wire Wire Line
	2800 2650 2800 2750
$Comp
L power:GND #PWR?
U 1 1 625622D9
P 2800 2750
AR Path="/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/625622D9" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/625622D9" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 2800 2500 50  0001 C CNN
F 1 "GND" H 2805 2577 50  0000 C CNN
F 2 "" H 2800 2750 50  0001 C CNN
F 3 "" H 2800 2750 50  0001 C CNN
	1    2800 2750
	1    0    0    -1  
$EndComp
Connection ~ 2050 2700
Wire Wire Line
	1650 2700 2050 2700
$Comp
L Device:CP1 C?
U 1 1 628A1911
P 1050 7350
AR Path="/61BE126B/628A1911" Ref="C?"  Part="1" 
AR Path="/628A1911" Ref="C?"  Part="1" 
AR Path="/61D74077/628A1911" Ref="C?"  Part="1" 
AR Path="/621D2996/628A1911" Ref="C?"  Part="1" 
AR Path="/636AFA21/628A1911" Ref="C20"  Part="1" 
AR Path="/61DA6806/628A1911" Ref="C?"  Part="1" 
F 0 "C20" H 900 7400 50  0000 R CNN
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
AR Path="/636AFA21/628A1917" Ref="C21"  Part="1" 
AR Path="/61DA6806/628A1917" Ref="C?"  Part="1" 
F 0 "C21" H 1400 7400 50  0000 R CNN
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
AR Path="/636AFA21/628A191D" Ref="C22"  Part="1" 
AR Path="/61DA6806/628A191D" Ref="C?"  Part="1" 
F 0 "C22" H 1900 7400 50  0000 R CNN
F 1 "10µF" H 1900 7300 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2050 7350 50  0001 C CNN
F 3 "~" H 2050 7350 50  0001 C CNN
	1    2050 7350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62918D93
P 1050 7600
AR Path="/61DA6806/62918D93" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D93" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 1050 7350 50  0001 C CNN
F 1 "GND" H 1055 7427 50  0000 C CNN
F 2 "" H 1050 7600 50  0001 C CNN
F 3 "" H 1050 7600 50  0001 C CNN
	1    1050 7600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62918D94
P 1050 7100
AR Path="/61D87109/62918D94" Ref="#PWR?"  Part="1" 
AR Path="/62918D94" Ref="#PWR?"  Part="1" 
AR Path="/61DA6806/62918D94" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D94" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 1050 6950 50  0001 C CNN
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
Connection ~ 6150 1900
Wire Wire Line
	2750 4850 4050 4850
Connection ~ 2750 4850
Text Label 1850 1800 0    50   ~ 0
Vin
Wire Wire Line
	1850 4750 2050 4750
Wire Wire Line
	2650 4650 4050 4650
Wire Wire Line
	6800 5100 6800 4100
$Comp
L 74xx:74HC74 U?
U 2 1 62E0FCA3
P 6300 4750
AR Path="/62E0FCA3" Ref="U?"  Part="1" 
AR Path="/63D20D31/62E0FCA3" Ref="U?"  Part="1" 
AR Path="/62C3F3B9/62E0FCA3" Ref="U?"  Part="1" 
AR Path="/61D84C49/62E0FCA3" Ref="U?"  Part="2" 
AR Path="/636AFA21/62E0FCA3" Ref="U11"  Part="2" 
F 0 "U11" H 6350 5100 50  0000 L CNN
F 1 "74HC74" H 6350 5000 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6300 4750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6300 4750 50  0001 C CNN
	2    6300 4750
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 62E0FCA9
P 5500 4750
AR Path="/62E0FCA9" Ref="X?"  Part="1" 
AR Path="/60CF5668/62E0FCA9" Ref="X?"  Part="1" 
AR Path="/63D20D31/62E0FCA9" Ref="X?"  Part="1" 
AR Path="/62C3F3B9/62E0FCA9" Ref="X?"  Part="1" 
AR Path="/61D84C49/62E0FCA9" Ref="X?"  Part="1" 
AR Path="/636AFA21/62E0FCA9" Ref="X2"  Part="1" 
F 0 "X2" H 5550 5050 50  0000 L CNN
F 1 "3.579545MHz" H 5550 4450 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 5950 4400 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 5400 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4000 5150 4100
Wire Wire Line
	5500 5050 5500 5100
$Comp
L power:GND #PWR?
U 1 1 62918DA1
P 5500 5100
AR Path="/62918DA1" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62918DA1" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62918DA1" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/62918DA1" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918DA1" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 5500 4850 50  0001 C CNN
F 1 "GND" H 5505 4927 50  0000 C CNN
F 2 "" H 5500 5100 50  0001 C CNN
F 3 "" H 5500 5100 50  0001 C CNN
	1    5500 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62918DA2
P 5150 4000
AR Path="/62918DA2" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62918DA2" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62918DA2" Ref="#PWR?"  Part="1" 
AR Path="/61D84C49/62918DA2" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918DA2" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 5150 3850 50  0001 C CNN
F 1 "+5V" H 5165 4173 50  0000 C CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4750 5150 4750
Wire Wire Line
	6600 4850 6700 4850
Wire Wire Line
	6700 4850 6700 4300
Wire Wire Line
	6700 4300 5950 4300
Wire Wire Line
	5950 4650 6000 4650
Wire Wire Line
	6300 5050 6300 5100
Wire Wire Line
	6300 5100 6800 5100
Wire Wire Line
	6800 4100 6300 4100
Wire Wire Line
	6300 4450 6300 4100
Connection ~ 6300 4100
Connection ~ 5150 4100
Wire Wire Line
	5150 4100 5150 4750
Wire Wire Line
	5500 4450 5500 4100
Wire Wire Line
	5150 4100 5500 4100
Connection ~ 5500 4100
Wire Wire Line
	5950 4300 5950 4650
Wire Wire Line
	5500 4100 6300 4100
Text HLabel 8000 4650 2    50   Output ~ 0
PSG_CLK
Text Notes 5100 3700 0    100  ~ 0
PSG CLOCK
Wire Wire Line
	5800 4750 6000 4750
Wire Wire Line
	6600 4650 8000 4650
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
U 1 1 62E2E387
P 1950 6200
AR Path="/62E2E387" Ref="C?"  Part="1" 
AR Path="/63D20D31/62E2E387" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/62E2E387" Ref="C?"  Part="1" 
AR Path="/61D84C49/62E2E387" Ref="C?"  Part="1" 
AR Path="/636AFA21/62E2E387" Ref="C19"  Part="1" 
F 0 "C19" H 2065 6246 50  0000 L CNN
F 1 "0.1µF" H 2065 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1988 6050 50  0001 C CNN
F 3 "~" H 1950 6200 50  0001 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
Connection ~ 1500 6000
Connection ~ 1500 6400
$Comp
L Device:CP1 C?
U 1 1 629A9FA0
P 2550 7350
AR Path="/61BE126B/629A9FA0" Ref="C?"  Part="1" 
AR Path="/629A9FA0" Ref="C?"  Part="1" 
AR Path="/61D74077/629A9FA0" Ref="C?"  Part="1" 
AR Path="/621D2996/629A9FA0" Ref="C?"  Part="1" 
AR Path="/636AFA21/629A9FA0" Ref="C23"  Part="1" 
AR Path="/61DA6806/629A9FA0" Ref="C?"  Part="1" 
F 0 "C23" H 2400 7400 50  0000 R CNN
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
Wire Wire Line
	6150 1900 6900 1900
$Comp
L 74xx:74HC04 U?
U 3 1 6267CD37
P 7300 2350
AR Path="/622E9471/6267CD37" Ref="U?"  Part="2" 
AR Path="/636AFA21/6267CD37" Ref="U10"  Part="3" 
F 0 "U10" H 7300 2667 50  0000 C CNN
F 1 "74HCT04" H 7300 2576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7300 2350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7300 2350 50  0001 C CNN
	3    7300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2350 6900 2350
Wire Wire Line
	6900 2350 6900 1900
Connection ~ 6900 1900
Wire Wire Line
	6900 1900 8000 1900
Wire Wire Line
	7600 2350 8000 2350
Wire Wire Line
	8000 2350 8000 2550
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62689EC0
P 8200 2550
AR Path="/63885FFC/62689EC0" Ref="J?"  Part="1" 
AR Path="/61BE126B/62689EC0" Ref="J?"  Part="1" 
AR Path="/62689EC0" Ref="J?"  Part="1" 
AR Path="/61D74077/62689EC0" Ref="J?"  Part="1" 
AR Path="/621D2996/62689EC0" Ref="J?"  Part="1" 
AR Path="/636AFA21/62689EC0" Ref="J10"  Part="1" 
F 0 "J10" H 8300 2550 50  0000 L CNN
F 1 "RST LED" H 8300 2450 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8200 2550 50  0001 C CNN
F 3 "~" H 8200 2550 50  0001 C CNN
	1    8200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2650 8000 2850
$Comp
L power:GND #PWR?
U 1 1 6268DFFE
P 8000 2850
AR Path="/6268DFFE" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/6268DFFE" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6268DFFE" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 8000 2600 50  0001 C CNN
F 1 "GND" H 8005 2677 50  0000 C CNN
F 2 "" H 8000 2850 50  0001 C CNN
F 3 "" H 8000 2850 50  0001 C CNN
	1    8000 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
