EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 11
Title "Interrupt Priority Handler and Config DIP seitches"
Date "2022-01-22"
Rev "3"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 900  7350
Text Notes 950  6900 0    50   ~ 0
Bypass capacitors
Wire Wire Line
	900  7400 900  7350
$Comp
L power:+5V #PWR?
U 1 1 624DB02C
P 900 6900
AR Path="/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/624DB02C" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/624DB02C" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 900 6750 50  0001 C CNN
F 1 "+5V" H 915 7073 50  0000 C CNN
F 2 "" H 900 6900 50  0001 C CNN
F 3 "" H 900 6900 50  0001 C CNN
	1    900  6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 624DB032
P 1250 7150
AR Path="/624DB032" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/624DB032" Ref="C?"  Part="1" 
AR Path="/60CF5668/624DB032" Ref="C?"  Part="1" 
AR Path="/63885FFC/624DB032" Ref="C?"  Part="1" 
AR Path="/61BE126B/624DB032" Ref="C?"  Part="1" 
AR Path="/61D74077/624DB032" Ref="C?"  Part="1" 
AR Path="/6229D10A/624DB032" Ref="C?"  Part="1" 
AR Path="/61CDC8A2/624DB032" Ref="C?"  Part="1" 
AR Path="/624CB96A/624DB032" Ref="C30"  Part="1" 
F 0 "C30" H 1300 7250 50  0000 L CNN
F 1 "0.1µF" H 1300 7050 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1288 7000 50  0001 C CNN
F 3 "~" H 1250 7150 50  0001 C CNN
	1    1250 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7000 1250 6950
Wire Wire Line
	1250 7300 1250 7350
Wire Wire Line
	900  6900 900  6950
$Comp
L Device:C C?
U 1 1 624DB03D
P 900 7150
AR Path="/624DB03D" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/624DB03D" Ref="C?"  Part="1" 
AR Path="/60CF5668/624DB03D" Ref="C?"  Part="1" 
AR Path="/63885FFC/624DB03D" Ref="C?"  Part="1" 
AR Path="/61BE126B/624DB03D" Ref="C?"  Part="1" 
AR Path="/61D74077/624DB03D" Ref="C?"  Part="1" 
AR Path="/6229D10A/624DB03D" Ref="C?"  Part="1" 
AR Path="/61CDC8A2/624DB03D" Ref="C?"  Part="1" 
AR Path="/624CB96A/624DB03D" Ref="C29"  Part="1" 
F 0 "C29" H 950 7250 50  0000 L CNN
F 1 "0.1µF" H 950 7050 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 938 7000 50  0001 C CNN
F 3 "~" H 900 7150 50  0001 C CNN
	1    900  7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7000 900  6950
Wire Wire Line
	900  6950 1250 6950
Wire Wire Line
	900  7300 900  7350
Wire Wire Line
	900  7350 1250 7350
Connection ~ 900  6950
$Comp
L power:GND #PWR?
U 1 1 624DB04A
P 900 7400
AR Path="/5F86B098/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/624DB04A" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/624DB04A" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 900 7150 50  0001 C CNN
F 1 "GND" H 905 7227 50  0000 C CNN
F 2 "" H 900 7400 50  0001 C CNN
F 3 "" H 900 7400 50  0001 C CNN
	1    900  7400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62AB696A
P 4100 2550
AR Path="/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/62AB696A" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62AB696A" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 4100 2400 50  0001 C CNN
F 1 "+5V" H 4115 2723 50  0000 C CNN
F 2 "" H 4100 2550 50  0001 C CNN
F 3 "" H 4100 2550 50  0001 C CNN
	1    4100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2600 4100 2550
$Comp
L power:GND #PWR?
U 1 1 624DB057
P 4100 3950
AR Path="/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/624DB057" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/624DB057" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 4100 3700 50  0001 C CNN
F 1 "GND" H 4105 3777 50  0000 C CNN
F 2 "" H 4100 3950 50  0001 C CNN
F 3 "" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ATF16V8B U?
U 1 1 62AB696C
P 4100 2650
AR Path="/61D74077/62AB696C" Ref="U?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB696C" Ref="U?"  Part="1" 
AR Path="/61C59C1E/62AB696C" Ref="U?"  Part="1" 
AR Path="/61D74077/6226E583/62AB696C" Ref="U?"  Part="1" 
AR Path="/623467BB/62AB696C" Ref="U?"  Part="1" 
AR Path="/61CDC8A2/62AB696C" Ref="U?"  Part="1" 
AR Path="/624CB96A/62AB696C" Ref="U14"  Part="1" 
AR Path="/62AB696C" Ref="U?"  Part="1" 
F 0 "U14" H 4150 2750 50  0000 L CNN
F 1 "ATF16V8B" H 4150 2650 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4100 2650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-0364-PLD-ATF16V8B-8BQ-8BQL-Datasheet.pdf" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62AB696D
P 2500 2250
AR Path="/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/62BC6D80/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/62AB696D" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62AB696D" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 2500 2100 50  0001 C CNN
F 1 "+5V" H 2515 2423 50  0000 C CNN
F 2 "" H 2500 2250 50  0001 C CNN
F 3 "" H 2500 2250 50  0001 C CNN
	1    2500 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 3900 4100 3950
