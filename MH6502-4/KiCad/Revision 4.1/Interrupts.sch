EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 11
Title "Interrupt Priority Handler and Config DIP seitches"
Date "2022-06-02"
Rev "4"
Comp "The Micro Hobbyist"
Comment1 "Frédéric Segard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 62AB696A
P 4650 2300
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
AR Path="/624CB96A/62AB696A" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 4650 2150 50  0001 C CNN
F 1 "+5V" H 4665 2473 50  0000 C CNN
F 2 "" H 4650 2300 50  0001 C CNN
F 3 "" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2350 4650 2300
$Comp
L power:GND #PWR?
U 1 1 624DB057
P 4650 3750
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
AR Path="/624CB96A/624DB057" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 4650 3500 50  0001 C CNN
F 1 "GND" H 4655 3577 50  0000 C CNN
F 2 "" H 4650 3750 50  0001 C CNN
F 3 "" H 4650 3750 50  0001 C CNN
	1    4650 3750
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ATF16V8B U?
U 1 1 62AB696C
P 4650 2400
AR Path="/61D74077/62AB696C" Ref="U?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB696C" Ref="U?"  Part="1" 
AR Path="/61C59C1E/62AB696C" Ref="U?"  Part="1" 
AR Path="/61D74077/6226E583/62AB696C" Ref="U?"  Part="1" 
AR Path="/623467BB/62AB696C" Ref="U?"  Part="1" 
AR Path="/61CDC8A2/62AB696C" Ref="U?"  Part="1" 
AR Path="/624CB96A/62AB696C" Ref="U5"  Part="1" 
AR Path="/62AB696C" Ref="U?"  Part="1" 
F 0 "U5" H 4700 2500 50  0000 L CNN
F 1 "ATF16V8B" H 4700 2400 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4650 2400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-0364-PLD-ATF16V8B-8BQ-8BQL-Datasheet.pdf" H 4650 2400 50  0001 C CNN
	1    4650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62918D9E
P 3050 2100
AR Path="/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/62BC6D80/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/61BE17A8/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/61C59C1E/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6226E583/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/623467BB/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/61CDC8A2/62918D9E" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62918D9E" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3050 1950 50  0001 C CNN
F 1 "+5V" H 3065 2273 50  0000 C CNN
F 2 "" H 3050 2100 50  0001 C CNN
F 3 "" H 3050 2100 50  0001 C CNN
	1    3050 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 2650 3750 2650
Wire Wire Line
	2900 2750 3650 2750
Wire Wire Line
	2900 2850 3550 2850
Wire Wire Line
	2900 2950 3450 2950
Wire Wire Line
	2900 3050 3350 3050
Wire Wire Line
	3050 2550 3050 3350
Wire Wire Line
	3150 2550 3150 3250
Wire Wire Line
	3250 2550 3250 3150
Wire Wire Line
	3350 2550 3350 3050
Wire Wire Line
	3450 2550 3450 2950
Wire Wire Line
	3550 2550 3550 2850
Wire Wire Line
	3650 2550 3650 2750
Wire Wire Line
	3750 2550 3750 2650
Wire Wire Line
	3050 2100 3050 2150
$Comp
L Device:R_Network08_US RN?
U 1 1 62AB696E
P 3450 2350
AR Path="/62AB696E" Ref="RN?"  Part="1" 
AR Path="/63885FFC/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61BE17A8/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61D74077/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61D74077/61F0E8E6/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61C59C1E/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61D74077/6226E583/62AB696E" Ref="RN?"  Part="1" 
AR Path="/623467BB/62AB696E" Ref="RN?"  Part="1" 
AR Path="/61CDC8A2/62AB696E" Ref="RN?"  Part="1" 
AR Path="/624CB96A/62AB696E" Ref="RN3"  Part="1" 
F 0 "RN3" H 3450 2650 50  0000 C CNN
F 1 "3K3Ω" H 3450 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3925 2350 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3450 2350 50  0001 C CNN
	1    3450 2350
	1    0    0    -1  
$EndComp
Text Label 5450 2650 2    50   ~ 0
~IRQ
Wire Wire Line
	2900 3350 3050 3350
Wire Wire Line
	2900 3250 3150 3250
Wire Wire Line
	2900 3150 3250 3150
Text Label 5450 2750 2    50   ~ 0
P_INT0
Text Label 5450 2850 2    50   ~ 0
P_INT1
Text Label 5450 2950 2    50   ~ 0
P_INT2
Connection ~ 3050 3350
Connection ~ 3150 3250
Connection ~ 3250 3150
Connection ~ 3350 3050
Connection ~ 3450 2950
Connection ~ 3550 2850
Connection ~ 3650 2750
Connection ~ 3750 2650
Wire Wire Line
	3250 3150 4200 3150