Wire Wire Line
	2350 2800 3200 2800
Wire Wire Line
	2350 2900 3100 2900
Wire Wire Line
	2350 3000 3000 3000
Wire Wire Line
	2350 3100 2900 3100
Wire Wire Line
	2350 3200 2800 3200
Wire Wire Line
	2500 2700 2500 3500
Wire Wire Line
	2600 2700 2600 3400
Wire Wire Line
	2700 2700 2700 3300
Wire Wire Line
	2800 2700 2800 3200
Wire Wire Line
	2900 2700 2900 3100
Wire Wire Line
	3000 2700 3000 3000
Wire Wire Line
	3100 2700 3100 2900
Wire Wire Line
	3200 2700 3200 2800
Wire Wire Line
	2500 2250 2500 2300
$Comp
L Device:R_Network08_US RN?
U 1 1 62AB696E
P 2900 2500
AR Path="/62AB696E" Ref="RN?"  Part="1" 
AR Path="/63885FFC/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61BE17A8/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61D74077/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61C59C1E/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61D74077/6226E583/62AB696E" Ref="RN?"  Part="1" 
AR Path="/623467BB/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61CDC8A2/62AB696E" Ref="RN?"  Part="1" 
AR Path="/624CB96A/62AB696E" Ref="RN2"  Part="1" 
F 0 "RN2" H 2900 2800 50  0000 C CNN
F 1 "3K3Ω" H 2900 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3375 2500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 2500 50  0001 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
Text Label 3400 2800 0    50   ~ 0
~IRQ0
Text Label 3400 2900 0    50   ~ 0
~IRQ1
Text Label 3400 3000 0    50   ~ 0
~IRQ2
Text Label 3400 3100 0    50   ~ 0
~IRQ3
Text Label 3400 3200 0    50   ~ 0
~IRQ4
Text Label 3400 3300 0    50   ~ 0
~IRQ5
Text Label 3400 3400 0    50   ~ 0
~IRQ6
Text Label 3400 3500 0    50   ~ 0
~IRQ7
Text Label 4650 2900 0    50   ~ 0
~IRQ
Text HLabel 8700 2200 2    50   Output ~ 0
~IRQ
Wire Wire Line
	2350 3500 2500 3500
Wire Wire Line
	2350 3400 2600 3400
Wire Wire Line
	2350 3300 2700 3300
Text Label 4650 3000 0    50   ~ 0
P_INT0
Text Label 4650 3100 0    50   ~ 0
P_INT1
Text Label 4650 3200 0    50   ~ 0
P_INT2
Text Label 4650 3300 0    50   ~ 0
P_INT3
$Comp
L 74xx:74LS573 U?
U 1 1 62AB696F
P 7500 3500
AR Path="/61CDC8A2/62AB696F" Ref="U?"  Part="1" 
AR Path="/624CB96A/62AB696F" Ref="U15"  Part="1" 
F 0 "U15" H 7550 4250 50  0000 L CNN
F 1 "74HC573" H 7550 4150 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7500 3500 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 7500 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62AB6970
P 7500 2650
AR Path="/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/6229D10A/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/62AB6970" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62AB6970" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 7500 2500 50  0001 C CNN
F 1 "+5V" H 7515 2823 50  0000 C CNN
F 2 "" H 7500 2650 50  0001 C CNN
F 3 "" H 7500 2650 50  0001 C CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2700 7500 2650
$Comp
L power:GND #PWR?
U 1 1 62AB6971
P 7500 4350
AR Path="/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/62AB6971" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62AB6971" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 7500 4100 50  0001 C CNN
F 1 "GND" H 7505 4177 50  0000 C CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4300 7500 4350
Wire Wire Line
	4950 2200 4950 2900
Wire Wire Line
	4950 2900 4550 2900
Wire Wire Line
	3650 4250 3650 3800
Wire Wire Line
	4550 3500 5000 3500
Wire Wire Line
	5000 3500 5000 4350
Wire Wire Line
	5000 4350 3550 4350
Wire Wire Line
	3550 4350 3550 3900
Wire Wire Line
	4550 3400 5100 3400
Wire Wire Line
	5100 3400 5100 4450
Wire Wire Line
	5100 4450 3450 4450
Wire Wire Line
	3450 4450 3450 4000
Connection ~ 2500 3500
Connection ~ 2600 3400
Connection ~ 2700 3300
Connection ~ 2800 3200
Connection ~ 2900 3100
Connection ~ 3000 3000
Connection ~ 3100 2900
Connection ~ 3200 2800
Wire Wire Line
	2700 3300 3650 3300
Wire Wire Line
	2800 3200 3650 3200
Wire Wire Line
	2900 3100 3650 3100
Wire Wire Line
	3000 3000 3650 3000
Wire Wire Line
	3100 2900 3650 2900
Wire Wire Line
	3200 2800 3650 2800
Wire Wire Line
	2500 3500 3650 3500
Wire Wire Line
	2600 3400 3650 3400
$Comp
L Device:R_Network05_US RN?
U 1 1 624DB0D9
P 3000 4300
AR Path="/61CDC8A2/624DB0D9" Ref="RN?"  Part="1" 
AR Path="/624CB96A/624DB0D9" Ref="RN4"  Part="1" 
F 0 "RN4" H 3000 4500 50  0000 C CNN
F 1 "3K3Ω" H 3000 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 3375 4300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    1   
$EndComp
Text Label 3400 3600 0    50   ~ 0
~IRQ8
Text Label 3400 3700 0    50   ~ 0
~IRQ9
Text Label 4650 3600 0    50   ~ 0
~IRQ10
Text Label 4650 3500 0    50   ~ 0
~IRQ11
Text Label 4650 3400 0    50   ~ 0
~IRQ12
Wire Wire Line
	4550 3600 4900 3600
Wire Wire Line
	4900 3600 4900 4250
Wire Wire Line
	3650 4250 4900 4250
$Comp
L power:+5V #PWR?
U 1 1 624DB0FB
P 2600 4450
AR Path="/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/62BC6D80/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/624DB0FB" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/624DB0FB" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 2600 4300 50  0001 C CNN
F 1 "+5V" H 2615 4623 50  0000 C CNN
F 2 "" H 2600 4450 50  0001 C CNN
F 3 "" H 2600 4450 50  0001 C CNN
	1    2600 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2600 4550 2800 4550
Wire Wire Line
	2800 4550 2800 4500
Wire Wire Line
	2600 4450 2600 4550
Wire Wire Line
	8000 3000 8300 3000
Wire Wire Line
	8000 3100 8300 3100
Wire Wire Line
	8000 3200 8300 3200
Wire Wire Line
	8000 3300 8300 3300
Wire Wire Line
	8000 3400 8300 3400
Wire Wire Line
	8000 3500 8300 3500
Wire Wire Line
	8000 3600 8300 3600
Wire Wire Line
	8000 3700 8300 3700
Text Label 8050 3000 0    50   ~ 0
D0
Text Label 8050 3100 0    50   ~ 0
D1
Text Label 8050 3200 0    50   ~ 0
D2
Text Label 8050 3300 0    50   ~ 0
D3
Text Label 8050 3400 0    50   ~ 0
D4
Text Label 8050 3500 0    50   ~ 0
D5
Text Label 8050 3600 0    50   ~ 0
D6
Text Label 8050 3700 0    50   ~ 0
D7
Entry Wire Line
	8400 2900 8300 3000
Entry Wire Line
	8400 3000 8300 3100
Entry Wire Line
	8400 3100 8300 3200
Entry Wire Line
	8400 3200 8300 3300
Entry Wire Line
	8400 3300 8300 3400
Entry Wire Line
	8400 3400 8300 3500
Entry Wire Line
	8400 3500 8300 3600
Entry Wire Line
	8400 3600 8300 3700
Wire Bus Line
	8400 2900 8700 2900
Text HLabel 8700 2900 2    50   BiDi ~ 0
D[0..7]
Text HLabel 2350 2800 0    50   Input ~ 0
~IRQ0
Text HLabel 2350 2900 0    50   Input ~ 0
~IRQ1
Text HLabel 2350 3000 0    50   Input ~ 0
~IRQ2
Text HLabel 2350 3100 0    50   Input ~ 0
~IRQ3
Text HLabel 2350 3200 0    50   Input ~ 0
~IRQ4
Text HLabel 2350 3300 0    50   Input ~ 0
~IRQ5
Text HLabel 2350 3400 0    50   Input ~ 0
~IRQ6
Text HLabel 2350 3500 0    50   Input ~ 0
~IRQ7
Text HLabel 2350 3600 0    50   Input ~ 0
~IRQ8
Text HLabel 2350 3700 0    50   Input ~ 0
~IRQ9
Text HLabel 2350 3800 0    50   Input ~ 0
~IRQ10
Text HLabel 2350 3900 0    50   Input ~ 0
~IRQ11
Text HLabel 2350 4000 0    50   Input ~ 0
~IRQ12
Wire Wire Line
	6750 4000 6750 4800
Wire Wire Line
	6750 4800 2350 4800