Wire Wire Line
	3350 3050 4200 3050
Wire Wire Line
	3450 2950 4200 2950
Wire Wire Line
	3550 2850 4200 2850
Wire Wire Line
	3650 2750 4200 2750
Wire Wire Line
	3750 2650 4200 2650
Wire Wire Line
	3050 3350 4200 3350
Wire Wire Line
	3150 3250 4200 3250
Text HLabel 2900 2650 0    50   Input ~ 0
~IRQ1
Text HLabel 2900 2750 0    50   Input ~ 0
~IRQ2
Text HLabel 2900 2850 0    50   Input ~ 0
~IRQ3
Text HLabel 2900 2950 0    50   Input ~ 0
~IRQ4
Text HLabel 2900 3050 0    50   Input ~ 0
~IRQ5
Text HLabel 2900 3150 0    50   Input ~ 0
~IRQ6
Text HLabel 2900 3250 0    50   Input ~ 0
~IRQ7
NoConn ~ 5100 3150
Text Notes 1100 6950 0    50   ~ 0
Bypass capacitors
$Comp
L power:+5V #PWR?
U 1 1 62918D9D
P 1000 6950
AR Path="/62918D9D" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62918D9D" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62918D9D" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D9D" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62918D9D" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 1000 6800 50  0001 C CNN
F 1 "+5V" H 1015 7123 50  0000 C CNN
F 2 "" H 1000 6950 50  0001 C CNN
F 3 "" H 1000 6950 50  0001 C CNN
	1    1000 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62918D8F
P 1000 7450
AR Path="/62918D8F" Ref="#PWR?"  Part="1" 
AR Path="/63D20D31/62918D8F" Ref="#PWR?"  Part="1" 
AR Path="/62C3F3B9/62918D8F" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/62918D8F" Ref="#PWR?"  Part="1" 
AR Path="/624CB96A/62918D8F" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 1000 7200 50  0001 C CNN
F 1 "GND" H 1005 7277 50  0000 C CNN
F 2 "" H 1000 7450 50  0001 C CNN
F 3 "" H 1000 7450 50  0001 C CNN
	1    1000 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62918D8E
P 1000 7200
AR Path="/62918D8E" Ref="C?"  Part="1" 
AR Path="/63D20D31/62918D8E" Ref="C?"  Part="1" 
AR Path="/62C3F3B9/62918D8E" Ref="C?"  Part="1" 
AR Path="/636AFA21/62918D8E" Ref="C?"  Part="1" 
AR Path="/624CB96A/62918D8E" Ref="C5"  Part="1" 
F 0 "C5" H 1115 7246 50  0000 L CNN
F 1 "0.1µF" H 1115 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1038 7050 50  0001 C CNN
F 3 "~" H 1000 7200 50  0001 C CNN
	1    1000 7200
	1    0    0    -1  
$EndComp
Text HLabel 5750 2650 2    50   Output ~ 0
~IRQ
Text Label 5450 3050 2    50   ~ 0
P_INT3
Wire Wire Line
	5100 2750 5750 2750
Wire Wire Line
	5100 2850 5750 2850
Wire Wire Line
	5100 2950 5750 2950
Wire Wire Line
	5100 3050 5750 3050
Text HLabel 5750 2750 2    50   Output ~ 0
P_INT0
Text HLabel 5750 2850 2    50   Output ~ 0
P_INT1
Text HLabel 5750 2950 2    50   Output ~ 0
P_INT2
Text HLabel 5750 3050 2    50   Output ~ 0
P_INT3
Wire Wire Line
	5100 2650 5750 2650
Wire Wire Line
	5100 3250 5750 3250
Wire Wire Line
	5100 3350 5750 3350
Text HLabel 5750 3250 2    50   Output ~ 0
~RD
Text HLabel 5750 3350 2    50   Output ~ 0
~WR
Wire Wire Line
	4650 3650 4650 3750
Wire Wire Line
	4200 2550 4100 2550
Wire Wire Line
	4100 2550 4100 1800
Wire Wire Line
	4100 1800 2900 1800
Text HLabel 2900 1800 0    50   Input ~ 0
CLK
Text HLabel 2900 3350 0    50   Input ~ 0
~IRQ8
Text HLabel 2900 3450 0    50   Input ~ 0
R~W
Wire Wire Line
	4200 3450 2900 3450
Wire Wire Line
	1000 7350 1000 7450
Wire Wire Line
	1000 6950 1000 7050
$EndSCHEMATC