Text HLabel 2350 4800 0    50   Input ~ 0
~P_INT_SEL
Wire Wire Line
	4950 2200 8700 2200
Wire Wire Line
	6650 3900 6650 4700
Wire Wire Line
	6650 4700 2350 4700
Text Label 6700 3900 0    50   ~ 0
CLK
Text HLabel 2350 4700 0    50   Input ~ 0
CLK
Wire Wire Line
	4550 3000 7000 3000
Wire Wire Line
	4550 3100 7000 3100
Wire Wire Line
	4550 3200 7000 3200
Wire Wire Line
	4550 3300 7000 3300
Wire Wire Line
	6750 4000 7000 4000
Wire Wire Line
	6650 3900 7000 3900
$Comp
L Switch:SW_DIP_x04 SW3
U 1 1 61F7BE60
P 5600 3950
F 0 "SW3" H 5600 4417 50  0000 C CNN
F 1 "CONFIG" H 5600 4326 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_9.78x12.34mm_W7.62mm_P2.54mm" H 5600 3950 50  0001 C CNN
F 3 "~" H 5600 3950 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network05_US RN3
U 1 1 61F7D329
P 6150 2700
F 0 "RN3" H 6200 3000 50  0000 C CNN
F 1 "3K3Ω" H 6200 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 6525 2700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6150 2700 50  0001 C CNN
	1    6150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2500 5700 2500
Wire Wire Line
	5700 2500 5700 2650
$Comp
L power:GND #PWR?
U 1 1 61F81C0B
P 5700 2650
AR Path="/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61F81C0B" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/61F81C0B" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 5700 2400 50  0001 C CNN
F 1 "GND" H 5705 2477 50  0000 C CNN
F 2 "" H 5700 2650 50  0001 C CNN
F 3 "" H 5700 2650 50  0001 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3750 5950 3750
Wire Wire Line
	5950 3750 5950 3400
Wire Wire Line
	5900 3850 6050 3850
Wire Wire Line
	6050 3850 6050 3500
Wire Wire Line
	5900 3950 6150 3950
Wire Wire Line
	6150 3950 6150 3600
Wire Wire Line
	5900 4050 6250 4050
Wire Wire Line
	6250 4050 6250 3700
NoConn ~ 6350 2900
Wire Wire Line
	5300 4050 5250 4050
Wire Wire Line
	5250 4050 5250 3950
Wire Wire Line
	5250 3750 5300 3750
Wire Wire Line
	5300 3850 5250 3850
Connection ~ 5250 3850
Wire Wire Line
	5250 3850 5250 3750
Wire Wire Line
	5300 3950 5250 3950
Connection ~ 5250 3950
Wire Wire Line
	5250 3950 5250 3850
Wire Wire Line
	5250 3750 5250 3600
Connection ~ 5250 3750
$Comp
L power:+5V #PWR?
U 1 1 61F9EFA7
P 5250 3600
AR Path="/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/61F9EFA7" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/61F9EFA7" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 5250 3450 50  0001 C CNN
F 1 "+5V" H 5265 3773 50  0000 C CNN
F 2 "" H 5250 3600 50  0001 C CNN
F 3 "" H 5250 3600 50  0001 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3400 7000 3400
Connection ~ 5950 3400
Wire Wire Line
	5950 3400 5950 2900
Wire Wire Line
	6050 3500 7000 3500
Connection ~ 6050 3500
Wire Wire Line
	6050 3500 6050 2900
Wire Wire Line
	6150 3600 7000 3600
Connection ~ 6150 3600
Wire Wire Line
	6150 3600 6150 2900
Wire Wire Line
	6250 3700 7000 3700
Connection ~ 6250 3700
Wire Wire Line
	6250 3700 6250 2900
Wire Wire Line
	2350 4000 3200 4000
Wire Wire Line
	2350 3900 3100 3900
Wire Wire Line
	2350 3800 3000 3800
Wire Wire Line
	2350 3700 2900 3700
Wire Wire Line
	2350 3600 2800 3600
Wire Wire Line
	2800 4100 2800 3600
Connection ~ 2800 3600
Wire Wire Line
	2800 3600 3650 3600
Wire Wire Line
	2900 4100 2900 3700
Connection ~ 2900 3700
Wire Wire Line
	2900 3700 3650 3700
Wire Wire Line
	3000 4100 3000 3800
Connection ~ 3000 3800
Wire Wire Line
	3000 3800 3650 3800
Wire Wire Line
	3100 4100 3100 3900
Connection ~ 3100 3900
Wire Wire Line
	3100 3900 3550 3900
Wire Wire Line
	3200 4100 3200 4000
Connection ~ 3200 4000
Wire Wire Line
	3200 4000 3450 4000
Wire Bus Line
	8400 2900 8400 3600
$EndSCHEMATC
