EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "2022-05-23"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 6353C46D
P 4750 7350
F 0 "H6" H 4850 7399 50  0000 L CNN
F 1 "MH" H 4850 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4750 7350 50  0001 C CNN
F 3 "~" H 4750 7350 50  0001 C CNN
	1    4750 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7450 4750 7450
Connection ~ 4450 7450
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 6353C475
P 4450 7350
F 0 "H5" H 4550 7399 50  0000 L CNN
F 1 "MH" H 4550 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4450 7350 50  0001 C CNN
F 3 "~" H 4450 7350 50  0001 C CNN
	1    4450 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7450 4150 7450
Connection ~ 4150 7450
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6353C47D
P 4150 7350
F 0 "H4" H 4250 7399 50  0000 L CNN
F 1 "MH" H 4250 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4150 7350 50  0001 C CNN
F 3 "~" H 4150 7350 50  0001 C CNN
	1    4150 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6353C483
P 3250 7350
F 0 "H1" H 3350 7399 50  0000 L CNN
F 1 "MH" H 3350 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3250 7350 50  0001 C CNN
F 3 "~" H 3250 7350 50  0001 C CNN
	1    3250 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7450 3550 7600
Wire Wire Line
	3850 7450 4150 7450
Connection ~ 3850 7450
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6353C48C
P 3850 7350
F 0 "H3" H 3950 7399 50  0000 L CNN
F 1 "MH" H 3950 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3850 7350 50  0001 C CNN
F 3 "~" H 3850 7350 50  0001 C CNN
	1    3850 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6353C492
P 3550 7350
F 0 "H2" H 3650 7399 50  0000 L CNN
F 1 "MH" H 3650 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3550 7350 50  0001 C CNN
F 3 "~" H 3550 7350 50  0001 C CNN
	1    3550 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6353C498
P 3550 7600
AR Path="/61DA6806/6353C498" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6353C498" Ref="#PWR?"  Part="1" 
AR Path="/6353C498" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 3550 7350 50  0001 C CNN
F 1 "GND" H 3555 7427 50  0000 C CNN
F 2 "" H 3550 7600 50  0001 C CNN
F 3 "" H 3550 7600 50  0001 C CNN
	1    3550 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7450 3550 7450
Wire Wire Line
	3250 7450 3550 7450
Connection ~ 3550 7450
Wire Wire Line
	4150 6550 4150 6450
Wire Wire Line
	3750 6550 4150 6550
Wire Wire Line
	3750 6350 3750 6550
$Comp
L Device:LED D1
U 1 1 6353C4A4
P 4850 6450
AR Path="/6353C4A4" Ref="D1"  Part="1" 
AR Path="/62CDC1E3/6353C4A4" Ref="D?"  Part="1" 
AR Path="/642C7718/6353C4A4" Ref="D?"  Part="1" 
AR Path="/6292D0CC/6353C4A4" Ref="D?"  Part="1" 
AR Path="/628C812A/6353C4A4" Ref="D?"  Part="1" 
AR Path="/6292B0D2/6353C4A4" Ref="D?"  Part="1" 
F 0 "D1" V 4900 6300 50  0000 R CNN
F 1 "PWR LED" V 4800 6300 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4850 6450 50  0001 C CNN
F 3 "~" H 4850 6450 50  0001 C CNN
	1    4850 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 6600 4850 6650
Wire Wire Line
	4850 6300 4850 6250
$Comp
L power:GND #PWR013
U 1 1 6353C4AC
P 4850 6650
AR Path="/6353C4AC" Ref="#PWR013"  Part="1" 
AR Path="/60CF5668/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/62CDC1E3/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/642C7718/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/6292D0CC/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/628C812A/6353C4AC" Ref="#PWR?"  Part="1" 
AR Path="/6292B0D2/6353C4AC" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 4850 6400 50  0001 C CNN
F 1 "GND" H 4855 6477 50  0000 C CNN
F 2 "" H 4850 6650 50  0001 C CNN
F 3 "" H 4850 6650 50  0001 C CNN
	1    4850 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6250 4850 6250
$Comp
L Device:R_US R1
U 1 1 6353C4B3
P 4600 6250
AR Path="/6353C4B3" Ref="R1"  Part="1" 
AR Path="/62CDC1E3/6353C4B3" Ref="R?"  Part="1" 
AR Path="/642C7718/6353C4B3" Ref="R?"  Part="1" 
AR Path="/6292D0CC/6353C4B3" Ref="R?"  Part="1" 
AR Path="/628C812A/6353C4B3" Ref="R?"  Part="1" 
AR Path="/6292B0D2/6353C4B3" Ref="R?"  Part="1" 
F 0 "R1" V 4395 6250 50  0000 C CNN
F 1 "220Ω" V 4486 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4640 6240 50  0001 C CNN
F 3 "~" H 4600 6250 50  0001 C CNN
	1    4600 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 6350 3750 6350
Text Label 3450 6350 0    50   ~ 0
Vin
$Comp
L Connector:Barrel_Jack J?
U 1 1 6353C4BB
P 3100 6450
AR Path="/60CF5668/6353C4BB" Ref="J?"  Part="1" 
AR Path="/6353C4BB" Ref="J11"  Part="1" 
AR Path="/63885FFC/6353C4BB" Ref="J?"  Part="1" 
AR Path="/61BE126B/6353C4BB" Ref="J?"  Part="1" 
AR Path="/61D74077/6353C4BB" Ref="J?"  Part="1" 
AR Path="/621D2996/6353C4BB" Ref="J?"  Part="1" 
AR Path="/636AFA21/6353C4BB" Ref="J?"  Part="1" 
AR Path="/62CDC1E3/6353C4BB" Ref="J?"  Part="1" 
AR Path="/642C7718/6353C4BB" Ref="J?"  Part="1" 
AR Path="/6292D0CC/6353C4BB" Ref="J?"  Part="1" 
AR Path="/628C812A/6353C4BB" Ref="J?"  Part="1" 
AR Path="/6292B0D2/6353C4BB" Ref="J?"  Part="1" 
F 0 "J11" H 3100 6750 50  0000 C CNN
F 1 "POWER IN" H 3100 6650 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 3150 6410 50  0001 C CNN
F 3 "~" H 3150 6410 50  0001 C CNN
	1    3100 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6250 4450 6250
Connection ~ 4350 6250
Wire Wire Line
	4350 6100 4350 6250
Wire Wire Line
	3550 6550 3400 6550
Wire Wire Line
	3600 6550 3550 6550
Connection ~ 3550 6550
Wire Wire Line
	3550 6750 3550 6550
$Comp
L power:+5V #PWR011
U 1 1 6353C4C8
P 4350 6100
AR Path="/6353C4C8" Ref="#PWR011"  Part="1" 
AR Path="/5F3EA81D/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/62CDC1E3/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/642C7718/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/6292D0CC/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/628C812A/6353C4C8" Ref="#PWR?"  Part="1" 
AR Path="/6292B0D2/6353C4C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 4350 5950 50  0001 C CNN
F 1 "+5V" H 4365 6273 50  0000 C CNN
F 2 "" H 4350 6100 50  0001 C CNN
F 3 "" H 4350 6100 50  0001 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6250 4350 6250
Wire Wire Line
	4150 6250 4250 6250
Connection ~ 4250 6250
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6353C4D1
P 4250 6250
AR Path="/6353C4D1" Ref="#FLG01"  Part="1" 
AR Path="/5F3EA81D/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/60CF5668/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/63885FFC/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/61BE126B/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/61D74077/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/621D2996/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/636AFA21/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/62CDC1E3/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/642C7718/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/6292D0CC/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/628C812A/6353C4D1" Ref="#FLG?"  Part="1" 
AR Path="/6292B0D2/6353C4D1" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 4250 6325 50  0001 C CNN
F 1 "PWR_FLAG" V 4250 6378 50  0001 L CNN
F 2 "" H 4250 6250 50  0001 C CNN
F 3 "~" H 4250 6250 50  0001 C CNN
	1    4250 6250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6353C4D7
P 3600 6550
AR Path="/6353C4D7" Ref="#FLG02"  Part="1" 
AR Path="/5F3EA81D/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/60CF5668/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/63885FFC/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/61BE126B/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/61D74077/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/621D2996/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/636AFA21/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/62CDC1E3/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/642C7718/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/6292D0CC/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/628C812A/6353C4D7" Ref="#FLG?"  Part="1" 
AR Path="/6292B0D2/6353C4D7" Ref="#FLG?"  Part="1" 
F 0 "#FLG02" H 3600 6625 50  0001 C CNN
F 1 "PWR_FLAG" V 3600 6678 50  0001 L CNN
F 2 "" H 3600 6550 50  0001 C CNN
F 3 "~" H 3600 6550 50  0001 C CNN
	1    3600 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6353C4DD
P 3550 6750
AR Path="/6353C4DD" Ref="#PWR015"  Part="1" 
AR Path="/60CF5668/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/63885FFC/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/61BE126B/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/61D74077/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/621D2996/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/62CDC1E3/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/642C7718/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/6292D0CC/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/628C812A/6353C4DD" Ref="#PWR?"  Part="1" 
AR Path="/6292B0D2/6353C4DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 3550 6500 50  0001 C CNN
F 1 "GND" H 3555 6577 50  0000 C CNN
F 2 "" H 3550 6750 50  0001 C CNN
F 3 "" H 3550 6750 50  0001 C CNN
	1    3550 6750
	1    0    0    -1  
$EndComp
Connection ~ 3750 6350
$Comp
L Switch:SW_SPDT SW1
U 1 1 6353C4E4
P 3950 6350
AR Path="/6353C4E4" Ref="SW1"  Part="1" 
AR Path="/63885FFC/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/61BE126B/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/61D74077/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/621D2996/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/636AFA21/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/62CDC1E3/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/642C7718/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/6292D0CC/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/628C812A/6353C4E4" Ref="SW?"  Part="1" 
AR Path="/6292B0D2/6353C4E4" Ref="SW?"  Part="1" 
F 0 "SW1" H 3950 6635 50  0000 C CNN
F 1 "ON / OFF" H 3950 6544 50  0000 C CNN
F 2 "0_Fred's_Local_Library:Microswitch_3mm_spacing" H 3950 6350 50  0001 C CNN
F 3 "~" H 3950 6350 50  0001 C CNN
	1    3950 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3300 1700 3300
Wire Wire Line
	1900 3200 1700 3200
Wire Wire Line
	1900 3100 1700 3100
Wire Wire Line
	1900 3000 1700 3000
Wire Wire Line
	1900 2900 1700 2900
Wire Wire Line
	1900 2800 1700 2800
Wire Wire Line
	1900 2700 1700 2700
Wire Wire Line
	1900 2600 1700 2600
Text Label 1900 3300 2    50   ~ 0
A23
Text Label 1900 3200 2    50   ~ 0
A22
Text Label 1900 3100 2    50   ~ 0
A21
Text Label 1900 3000 2    50   ~ 0
A20
Text Label 1900 2900 2    50   ~ 0
A19
Text Label 1900 2800 2    50   ~ 0
A18
Text Label 1900 2700 2    50   ~ 0
A17
Text Label 1900 2600 2    50   ~ 0
A16
Text Label 1900 3700 2    50   ~ 0
GCLK
Text Label 1900 3800 2    50   ~ 0
~WSEN
Wire Wire Line
	1700 3800 1900 3800
Wire Wire Line
	1700 3500 1900 3500
Text Label 1900 3900 2    50   ~ 0
+5V
Text Label 700  900  0    50   ~ 0
+5V
Text Label 1900 3500 2    50   ~ 0
CLK
Text Label 1900 3600 2    50   ~ 0
~CLK
Wire Wire Line
	1700 3400 1900 3400
Text Label 1900 3400 2    50   ~ 0
~RST
Text Label 1900 2500 2    50   ~ 0
A15
Text Label 1900 2400 2    50   ~ 0
A14
Text Label 1900 2300 2    50   ~ 0
A13
Text Label 1900 2200 2    50   ~ 0
A12
Text Label 1900 2100 2    50   ~ 0
A11
Text Label 1900 2000 2    50   ~ 0
A10
Text Label 1900 1900 2    50   ~ 0
A9
Text Label 1900 1800 2    50   ~ 0
A8
Text Label 1900 1700 2    50   ~ 0
A7
Text Label 1900 1600 2    50   ~ 0
A6
Text Label 1900 1500 2    50   ~ 0
A5
Text Label 1900 1400 2    50   ~ 0
A4
Text Label 1900 1300 2    50   ~ 0
A3
Text Label 1900 1200 2    50   ~ 0
A2
Text Label 1900 1100 2    50   ~ 0
A1
Text Label 1900 1000 2    50   ~ 0
A0
Wire Wire Line
	1700 3900 1900 3900
Wire Wire Line
	1700 2500 1900 2500
Wire Wire Line
	1700 2400 1900 2400
Wire Wire Line
	1700 2300 1900 2300
Wire Wire Line
	1700 2200 1900 2200
Wire Wire Line
	1700 2100 1900 2100
Wire Wire Line
	1700 2000 1900 2000
Wire Wire Line
	1700 1900 1900 1900
Wire Wire Line
	1700 1800 1900 1800
Wire Wire Line
	1700 1700 1900 1700
Wire Wire Line
	1700 1600 1900 1600
Wire Wire Line
	1700 1500 1900 1500
Wire Wire Line
	1700 1400 1900 1400
Wire Wire Line
	1700 1300 1900 1300
Wire Wire Line
	1700 1200 1900 1200
Wire Wire Line
	1700 1100 1900 1100
Wire Wire Line
	1700 1000 1900 1000
Wire Wire Line
	900  900  700  900 
Wire Wire Line
	1700 3600 1900 3600
Wire Wire Line
	1700 3700 1900 3700
Wire Wire Line
	900  2600 700  2600
Wire Wire Line
	900  2500 700  2500
Wire Wire Line
	700  2900 900  2900
Wire Wire Line
	700  2800 900  2800
Wire Wire Line
	700  2700 900  2700
Text Label 700  2500 0    50   ~ 0
VDA
Text Label 700  2600 0    50   ~ 0
VPA
Wire Wire Line
	900  3000 700  3000
Text Label 700  3000 0    50   ~ 0
~IOSEL
Text Label 700  2400 0    50   ~ 0
~ML
Text Label 700  2300 0    50   ~ 0
~VP
Wire Wire Line
	900  2400 700  2400
Wire Wire Line
	900  2300 700  2300
Wire Wire Line
	900  1900 700  1900
Wire Wire Line
	900  2000 700  2000
Wire Wire Line
	900  2200 700  2200
Wire Wire Line
	900  2100 700  2100
Text Label 700  2200 0    50   ~ 0
BE
Text Label 700  2100 0    50   ~ 0
SYNC
Text Label 700  2000 0    50   ~ 0
RDY
Text Label 700  1700 0    50   ~ 0
~IRQ8
Text Label 700  1600 0    50   ~ 0
~IRQ7
Text Label 700  1500 0    50   ~ 0
~IRQ6
Text Label 700  1400 0    50   ~ 0
~IRQ5
Text Label 700  1300 0    50   ~ 0
~IRQ4
Text Label 700  1200 0    50   ~ 0
~IRQ3
Text Label 700  1100 0    50   ~ 0
~IRQ2
Text Label 700  1000 0    50   ~ 0
~IRQ1
Text Label 700  1800 0    50   ~ 0
~NMI
Text Label 700  1900 0    50   ~ 0
R~W
Text Label 1900 900  2    50   ~ 0
GND
Text Label 700  3900 0    50   ~ 0
GND
Text Label 700  3800 0    50   ~ 0
D7
Text Label 700  3700 0    50   ~ 0
D6
Text Label 700  3600 0    50   ~ 0
D5
Text Label 700  3500 0    50   ~ 0
D4
Text Label 700  3400 0    50   ~ 0
D3
Text Label 700  3300 0    50   ~ 0
D2
Text Label 700  3200 0    50   ~ 0
D1
Text Label 700  3100 0    50   ~ 0
D0
Wire Wire Line
	900  3800 700  3800
Wire Wire Line
	900  3700 700  3700
Wire Wire Line
	900  3600 700  3600
Wire Wire Line
	900  3500 700  3500
Wire Wire Line
	900  3400 700  3400
Wire Wire Line
	900  3300 700  3300
Wire Wire Line
	900  3200 700  3200
Wire Wire Line
	900  3100 700  3100
Wire Wire Line
	900  3900 700  3900
Wire Wire Line
	900  1700 700  1700
Wire Wire Line
	900  1600 700  1600
Wire Wire Line
	900  1500 700  1500
Wire Wire Line
	900  1400 700  1400
Wire Wire Line
	900  1300 700  1300
Wire Wire Line
	900  1200 700  1200
Wire Wire Line
	900  1100 700  1100
Wire Wire Line
	900  1000 700  1000
Wire Wire Line
	900  1800 700  1800
Wire Wire Line
	1700 900  1900 900 
Wire Wire Line
	4700 4750 4700 4950
Wire Wire Line
	4800 4750 4800 4950
Wire Wire Line
	4900 4750 4900 4950
Wire Wire Line
	5000 4750 5000 4950
Wire Wire Line
	5100 4750 5100 4950
Wire Wire Line
	5200 4750 5200 4950
Wire Wire Line
	5300 4750 5300 4950
Wire Wire Line
	5400 4750 5400 4950
Text Label 4700 4950 1    50   ~ 0
D0
Text Label 4800 4950 1    50   ~ 0
D1
Text Label 4900 4950 1    50   ~ 0
D2
Text Label 5000 4950 1    50   ~ 0
D3
Text Label 5100 4950 1    50   ~ 0
D4
Text Label 5200 4950 1    50   ~ 0
D5
Text Label 5300 4950 1    50   ~ 0
D6
Text Label 5400 4950 1    50   ~ 0
D7
Wire Wire Line
	5500 4750 5500 4950
Text Label 5500 4950 1    50   ~ 0
~NMI
Text Label 6000 4950 1    50   ~ 0
~VP
Wire Wire Line
	6000 4750 6000 4950
Wire Wire Line
	5600 4750 5600 4950
Text Label 5600 4950 1    50   ~ 0
R~W
Wire Wire Line
	5700 4750 5700 4950
Wire Wire Line
	5900 4750 5900 4950
Wire Wire Line
	5800 4750 5800 4950
Text Label 5900 4950 1    50   ~ 0
BE
Text Label 5800 4950 1    50   ~ 0
SYNC
Text Label 5700 4950 1    50   ~ 0
RDY
Text Label 3700 5650 1    50   ~ 0
~RST
Text Label 3900 5650 1    50   ~ 0
~CLK
Text Label 3800 5650 1    50   ~ 0
CLK
Wire Wire Line
	3700 5650 3700 5450
Wire Wire Line
	3800 5650 3800 5450
Wire Wire Line
	3900 5650 3900 5450
Wire Wire Line
	4100 5650 4100 5450
Text Label 4100 5650 1    50   ~ 0
~WSEN
Text Label 4000 5650 1    50   ~ 0
GCLK
Wire Wire Line
	4000 5650 4000 5450
Wire Wire Line
	3600 5450 3600 5650
Wire Wire Line
	4600 4750 4600 4950
Wire Wire Line
	4500 4750 4500 4950
Wire Wire Line
	4400 4750 4400 4950
Wire Wire Line
	4300 4750 4300 4950
Wire Wire Line
	4200 4750 4200 4950
Wire Wire Line
	4100 4750 4100 4950
Wire Wire Line
	4000 4750 4000 4950
Wire Wire Line
	3900 4750 3900 4950
Text Label 4600 4950 1    50   ~ 0
A23
Text Label 4500 4950 1    50   ~ 0
A22
Text Label 4400 4950 1    50   ~ 0
A21
Text Label 4300 4950 1    50   ~ 0
A20
Text Label 4200 4950 1    50   ~ 0
A19
Text Label 4100 4950 1    50   ~ 0
A18
Text Label 4000 4950 1    50   ~ 0
A17
Text Label 3900 4950 1    50   ~ 0
A16
Wire Wire Line
	1900 6900 1700 6900
Wire Wire Line
	1900 6800 1700 6800
Wire Wire Line
	1900 6700 1700 6700
Wire Wire Line
	1900 6600 1700 6600
Wire Wire Line
	1900 6500 1700 6500
Wire Wire Line
	1900 6400 1700 6400
Wire Wire Line
	1900 6300 1700 6300
Wire Wire Line
	1900 6200 1700 6200
Text Label 1900 6900 2    50   ~ 0
A23
Text Label 1900 6800 2    50   ~ 0
A22
Text Label 1900 6700 2    50   ~ 0
A21
Text Label 1900 6600 2    50   ~ 0
A20
Text Label 1900 6500 2    50   ~ 0
A19
Text Label 1900 6400 2    50   ~ 0
A18
Text Label 1900 6300 2    50   ~ 0
A17
Text Label 1900 6200 2    50   ~ 0
A16
Text Label 1900 7300 2    50   ~ 0
GCLK
Text Label 1900 7400 2    50   ~ 0
~WSEN
Wire Wire Line
	1700 7400 1900 7400
Text Label 3600 5650 1    50   ~ 0
~IOSEL
Wire Wire Line
	3000 5450 3000 5650
Text Label 3000 5650 1    50   ~ 0
~ML
Wire Wire Line
	1700 7100 1900 7100
Wire Wire Line
	9050 4800 9050 4850
Wire Wire Line
	8550 4800 8550 4850
Wire Wire Line
	8050 4800 8050 4850
Wire Wire Line
	7550 4800 7550 4850
Wire Wire Line
	7050 4800 7050 4850
Wire Wire Line
	7050 4500 7050 4450
Wire Wire Line
	7050 4450 7550 4450
Connection ~ 7550 4450
Wire Wire Line
	7550 4500 7550 4450
Wire Wire Line
	7550 4450 8050 4450
Connection ~ 8050 4450
Wire Wire Line
	8050 4500 8050 4450
Wire Wire Line
	8050 4450 8550 4450
Connection ~ 8550 4450
Wire Wire Line
	8550 4500 8550 4450
Wire Wire Line
	8550 4450 9050 4450
Wire Wire Line
	9050 4450 9550 4450
Connection ~ 9050 4450
Wire Wire Line
	9050 4500 9050 4450
Wire Wire Line
	9550 4450 9550 4500
Connection ~ 7050 4450
Wire Wire Line
	6550 4450 7050 4450
Wire Wire Line
	6550 4500 6550 4450
Wire Wire Line
	6550 4850 6550 4800
Wire Wire Line
	9550 4800 9550 4850
$Comp
L Device:C C7
U 1 1 6353C961
P 9550 4650
F 0 "C7" H 9665 4696 50  0000 L CNN
F 1 "0.1µF" H 9665 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9588 4500 50  0001 C CNN
F 3 "~" H 9550 4650 50  0001 C CNN
	1    9550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6353C967
P 9050 4650
F 0 "C6" H 9165 4696 50  0000 L CNN
F 1 "0.1µF" H 9165 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9088 4500 50  0001 C CNN
F 3 "~" H 9050 4650 50  0001 C CNN
	1    9050 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6353C96D
P 8550 4650
F 0 "C5" H 8665 4696 50  0000 L CNN
F 1 "0.1µF" H 8665 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8588 4500 50  0001 C CNN
F 3 "~" H 8550 4650 50  0001 C CNN
	1    8550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6353C973
P 8050 4650
F 0 "C4" H 8165 4696 50  0000 L CNN
F 1 "0.1µF" H 8165 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8088 4500 50  0001 C CNN
F 3 "~" H 8050 4650 50  0001 C CNN
	1    8050 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6353C979
P 7550 4650
F 0 "C3" H 7665 4696 50  0000 L CNN
F 1 "0.1µF" H 7665 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 7588 4500 50  0001 C CNN
F 3 "~" H 7550 4650 50  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6353C97F
P 7050 4650
F 0 "C2" H 7165 4696 50  0000 L CNN
F 1 "0.1µF" H 7165 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 7088 4500 50  0001 C CNN
F 3 "~" H 7050 4650 50  0001 C CNN
	1    7050 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6353C985
P 6550 4650
F 0 "C1" H 6665 4696 50  0000 L CNN
F 1 "0.1µF" H 6665 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6588 4500 50  0001 C CNN
F 3 "~" H 6550 4650 50  0001 C CNN
	1    6550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5950 10050 6000
Wire Wire Line
	10050 6300 10050 6350
$Comp
L Device:CP1 C?
U 1 1 6353C98D
P 10050 6150
AR Path="/61BE126B/6353C98D" Ref="C?"  Part="1" 
AR Path="/6353C98D" Ref="C30"  Part="1" 
AR Path="/61D74077/6353C98D" Ref="C?"  Part="1" 
AR Path="/621D2996/6353C98D" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353C98D" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353C98D" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353C98D" Ref="C?"  Part="1" 
F 0 "C30" H 9900 6200 50  0000 R CNN
F 1 "10µF" H 9900 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10050 6150 50  0001 C CNN
F 3 "~" H 10050 6150 50  0001 C CNN
	1    10050 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 5800 10050 5850
Wire Wire Line
	10050 5450 10050 5500
$Comp
L Device:CP1 C?
U 1 1 6353C995
P 10050 5650
AR Path="/61BE126B/6353C995" Ref="C?"  Part="1" 
AR Path="/6353C995" Ref="C22"  Part="1" 
AR Path="/61D74077/6353C995" Ref="C?"  Part="1" 
AR Path="/621D2996/6353C995" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353C995" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353C995" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353C995" Ref="C?"  Part="1" 
F 0 "C22" H 9900 5700 50  0000 R CNN
F 1 "10µF" H 9900 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10050 5650 50  0001 C CNN
F 3 "~" H 10050 5650 50  0001 C CNN
	1    10050 5650
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x22 J10
U 1 1 6353C99B
P 4000 5250
F 0 "J10" V 4200 5250 50  0000 C CNN
F 1 "BB2" V 4100 5250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x22_P2.54mm_Vertical" H 4000 5250 50  0001 C CNN
F 3 "~" H 4000 5250 50  0001 C CNN
	1    4000 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 5950 9550 5950
Wire Wire Line
	9550 5950 9550 6000
Wire Wire Line
	10050 6350 9550 6350
Wire Wire Line
	9550 6300 9550 6350
$Comp
L Device:CP1 C?
U 1 1 6353C9A8
P 9550 6150
AR Path="/61BE126B/6353C9A8" Ref="C?"  Part="1" 
AR Path="/6353C9A8" Ref="C29"  Part="1" 
AR Path="/61D74077/6353C9A8" Ref="C?"  Part="1" 
AR Path="/621D2996/6353C9A8" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353C9A8" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353C9A8" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353C9A8" Ref="C?"  Part="1" 
F 0 "C29" H 9400 6200 50  0000 R CNN
F 1 "10µF" H 9400 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9550 6150 50  0001 C CNN
F 3 "~" H 9550 6150 50  0001 C CNN
	1    9550 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9550 6350 9050 6350
Connection ~ 9050 6350
Wire Wire Line
	9050 6300 9050 6350
Wire Wire Line
	9550 5950 9050 5950
Connection ~ 9050 5950
Wire Wire Line
	9050 5950 9050 6000
$Comp
L Device:CP1 C?
U 1 1 6353C9B4
P 9050 6150
AR Path="/61BE126B/6353C9B4" Ref="C?"  Part="1" 
AR Path="/6353C9B4" Ref="C28"  Part="1" 
AR Path="/61D74077/6353C9B4" Ref="C?"  Part="1" 
AR Path="/621D2996/6353C9B4" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353C9B4" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353C9B4" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353C9B4" Ref="C?"  Part="1" 
F 0 "C28" H 8900 6200 50  0000 R CNN
F 1 "10µF" H 8900 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9050 6150 50  0001 C CNN
F 3 "~" H 9050 6150 50  0001 C CNN
	1    9050 6150
	-1   0    0    -1  
$EndComp
Text Label 1900 7500 2    50   ~ 0
+5V
Text Label 700  4500 0    50   ~ 0
+5V
Text Label 1900 7100 2    50   ~ 0
CLK
Text Label 1900 7200 2    50   ~ 0
~CLK
Wire Wire Line
	1700 7000 1900 7000
Text Label 1900 7000 2    50   ~ 0
~RST
Text Label 1900 6100 2    50   ~ 0
A15
Text Label 1900 6000 2    50   ~ 0
A14
Text Label 1900 5900 2    50   ~ 0
A13
Text Label 1900 5800 2    50   ~ 0
A12
Text Label 1900 5700 2    50   ~ 0
A11
Text Label 1900 5600 2    50   ~ 0
A10
Text Label 1900 5500 2    50   ~ 0
A9
Text Label 1900 5400 2    50   ~ 0
A8
Text Label 1900 5300 2    50   ~ 0
A7
Text Label 1900 5200 2    50   ~ 0
A6
Text Label 1900 5100 2    50   ~ 0
A5
Text Label 1900 5000 2    50   ~ 0
A4
Text Label 1900 4900 2    50   ~ 0
A3
Text Label 1900 4800 2    50   ~ 0
A2
Text Label 1900 4700 2    50   ~ 0
A1
Text Label 1900 4600 2    50   ~ 0
A0
Wire Wire Line
	1700 7500 1900 7500
Wire Wire Line
	1700 6100 1900 6100
Wire Wire Line
	1700 6000 1900 6000
Wire Wire Line
	1700 5900 1900 5900
Wire Wire Line
	1700 5800 1900 5800
Wire Wire Line
	1700 5700 1900 5700
Wire Wire Line
	1700 5600 1900 5600
Wire Wire Line
	1700 5500 1900 5500
Wire Wire Line
	1700 5400 1900 5400
Wire Wire Line
	1700 5300 1900 5300
Wire Wire Line
	1700 5200 1900 5200
Wire Wire Line
	1700 5100 1900 5100
Wire Wire Line
	1700 5000 1900 5000
Wire Wire Line
	1700 4900 1900 4900
Wire Wire Line
	1700 4800 1900 4800
Wire Wire Line
	1700 4700 1900 4700
Wire Wire Line
	1700 4600 1900 4600
Wire Wire Line
	900  4500 700  4500
Wire Wire Line
	1700 7200 1900 7200
Wire Wire Line
	1700 7300 1900 7300
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J8
U 1 1 6353CA1C
P 1300 4400
F 0 "J8" H 1300 4565 50  0000 C CNN
F 1 "ISA 8" H 1300 4474 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 1100 1100 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 1800 4400 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 1050 1000 50  0001 L CNN "Description"
F 5 "15.494" H 1050 900 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 1050 800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 1050 700 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 1050 600 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 1050 500 50  0001 L CNN "Manufacturer_Part_Number"
	1    1300 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x40 J9
U 1 1 6353CA22
P 4000 4550
F 0 "J9" V 4200 4550 50  0000 C CNN
F 1 "BB1" V 4100 4550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 4000 4550 50  0001 C CNN
F 3 "~" H 4000 4550 50  0001 C CNN
	1    4000 4550
	0    -1   -1   0   
$EndComp
Text Label 4900 5650 1    50   ~ 0
~IRQ8
Text Label 4800 5650 1    50   ~ 0
~IRQ7
Text Label 4700 5650 1    50   ~ 0
~IRQ6
Text Label 4600 5650 1    50   ~ 0
~IRQ5
Text Label 4500 5650 1    50   ~ 0
~IRQ4
Text Label 4400 5650 1    50   ~ 0
~IRQ3
Text Label 4300 5650 1    50   ~ 0
~IRQ2
Text Label 4200 5650 1    50   ~ 0
~IRQ1
Text Label 2200 4950 1    50   ~ 0
+5V
Text Label 5000 5650 1    50   ~ 0
+5V
Text Label 2100 4950 1    50   ~ 0
GND
Text Label 5100 5650 1    50   ~ 0
GND
Wire Wire Line
	5100 5450 5100 5650
Wire Wire Line
	5000 5450 5000 5650
Wire Wire Line
	4900 5450 4900 5650
Wire Wire Line
	4800 5450 4800 5650
Wire Wire Line
	4700 5450 4700 5650
Wire Wire Line
	4600 5450 4600 5650
Wire Wire Line
	4500 5450 4500 5650
Wire Wire Line
	4400 5450 4400 5650
Wire Wire Line
	4300 5450 4300 5650
Wire Wire Line
	4200 5450 4200 5650
Wire Wire Line
	2200 4750 2200 4950
Wire Wire Line
	2100 4750 2100 4950
Text Label 3800 4950 1    50   ~ 0
A15
Text Label 3700 4950 1    50   ~ 0
A14
Text Label 3600 4950 1    50   ~ 0
A13
Text Label 3500 4950 1    50   ~ 0
A12
Text Label 3400 4950 1    50   ~ 0
A11
Text Label 3300 4950 1    50   ~ 0
A10
Text Label 3200 4950 1    50   ~ 0
A9
Text Label 3100 4950 1    50   ~ 0
A8
Text Label 3000 4950 1    50   ~ 0
A7
Text Label 2900 4950 1    50   ~ 0
A6
Text Label 2800 4950 1    50   ~ 0
A5
Text Label 2700 4950 1    50   ~ 0
A4
Text Label 2600 4950 1    50   ~ 0
A3
Text Label 2500 4950 1    50   ~ 0
A2
Text Label 2400 4950 1    50   ~ 0
A1
Text Label 2300 4950 1    50   ~ 0
A0
Wire Wire Line
	3800 4750 3800 4950
Wire Wire Line
	3700 4750 3700 4950
Wire Wire Line
	3600 4750 3600 4950
Wire Wire Line
	3500 4750 3500 4950
Wire Wire Line
	3400 4750 3400 4950
Wire Wire Line
	3300 4750 3300 4950
Wire Wire Line
	3200 4750 3200 4950
Wire Wire Line
	3100 4750 3100 4950
Wire Wire Line
	3000 4750 3000 4950
Wire Wire Line
	2900 4750 2900 4950
Wire Wire Line
	2800 4750 2800 4950
Wire Wire Line
	2700 4750 2700 4950
Wire Wire Line
	2600 4750 2600 4950
Wire Wire Line
	2500 4750 2500 4950
Wire Wire Line
	2400 4750 2400 4950
Wire Wire Line
	2300 4750 2300 4950
Wire Wire Line
	9050 5950 8550 5950
Connection ~ 8550 5950
Wire Wire Line
	8550 5950 8550 6000
Wire Wire Line
	8550 6350 9050 6350
Connection ~ 8550 6350
Wire Wire Line
	8550 6300 8550 6350
$Comp
L Device:CP1 C?
U 1 1 6353CA66
P 8550 6150
AR Path="/61BE126B/6353CA66" Ref="C?"  Part="1" 
AR Path="/6353CA66" Ref="C27"  Part="1" 
AR Path="/61D74077/6353CA66" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CA66" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CA66" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CA66" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CA66" Ref="C?"  Part="1" 
F 0 "C27" H 8400 6200 50  0000 R CNN
F 1 "10µF" H 8400 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8550 6150 50  0001 C CNN
F 3 "~" H 8550 6150 50  0001 C CNN
	1    8550 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 6350 8050 6350
Connection ~ 8050 6350
Wire Wire Line
	8050 6300 8050 6350
Wire Wire Line
	8550 5950 8050 5950
Connection ~ 8050 5950
Wire Wire Line
	8050 5950 8050 6000
$Comp
L Device:CP1 C?
U 1 1 6353CA72
P 8050 6150
AR Path="/61BE126B/6353CA72" Ref="C?"  Part="1" 
AR Path="/6353CA72" Ref="C26"  Part="1" 
AR Path="/61D74077/6353CA72" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CA72" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CA72" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CA72" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CA72" Ref="C?"  Part="1" 
F 0 "C26" H 7900 6200 50  0000 R CNN
F 1 "10µF" H 7900 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8050 6150 50  0001 C CNN
F 3 "~" H 8050 6150 50  0001 C CNN
	1    8050 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 6300 7050 6350
Wire Wire Line
	7550 6350 8050 6350
Wire Wire Line
	7050 6350 7550 6350
Connection ~ 7550 6350
Wire Wire Line
	7550 6300 7550 6350
Wire Wire Line
	8050 5950 7550 5950
Connection ~ 7550 5950
Wire Wire Line
	7550 5950 7550 6000
Wire Wire Line
	7550 5950 7050 5950
Wire Wire Line
	7050 5950 6550 5950
Connection ~ 7050 5950
Wire Wire Line
	7050 5950 7050 6000
Wire Wire Line
	6550 5950 6550 6000
Connection ~ 7050 6350
Wire Wire Line
	6550 6350 7050 6350
Wire Wire Line
	6550 6300 6550 6350
$Comp
L Device:CP1 C?
U 1 1 6353CA98
P 7550 6150
AR Path="/61BE126B/6353CA98" Ref="C?"  Part="1" 
AR Path="/6353CA98" Ref="C25"  Part="1" 
AR Path="/61D74077/6353CA98" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CA98" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CA98" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CA98" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CA98" Ref="C?"  Part="1" 
F 0 "C25" H 7400 6200 50  0000 R CNN
F 1 "10µF" H 7400 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7550 6150 50  0001 C CNN
F 3 "~" H 7550 6150 50  0001 C CNN
	1    7550 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6353CA9E
P 7050 6150
AR Path="/61BE126B/6353CA9E" Ref="C?"  Part="1" 
AR Path="/6353CA9E" Ref="C24"  Part="1" 
AR Path="/61D74077/6353CA9E" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CA9E" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CA9E" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CA9E" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CA9E" Ref="C?"  Part="1" 
F 0 "C24" H 6900 6200 50  0000 R CNN
F 1 "10µF" H 6900 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7050 6150 50  0001 C CNN
F 3 "~" H 7050 6150 50  0001 C CNN
	1    7050 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6353CAA4
P 6550 6150
AR Path="/61BE126B/6353CAA4" Ref="C?"  Part="1" 
AR Path="/6353CAA4" Ref="C23"  Part="1" 
AR Path="/61D74077/6353CAA4" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CAA4" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CAA4" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CAA4" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CAA4" Ref="C?"  Part="1" 
F 0 "C23" H 6400 6200 50  0000 R CNN
F 1 "10µF" H 6400 6100 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6550 6150 50  0001 C CNN
F 3 "~" H 6550 6150 50  0001 C CNN
	1    6550 6150
	-1   0    0    -1  
$EndComp
Connection ~ 9050 5850
Wire Wire Line
	9050 5800 9050 5850
Wire Wire Line
	9550 5850 10050 5850
Wire Wire Line
	9050 5850 9550 5850
Connection ~ 9550 5850
Wire Wire Line
	9550 5800 9550 5850
Wire Wire Line
	10050 5450 9550 5450
Connection ~ 9550 5450
Wire Wire Line
	9550 5450 9550 5500
Wire Wire Line
	9550 5450 9050 5450
Connection ~ 9050 5450
Wire Wire Line
	9050 5450 9050 5500
Wire Wire Line
	9050 5450 8550 5450
Connection ~ 8550 5450
Wire Wire Line
	8550 5450 8550 5500
Wire Wire Line
	8550 5850 9050 5850
Connection ~ 8550 5850
Wire Wire Line
	8550 5800 8550 5850
$Comp
L Device:CP1 C?
U 1 1 6353CABC
P 9550 5650
AR Path="/61BE126B/6353CABC" Ref="C?"  Part="1" 
AR Path="/6353CABC" Ref="C21"  Part="1" 
AR Path="/61D74077/6353CABC" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CABC" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CABC" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CABC" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CABC" Ref="C?"  Part="1" 
F 0 "C21" H 9400 5700 50  0000 R CNN
F 1 "10µF" H 9400 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9550 5650 50  0001 C CNN
F 3 "~" H 9550 5650 50  0001 C CNN
	1    9550 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6353CAC2
P 9050 5650
AR Path="/61BE126B/6353CAC2" Ref="C?"  Part="1" 
AR Path="/6353CAC2" Ref="C20"  Part="1" 
AR Path="/61D74077/6353CAC2" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CAC2" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CAC2" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CAC2" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CAC2" Ref="C?"  Part="1" 
F 0 "C20" H 8900 5700 50  0000 R CNN
F 1 "10µF" H 8900 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9050 5650 50  0001 C CNN
F 3 "~" H 9050 5650 50  0001 C CNN
	1    9050 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6353CAC8
P 8550 5650
AR Path="/61BE126B/6353CAC8" Ref="C?"  Part="1" 
AR Path="/6353CAC8" Ref="C19"  Part="1" 
AR Path="/61D74077/6353CAC8" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CAC8" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CAC8" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CAC8" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CAC8" Ref="C?"  Part="1" 
F 0 "C19" H 8400 5700 50  0000 R CNN
F 1 "10µF" H 8400 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8550 5650 50  0001 C CNN
F 3 "~" H 8550 5650 50  0001 C CNN
	1    8550 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 5850 8050 5850
Connection ~ 8050 5850
Wire Wire Line
	8050 5800 8050 5850
Wire Wire Line
	8550 5450 8050 5450
Connection ~ 8050 5450
Wire Wire Line
	8050 5450 8050 5500
$Comp
L Device:CP1 C?
U 1 1 6353CAD4
P 8050 5650
AR Path="/61BE126B/6353CAD4" Ref="C?"  Part="1" 
AR Path="/6353CAD4" Ref="C18"  Part="1" 
AR Path="/61D74077/6353CAD4" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CAD4" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CAD4" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CAD4" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CAD4" Ref="C?"  Part="1" 
F 0 "C18" H 7900 5700 50  0000 R CNN
F 1 "10µF" H 7900 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8050 5650 50  0001 C CNN
F 3 "~" H 8050 5650 50  0001 C CNN
	1    8050 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 5800 7050 5850
Wire Wire Line
	7550 5850 8050 5850
Wire Wire Line
	7050 5850 7550 5850
Connection ~ 7550 5850
Wire Wire Line
	7550 5800 7550 5850
Wire Wire Line
	8050 5450 7550 5450
Connection ~ 7550 5450
Wire Wire Line
	7550 5450 7550 5500
Wire Wire Line
	7550 5450 7050 5450
Wire Wire Line
	7050 5450 6550 5450
Connection ~ 7050 5450
Wire Wire Line
	7050 5450 7050 5500
Wire Wire Line
	6550 5450 6550 5500
Connection ~ 7050 5850
Wire Wire Line
	6550 5850 7050 5850
Wire Wire Line
	6550 5800 6550 5850
$Comp
L Device:CP1 C?
U 1 1 6353CAFA
P 7550 5650
AR Path="/61BE126B/6353CAFA" Ref="C?"  Part="1" 
AR Path="/6353CAFA" Ref="C17"  Part="1" 
AR Path="/61D74077/6353CAFA" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CAFA" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CAFA" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CAFA" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CAFA" Ref="C?"  Part="1" 
F 0 "C17" H 7400 5700 50  0000 R CNN
F 1 "10µF" H 7400 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7550 5650 50  0001 C CNN
F 3 "~" H 7550 5650 50  0001 C CNN
	1    7550 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6353CB00
P 7050 5650
AR Path="/61BE126B/6353CB00" Ref="C?"  Part="1" 
AR Path="/6353CB00" Ref="C16"  Part="1" 
AR Path="/61D74077/6353CB00" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CB00" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CB00" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CB00" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CB00" Ref="C?"  Part="1" 
F 0 "C16" H 6900 5700 50  0000 R CNN
F 1 "10µF" H 6900 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7050 5650 50  0001 C CNN
F 3 "~" H 7050 5650 50  0001 C CNN
	1    7050 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6353CB06
P 6550 5650
AR Path="/61BE126B/6353CB06" Ref="C?"  Part="1" 
AR Path="/6353CB06" Ref="C15"  Part="1" 
AR Path="/61D74077/6353CB06" Ref="C?"  Part="1" 
AR Path="/621D2996/6353CB06" Ref="C?"  Part="1" 
AR Path="/636AFA21/6353CB06" Ref="C?"  Part="1" 
AR Path="/61DA6806/6353CB06" Ref="C?"  Part="1" 
AR Path="/6292B0D2/6353CB06" Ref="C?"  Part="1" 
F 0 "C15" H 6400 5700 50  0000 R CNN
F 1 "10µF" H 6400 5600 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6550 5650 50  0001 C CNN
F 3 "~" H 6550 5650 50  0001 C CNN
	1    6550 5650
	-1   0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J1
U 1 1 6353CB42
P 1300 800
F 0 "J1" H 1300 965 50  0000 C CNN
F 1 "ISA 1" H 1300 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 1100 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 1800 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 1050 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 1050 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 1050 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 1050 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 1050 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 1050 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    1300 800 
	1    0    0    -1  
$EndComp
Text Label 700  2700 0    50   ~ 0
MX
Text Label 700  2800 0    50   ~ 0
E
Text Label 700  2900 0    50   ~ 0
USR
Wire Wire Line
	3200 5450 3200 5650
Wire Wire Line
	3100 5450 3100 5650
Wire Wire Line
	3500 5650 3500 5450
Wire Wire Line
	3400 5650 3400 5450
Wire Wire Line
	3300 5650 3300 5450
Text Label 3100 5650 1    50   ~ 0
VDA
Text Label 3200 5650 1    50   ~ 0
VPA
Text Label 3300 5650 1    50   ~ 0
MX
Text Label 3400 5650 1    50   ~ 0
E
Text Label 3500 5650 1    50   ~ 0
USR
Wire Wire Line
	900  6200 700  6200
Wire Wire Line
	900  6100 700  6100
Wire Wire Line
	700  6500 900  6500
Wire Wire Line
	700  6400 900  6400
Wire Wire Line
	700  6300 900  6300
Text Label 700  6100 0    50   ~ 0
VDA
Text Label 700  6200 0    50   ~ 0
VPA
Wire Wire Line
	900  6600 700  6600
Text Label 700  6600 0    50   ~ 0
~IOSEL
Text Label 700  6000 0    50   ~ 0
~ML
Text Label 700  5900 0    50   ~ 0
~VP
Wire Wire Line
	900  6000 700  6000
Wire Wire Line
	900  5900 700  5900
Wire Wire Line
	900  5500 700  5500
Wire Wire Line
	900  5600 700  5600
Wire Wire Line
	900  5800 700  5800
Wire Wire Line
	900  5700 700  5700
Text Label 700  5800 0    50   ~ 0
BE
Text Label 700  5700 0    50   ~ 0
SYNC
Text Label 700  5600 0    50   ~ 0
RDY
Text Label 700  5300 0    50   ~ 0
~IRQ8
Text Label 700  5200 0    50   ~ 0
~IRQ7
Text Label 700  5100 0    50   ~ 0
~IRQ6
Text Label 700  5000 0    50   ~ 0
~IRQ5
Text Label 700  4900 0    50   ~ 0
~IRQ4
Text Label 700  4800 0    50   ~ 0
~IRQ3
Text Label 700  4700 0    50   ~ 0
~IRQ2
Text Label 700  4600 0    50   ~ 0
~IRQ1
Text Label 700  5400 0    50   ~ 0
~NMI
Text Label 700  5500 0    50   ~ 0
R~W
Text Label 1900 4500 2    50   ~ 0
GND
Text Label 700  7500 0    50   ~ 0
GND
Text Label 700  7400 0    50   ~ 0
D7
Text Label 700  7300 0    50   ~ 0
D6
Text Label 700  7200 0    50   ~ 0
D5
Text Label 700  7100 0    50   ~ 0
D4
Text Label 700  7000 0    50   ~ 0
D3
Text Label 700  6900 0    50   ~ 0
D2
Text Label 700  6800 0    50   ~ 0
D1
Text Label 700  6700 0    50   ~ 0
D0
Wire Wire Line
	900  7400 700  7400
Wire Wire Line
	900  7300 700  7300
Wire Wire Line
	900  7200 700  7200
Wire Wire Line
	900  7100 700  7100
Wire Wire Line
	900  7000 700  7000
Wire Wire Line
	900  6900 700  6900
Wire Wire Line
	900  6800 700  6800
Wire Wire Line
	900  6700 700  6700
Wire Wire Line
	900  7500 700  7500
Wire Wire Line
	900  5300 700  5300
Wire Wire Line
	900  5200 700  5200
Wire Wire Line
	900  5100 700  5100
Wire Wire Line
	900  5000 700  5000
Wire Wire Line
	900  4900 700  4900
Wire Wire Line
	900  4800 700  4800
Wire Wire Line
	900  4700 700  4700
Wire Wire Line
	900  4600 700  4600
Wire Wire Line
	900  5400 700  5400
Wire Wire Line
	1700 4500 1900 4500
Text Label 700  6300 0    50   ~ 0
MX
Text Label 700  6400 0    50   ~ 0
E
Text Label 700  6500 0    50   ~ 0
USR
Connection ~ 9550 5950
Connection ~ 9550 6350
Wire Wire Line
	6250 4450 6250 4400
$Comp
L power:+5V #PWR?
U 1 1 6353C933
P 6250 4400
AR Path="/61D87109/6353C933" Ref="#PWR?"  Part="1" 
AR Path="/6353C933" Ref="#PWR01"  Part="1" 
AR Path="/61DA6806/6353C933" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/6353C933" Ref="#PWR?"  Part="1" 
AR Path="/6292B0D2/6353C933" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 6250 4250 50  0001 C CNN
F 1 "+5V" H 6265 4573 50  0000 C CNN
F 2 "" H 6250 4400 50  0001 C CNN
F 3 "" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4850 9050 4850
Connection ~ 9050 4850
Connection ~ 7050 4850
Wire Wire Line
	7050 4850 6550 4850
Wire Wire Line
	7550 4850 7050 4850
Connection ~ 7550 4850
Wire Wire Line
	8050 4850 7550 4850
Connection ~ 8050 4850
Wire Wire Line
	8550 4850 8050 4850
Connection ~ 8550 4850
Wire Wire Line
	9050 4850 8550 4850
$Comp
L Device:C C8
U 1 1 6353C927
P 6550 5150
F 0 "C8" H 6665 5196 50  0000 L CNN
F 1 "0.1µF" H 6665 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6588 5000 50  0001 C CNN
F 3 "~" H 6550 5150 50  0001 C CNN
	1    6550 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6353C921
P 7050 5150
F 0 "C9" H 7165 5196 50  0000 L CNN
F 1 "0.1µF" H 7165 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 7088 5000 50  0001 C CNN
F 3 "~" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 6353C91B
P 7550 5150
F 0 "C10" H 7665 5196 50  0000 L CNN
F 1 "0.1µF" H 7665 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 7588 5000 50  0001 C CNN
F 3 "~" H 7550 5150 50  0001 C CNN
	1    7550 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 6353C915
P 8050 5150
F 0 "C11" H 8165 5196 50  0000 L CNN
F 1 "0.1µF" H 8165 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8088 5000 50  0001 C CNN
F 3 "~" H 8050 5150 50  0001 C CNN
	1    8050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6353C90F
P 8550 5150
F 0 "C12" H 8665 5196 50  0000 L CNN
F 1 "0.1µF" H 8665 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8588 5000 50  0001 C CNN
F 3 "~" H 8550 5150 50  0001 C CNN
	1    8550 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 6353C909
P 9050 5150
F 0 "C13" H 9165 5196 50  0000 L CNN
F 1 "0.1µF" H 9165 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9088 5000 50  0001 C CNN
F 3 "~" H 9050 5150 50  0001 C CNN
	1    9050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 6353C903
P 9550 5150
F 0 "C14" H 9665 5196 50  0000 L CNN
F 1 "0.1µF" H 9665 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9588 5000 50  0001 C CNN
F 3 "~" H 9550 5150 50  0001 C CNN
	1    9550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5300 9550 5350
Wire Wire Line
	9550 5350 9050 5350
Connection ~ 9050 5350
Wire Wire Line
	6550 5350 6550 5300
Wire Wire Line
	6550 5000 6550 4950
Wire Wire Line
	6550 4950 7050 4950
Connection ~ 7050 4950
Wire Wire Line
	9550 4950 9550 5000
Wire Wire Line
	9050 5000 9050 4950
Connection ~ 9050 4950
Wire Wire Line
	9050 4950 9550 4950
Wire Wire Line
	8550 4950 9050 4950
Wire Wire Line
	8550 5000 8550 4950
Connection ~ 8550 4950
Wire Wire Line
	8050 4950 8550 4950
Wire Wire Line
	8050 5000 8050 4950
Connection ~ 8050 4950
Wire Wire Line
	7550 4950 8050 4950
Wire Wire Line
	7550 5000 7550 4950
Connection ~ 7550 4950
Wire Wire Line
	7050 4950 7550 4950
Wire Wire Line
	7050 5000 7050 4950
Wire Wire Line
	7050 5300 7050 5350
Connection ~ 7050 5350
Wire Wire Line
	7050 5350 6550 5350
Wire Wire Line
	7550 5350 7050 5350
Wire Wire Line
	7550 5300 7550 5350
Connection ~ 7550 5350
Wire Wire Line
	8050 5350 7550 5350
Wire Wire Line
	8050 5300 8050 5350
Connection ~ 8050 5350
Wire Wire Line
	8550 5350 8050 5350
Wire Wire Line
	8550 5300 8550 5350
Connection ~ 8550 5350
Wire Wire Line
	9050 5350 8550 5350
Wire Wire Line
	9050 5300 9050 5350
Wire Wire Line
	6350 6350 6350 6400
$Comp
L power:GND #PWR?
U 1 1 640E393C
P 6350 6400
AR Path="/61DA6806/640E393C" Ref="#PWR?"  Part="1" 
AR Path="/636AFA21/640E393C" Ref="#PWR?"  Part="1" 
AR Path="/640E393C" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 6350 6150 50  0001 C CNN
F 1 "GND" H 6355 6227 50  0000 C CNN
F 2 "" H 6350 6400 50  0001 C CNN
F 3 "" H 6350 6400 50  0001 C CNN
	1    6350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6350 6550 6350
Connection ~ 6550 6350
Wire Wire Line
	6350 6350 6350 5850
Wire Wire Line
	6350 5850 6550 5850
Connection ~ 6350 6350
Connection ~ 6550 5850
Wire Wire Line
	6350 5850 6350 5350
Wire Wire Line
	6350 5350 6550 5350
Connection ~ 6350 5850
Connection ~ 6550 5350
Wire Wire Line
	6350 5350 6350 4850
Wire Wire Line
	6350 4850 6550 4850
Connection ~ 6350 5350
Connection ~ 6550 4850
Wire Wire Line
	6250 4450 6550 4450
Connection ~ 6550 4450
Wire Wire Line
	6250 4450 6250 4950
Wire Wire Line
	6250 4950 6550 4950
Connection ~ 6250 4450
Connection ~ 6550 4950
Wire Wire Line
	6250 4950 6250 5450
Wire Wire Line
	6250 5450 6550 5450
Connection ~ 6250 4950
Connection ~ 6550 5450
Wire Wire Line
	6250 5450 6250 5950
Wire Wire Line
	6250 5950 6550 5950
Connection ~ 6250 5450
Connection ~ 6550 5950
Text Label 9100 2900 0    50   ~ 0
USR
Text Label 9100 2800 0    50   ~ 0
E
Text Label 9100 2700 0    50   ~ 0
MX
Wire Wire Line
	10100 900  10300 900 
Wire Wire Line
	9300 1800 9100 1800
Wire Wire Line
	9300 1000 9100 1000
Wire Wire Line
	9300 1100 9100 1100
Wire Wire Line
	9300 1200 9100 1200
Wire Wire Line
	9300 1300 9100 1300
Wire Wire Line
	9300 1400 9100 1400
Wire Wire Line
	9300 1500 9100 1500
Wire Wire Line
	9300 1600 9100 1600
Wire Wire Line
	9300 1700 9100 1700
Wire Wire Line
	9300 3900 9100 3900
Wire Wire Line
	9300 3100 9100 3100
Wire Wire Line
	9300 3200 9100 3200
Wire Wire Line
	9300 3300 9100 3300
Wire Wire Line
	9300 3400 9100 3400
Wire Wire Line
	9300 3500 9100 3500
Wire Wire Line
	9300 3600 9100 3600
Wire Wire Line
	9300 3700 9100 3700
Wire Wire Line
	9300 3800 9100 3800
Text Label 9100 3100 0    50   ~ 0
D0
Text Label 9100 3200 0    50   ~ 0
D1
Text Label 9100 3300 0    50   ~ 0
D2
Text Label 9100 3400 0    50   ~ 0
D3
Text Label 9100 3500 0    50   ~ 0
D4
Text Label 9100 3600 0    50   ~ 0
D5
Text Label 9100 3700 0    50   ~ 0
D6
Text Label 9100 3800 0    50   ~ 0
D7
Text Label 9100 3900 0    50   ~ 0
GND
Text Label 10300 900  2    50   ~ 0
GND
Text Label 9100 1900 0    50   ~ 0
R~W
Text Label 9100 1800 0    50   ~ 0
~NMI
Text Label 9100 1000 0    50   ~ 0
~IRQ1
Text Label 9100 1100 0    50   ~ 0
~IRQ2
Text Label 9100 1200 0    50   ~ 0
~IRQ3
Text Label 9100 1300 0    50   ~ 0
~IRQ4
Text Label 9100 1400 0    50   ~ 0
~IRQ5
Text Label 9100 1500 0    50   ~ 0
~IRQ6
Text Label 9100 1600 0    50   ~ 0
~IRQ7
Text Label 9100 1700 0    50   ~ 0
~IRQ8
Text Label 9100 2000 0    50   ~ 0
RDY
Text Label 9100 2100 0    50   ~ 0
SYNC
Text Label 9100 2200 0    50   ~ 0
BE
Wire Wire Line
	9300 2100 9100 2100
Wire Wire Line
	9300 2200 9100 2200
Wire Wire Line
	9300 2000 9100 2000
Wire Wire Line
	9300 1900 9100 1900
Wire Wire Line
	9300 2300 9100 2300
Wire Wire Line
	9300 2400 9100 2400
Text Label 9100 2300 0    50   ~ 0
~VP
Text Label 9100 2400 0    50   ~ 0
~ML
Text Label 9100 3000 0    50   ~ 0
~IOSEL
Wire Wire Line
	9300 3000 9100 3000
Text Label 9100 2600 0    50   ~ 0
VPA
Text Label 9100 2500 0    50   ~ 0
VDA
Wire Wire Line
	9100 2700 9300 2700
Wire Wire Line
	9100 2800 9300 2800
Wire Wire Line
	9100 2900 9300 2900
Wire Wire Line
	9300 2500 9100 2500
Wire Wire Line
	9300 2600 9100 2600
Text Label 7700 2900 0    50   ~ 0
USR
Text Label 7700 2800 0    50   ~ 0
E
Text Label 7700 2700 0    50   ~ 0
MX
Wire Wire Line
	8700 900  8900 900 
Wire Wire Line
	7900 1800 7700 1800
Wire Wire Line
	7900 1000 7700 1000
Wire Wire Line
	7900 1100 7700 1100
Wire Wire Line
	7900 1200 7700 1200
Wire Wire Line
	7900 1300 7700 1300
Wire Wire Line
	7900 1400 7700 1400
Wire Wire Line
	7900 1500 7700 1500
Wire Wire Line
	7900 1600 7700 1600
Wire Wire Line
	7900 1700 7700 1700
Wire Wire Line
	7900 3900 7700 3900
Wire Wire Line
	7900 3100 7700 3100
Wire Wire Line
	7900 3200 7700 3200
Wire Wire Line
	7900 3300 7700 3300
Wire Wire Line
	7900 3400 7700 3400
Wire Wire Line
	7900 3500 7700 3500
Wire Wire Line
	7900 3600 7700 3600
Wire Wire Line
	7900 3700 7700 3700
Wire Wire Line
	7900 3800 7700 3800
Text Label 7700 3100 0    50   ~ 0
D0
Text Label 7700 3200 0    50   ~ 0
D1
Text Label 7700 3300 0    50   ~ 0
D2
Text Label 7700 3400 0    50   ~ 0
D3
Text Label 7700 3500 0    50   ~ 0
D4
Text Label 7700 3600 0    50   ~ 0
D5
Text Label 7700 3700 0    50   ~ 0
D6
Text Label 7700 3800 0    50   ~ 0
D7
Text Label 7700 3900 0    50   ~ 0
GND
Text Label 8900 900  2    50   ~ 0
GND
Text Label 7700 1900 0    50   ~ 0
R~W
Text Label 7700 1800 0    50   ~ 0
~NMI
Text Label 7700 1000 0    50   ~ 0
~IRQ1
Text Label 7700 1100 0    50   ~ 0
~IRQ2
Text Label 7700 1200 0    50   ~ 0
~IRQ3
Text Label 7700 1300 0    50   ~ 0
~IRQ4
Text Label 7700 1400 0    50   ~ 0
~IRQ5
Text Label 7700 1500 0    50   ~ 0
~IRQ6
Text Label 7700 1600 0    50   ~ 0
~IRQ7
Text Label 7700 1700 0    50   ~ 0
~IRQ8
Text Label 7700 2000 0    50   ~ 0
RDY
Text Label 7700 2100 0    50   ~ 0
SYNC
Text Label 7700 2200 0    50   ~ 0
BE
Wire Wire Line
	7900 2100 7700 2100
Wire Wire Line
	7900 2200 7700 2200
Wire Wire Line
	7900 2000 7700 2000
Wire Wire Line
	7900 1900 7700 1900
Wire Wire Line
	7900 2300 7700 2300
Wire Wire Line
	7900 2400 7700 2400
Text Label 7700 2300 0    50   ~ 0
~VP
Text Label 7700 2400 0    50   ~ 0
~ML
Text Label 7700 3000 0    50   ~ 0
~IOSEL
Wire Wire Line
	7900 3000 7700 3000
Text Label 7700 2600 0    50   ~ 0
VPA
Text Label 7700 2500 0    50   ~ 0
VDA
Wire Wire Line
	7700 2700 7900 2700
Wire Wire Line
	7700 2800 7900 2800
Wire Wire Line
	7700 2900 7900 2900
Wire Wire Line
	7900 2500 7700 2500
Wire Wire Line
	7900 2600 7700 2600
Text Label 6300 2900 0    50   ~ 0
USR
Text Label 6300 2800 0    50   ~ 0
E
Text Label 6300 2700 0    50   ~ 0
MX
Wire Wire Line
	7300 900  7500 900 
Wire Wire Line
	6500 1800 6300 1800
Wire Wire Line
	6500 1000 6300 1000
Wire Wire Line
	6500 1100 6300 1100
Wire Wire Line
	6500 1200 6300 1200
Wire Wire Line
	6500 1300 6300 1300
Wire Wire Line
	6500 1400 6300 1400
Wire Wire Line
	6500 1500 6300 1500
Wire Wire Line
	6500 1600 6300 1600
Wire Wire Line
	6500 1700 6300 1700
Wire Wire Line
	6500 3900 6300 3900
Wire Wire Line
	6500 3100 6300 3100
Wire Wire Line
	6500 3200 6300 3200
Wire Wire Line
	6500 3300 6300 3300
Wire Wire Line
	6500 3400 6300 3400
Wire Wire Line
	6500 3500 6300 3500
Wire Wire Line
	6500 3600 6300 3600
Wire Wire Line
	6500 3700 6300 3700
Wire Wire Line
	6500 3800 6300 3800
Text Label 6300 3100 0    50   ~ 0
D0
Text Label 6300 3200 0    50   ~ 0
D1
Text Label 6300 3300 0    50   ~ 0
D2
Text Label 6300 3400 0    50   ~ 0
D3
Text Label 6300 3500 0    50   ~ 0
D4
Text Label 6300 3600 0    50   ~ 0
D5
Text Label 6300 3700 0    50   ~ 0
D6
Text Label 6300 3800 0    50   ~ 0
D7
Text Label 6300 3900 0    50   ~ 0
GND
Text Label 7500 900  2    50   ~ 0
GND
Text Label 6300 1900 0    50   ~ 0
R~W
Text Label 6300 1800 0    50   ~ 0
~NMI
Text Label 6300 1000 0    50   ~ 0
~IRQ1
Text Label 6300 1100 0    50   ~ 0
~IRQ2
Text Label 6300 1200 0    50   ~ 0
~IRQ3
Text Label 6300 1300 0    50   ~ 0
~IRQ4
Text Label 6300 1400 0    50   ~ 0
~IRQ5
Text Label 6300 1500 0    50   ~ 0
~IRQ6
Text Label 6300 1600 0    50   ~ 0
~IRQ7
Text Label 6300 1700 0    50   ~ 0
~IRQ8
Text Label 6300 2000 0    50   ~ 0
RDY
Text Label 6300 2100 0    50   ~ 0
SYNC
Text Label 6300 2200 0    50   ~ 0
BE
Wire Wire Line
	6500 2100 6300 2100
Wire Wire Line
	6500 2200 6300 2200
Wire Wire Line
	6500 2000 6300 2000
Wire Wire Line
	6500 1900 6300 1900
Wire Wire Line
	6500 2300 6300 2300
Wire Wire Line
	6500 2400 6300 2400
Text Label 6300 2300 0    50   ~ 0
~VP
Text Label 6300 2400 0    50   ~ 0
~ML
Text Label 6300 3000 0    50   ~ 0
~IOSEL
Wire Wire Line
	6500 3000 6300 3000
Text Label 6300 2600 0    50   ~ 0
VPA
Text Label 6300 2500 0    50   ~ 0
VDA
Wire Wire Line
	6300 2700 6500 2700
Wire Wire Line
	6300 2800 6500 2800
Wire Wire Line
	6300 2900 6500 2900
Wire Wire Line
	6500 2500 6300 2500
Wire Wire Line
	6500 2600 6300 2600
Text Label 4900 2900 0    50   ~ 0
USR
Text Label 4900 2800 0    50   ~ 0
E
Text Label 4900 2700 0    50   ~ 0
MX
Wire Wire Line
	5900 900  6100 900 
Wire Wire Line
	5100 1800 4900 1800
Wire Wire Line
	5100 1000 4900 1000
Wire Wire Line
	5100 1100 4900 1100
Wire Wire Line
	5100 1200 4900 1200
Wire Wire Line
	5100 1300 4900 1300
Wire Wire Line
	5100 1400 4900 1400
Wire Wire Line
	5100 1500 4900 1500
Wire Wire Line
	5100 1600 4900 1600
Wire Wire Line
	5100 1700 4900 1700
Wire Wire Line
	5100 3900 4900 3900
Wire Wire Line
	5100 3100 4900 3100
Wire Wire Line
	5100 3200 4900 3200
Wire Wire Line
	5100 3300 4900 3300
Wire Wire Line
	5100 3400 4900 3400
Wire Wire Line
	5100 3500 4900 3500
Wire Wire Line
	5100 3600 4900 3600
Wire Wire Line
	5100 3700 4900 3700
Wire Wire Line
	5100 3800 4900 3800
Text Label 4900 3100 0    50   ~ 0
D0
Text Label 4900 3200 0    50   ~ 0
D1
Text Label 4900 3300 0    50   ~ 0
D2
Text Label 4900 3400 0    50   ~ 0
D3
Text Label 4900 3500 0    50   ~ 0
D4
Text Label 4900 3600 0    50   ~ 0
D5
Text Label 4900 3700 0    50   ~ 0
D6
Text Label 4900 3800 0    50   ~ 0
D7
Text Label 4900 3900 0    50   ~ 0
GND
Text Label 6100 900  2    50   ~ 0
GND
Text Label 4900 1900 0    50   ~ 0
R~W
Text Label 4900 1800 0    50   ~ 0
~NMI
Text Label 4900 1000 0    50   ~ 0
~IRQ1
Text Label 4900 1100 0    50   ~ 0
~IRQ2
Text Label 4900 1200 0    50   ~ 0
~IRQ3
Text Label 4900 1300 0    50   ~ 0
~IRQ4
Text Label 4900 1400 0    50   ~ 0
~IRQ5
Text Label 4900 1500 0    50   ~ 0
~IRQ6
Text Label 4900 1600 0    50   ~ 0
~IRQ7
Text Label 4900 1700 0    50   ~ 0
~IRQ8
Text Label 4900 2000 0    50   ~ 0
RDY
Text Label 4900 2100 0    50   ~ 0
SYNC
Text Label 4900 2200 0    50   ~ 0
BE
Wire Wire Line
	5100 2100 4900 2100
Wire Wire Line
	5100 2200 4900 2200
Wire Wire Line
	5100 2000 4900 2000
Wire Wire Line
	5100 1900 4900 1900
Wire Wire Line
	5100 2300 4900 2300
Wire Wire Line
	5100 2400 4900 2400
Text Label 4900 2300 0    50   ~ 0
~VP
Text Label 4900 2400 0    50   ~ 0
~ML
Text Label 4900 3000 0    50   ~ 0
~IOSEL
Wire Wire Line
	5100 3000 4900 3000
Text Label 4900 2600 0    50   ~ 0
VPA
Text Label 4900 2500 0    50   ~ 0
VDA
Wire Wire Line
	4900 2700 5100 2700
Wire Wire Line
	4900 2800 5100 2800
Wire Wire Line
	4900 2900 5100 2900
Wire Wire Line
	5100 2500 4900 2500
Wire Wire Line
	5100 2600 4900 2600
Text Label 3500 2900 0    50   ~ 0
USR
Text Label 3500 2800 0    50   ~ 0
E
Text Label 3500 2700 0    50   ~ 0
MX
Wire Wire Line
	4500 900  4700 900 
Wire Wire Line
	3700 1800 3500 1800
Wire Wire Line
	3700 1000 3500 1000
Wire Wire Line
	3700 1100 3500 1100
Wire Wire Line
	3700 1200 3500 1200
Wire Wire Line
	3700 1300 3500 1300
Wire Wire Line
	3700 1400 3500 1400
Wire Wire Line
	3700 1500 3500 1500
Wire Wire Line
	3700 1600 3500 1600
Wire Wire Line
	3700 1700 3500 1700
Wire Wire Line
	3700 3900 3500 3900
Wire Wire Line
	3700 3100 3500 3100
Wire Wire Line
	3700 3200 3500 3200
Wire Wire Line
	3700 3300 3500 3300
Wire Wire Line
	3700 3400 3500 3400
Wire Wire Line
	3700 3500 3500 3500
Wire Wire Line
	3700 3600 3500 3600
Wire Wire Line
	3700 3700 3500 3700
Wire Wire Line
	3700 3800 3500 3800
Text Label 3500 3100 0    50   ~ 0
D0
Text Label 3500 3200 0    50   ~ 0
D1
Text Label 3500 3300 0    50   ~ 0
D2
Text Label 3500 3400 0    50   ~ 0
D3
Text Label 3500 3500 0    50   ~ 0
D4
Text Label 3500 3600 0    50   ~ 0
D5
Text Label 3500 3700 0    50   ~ 0
D6
Text Label 3500 3800 0    50   ~ 0
D7
Text Label 3500 3900 0    50   ~ 0
GND
Text Label 4700 900  2    50   ~ 0
GND
Text Label 3500 1900 0    50   ~ 0
R~W
Text Label 3500 1800 0    50   ~ 0
~NMI
Text Label 3500 1000 0    50   ~ 0
~IRQ1
Text Label 3500 1100 0    50   ~ 0
~IRQ2
Text Label 3500 1200 0    50   ~ 0
~IRQ3
Text Label 3500 1300 0    50   ~ 0
~IRQ4
Text Label 3500 1400 0    50   ~ 0
~IRQ5
Text Label 3500 1500 0    50   ~ 0
~IRQ6
Text Label 3500 1600 0    50   ~ 0
~IRQ7
Text Label 3500 1700 0    50   ~ 0
~IRQ8
Text Label 3500 2000 0    50   ~ 0
RDY
Text Label 3500 2100 0    50   ~ 0
SYNC
Text Label 3500 2200 0    50   ~ 0
BE
Wire Wire Line
	3700 2100 3500 2100
Wire Wire Line
	3700 2200 3500 2200
Wire Wire Line
	3700 2000 3500 2000
Wire Wire Line
	3700 1900 3500 1900
Wire Wire Line
	3700 2300 3500 2300
Wire Wire Line
	3700 2400 3500 2400
Text Label 3500 2300 0    50   ~ 0
~VP
Text Label 3500 2400 0    50   ~ 0
~ML
Text Label 3500 3000 0    50   ~ 0
~IOSEL
Wire Wire Line
	3700 3000 3500 3000
Text Label 3500 2600 0    50   ~ 0
VPA
Text Label 3500 2500 0    50   ~ 0
VDA
Wire Wire Line
	3500 2700 3700 2700
Wire Wire Line
	3500 2800 3700 2800
Wire Wire Line
	3500 2900 3700 2900
Wire Wire Line
	3700 2500 3500 2500
Wire Wire Line
	3700 2600 3500 2600
Text Label 2100 2900 0    50   ~ 0
USR
Text Label 2100 2800 0    50   ~ 0
E
Text Label 2100 2700 0    50   ~ 0
MX
Wire Wire Line
	3100 900  3300 900 
Wire Wire Line
	2300 1800 2100 1800
Wire Wire Line
	2300 1000 2100 1000
Wire Wire Line
	2300 1100 2100 1100
Wire Wire Line
	2300 1200 2100 1200
Wire Wire Line
	2300 1300 2100 1300
Wire Wire Line
	2300 1400 2100 1400
Wire Wire Line
	2300 1500 2100 1500
Wire Wire Line
	2300 1600 2100 1600
Wire Wire Line
	2300 1700 2100 1700
Wire Wire Line
	2300 3900 2100 3900
Wire Wire Line
	2300 3100 2100 3100
Wire Wire Line
	2300 3200 2100 3200
Wire Wire Line
	2300 3300 2100 3300
Wire Wire Line
	2300 3400 2100 3400
Wire Wire Line
	2300 3500 2100 3500
Wire Wire Line
	2300 3600 2100 3600
Wire Wire Line
	2300 3700 2100 3700
Wire Wire Line
	2300 3800 2100 3800
Text Label 2100 3100 0    50   ~ 0
D0
Text Label 2100 3200 0    50   ~ 0
D1
Text Label 2100 3300 0    50   ~ 0
D2
Text Label 2100 3400 0    50   ~ 0
D3
Text Label 2100 3500 0    50   ~ 0
D4
Text Label 2100 3600 0    50   ~ 0
D5
Text Label 2100 3700 0    50   ~ 0
D6
Text Label 2100 3800 0    50   ~ 0
D7
Text Label 2100 3900 0    50   ~ 0
GND
Text Label 3300 900  2    50   ~ 0
GND
Text Label 2100 1900 0    50   ~ 0
R~W
Text Label 2100 1800 0    50   ~ 0
~NMI
Text Label 2100 1000 0    50   ~ 0
~IRQ1
Text Label 2100 1100 0    50   ~ 0
~IRQ2
Text Label 2100 1200 0    50   ~ 0
~IRQ3
Text Label 2100 1300 0    50   ~ 0
~IRQ4
Text Label 2100 1400 0    50   ~ 0
~IRQ5
Text Label 2100 1500 0    50   ~ 0
~IRQ6
Text Label 2100 1600 0    50   ~ 0
~IRQ7
Text Label 2100 1700 0    50   ~ 0
~IRQ8
Text Label 2100 2000 0    50   ~ 0
RDY
Text Label 2100 2100 0    50   ~ 0
SYNC
Text Label 2100 2200 0    50   ~ 0
BE
Wire Wire Line
	2300 2100 2100 2100
Wire Wire Line
	2300 2200 2100 2200
Wire Wire Line
	2300 2000 2100 2000
Wire Wire Line
	2300 1900 2100 1900
Wire Wire Line
	2300 2300 2100 2300
Wire Wire Line
	2300 2400 2100 2400
Text Label 2100 2300 0    50   ~ 0
~VP
Text Label 2100 2400 0    50   ~ 0
~ML
Text Label 2100 3000 0    50   ~ 0
~IOSEL
Wire Wire Line
	2300 3000 2100 3000
Text Label 2100 2600 0    50   ~ 0
VPA
Text Label 2100 2500 0    50   ~ 0
VDA
Wire Wire Line
	2100 2700 2300 2700
Wire Wire Line
	2100 2800 2300 2800
Wire Wire Line
	2100 2900 2300 2900
Wire Wire Line
	2300 2500 2100 2500
Wire Wire Line
	2300 2600 2100 2600
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J4
U 1 1 6353CB1E
P 5500 800
F 0 "J4" H 5500 965 50  0000 C CNN
F 1 "ISA 4" H 5500 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 5300 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 6000 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 5250 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 5250 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 5250 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 5250 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 5250 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 5250 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    5500 800 
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J2
U 1 1 6353CB36
P 2700 800
F 0 "J2" H 2700 965 50  0000 C CNN
F 1 "ISA 2" H 2700 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 2500 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 3200 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 2450 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 2450 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 2450 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 2450 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 2450 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 2450 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    2700 800 
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J3
U 1 1 6353CB2A
P 4100 800
F 0 "J3" H 4100 965 50  0000 C CNN
F 1 "ISA 3" H 4100 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 3900 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 4600 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 3850 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 3850 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 3850 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 3850 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 3850 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 3850 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    4100 800 
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J6
U 1 1 6353CB12
P 8300 800
F 0 "J6" H 8300 965 50  0000 C CNN
F 1 "ISA 6" H 8300 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 8100 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 8800 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 8050 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 8050 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 8050 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 8050 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 8050 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 8050 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    8300 800 
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J7
U 1 1 6353C8C9
P 9700 800
F 0 "J7" H 9700 965 50  0000 C CNN
F 1 "ISA 7" H 9700 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 9500 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 10200 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 9450 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 9450 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 9450 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 9450 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 9450 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 9450 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 800 
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:ISA_CARD_CONNECTOR J5
U 1 1 6353C8BD
P 6900 800
F 0 "J5" H 6900 965 50  0000 C CNN
F 1 "ISA 5" H 6900 874 50  0000 C CNN
F 2 "0_Fred's_Local_Library:ISA_Connector" H 6700 -2500 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F5530843%7FF8%7Fpdf%7FEnglish%7FENG_CD_5530843_F8.pdf%7F6-5530843-5" H 7400 800 50  0001 L CNN
F 4 "Standard Card Edge Connectors 100 VRT 062DP" H 6650 -2600 50  0001 L CNN "Description"
F 5 "15.494" H 6650 -2700 50  0001 L CNN "Height"
F 6 "571-6-5530843-5" H 6650 -2800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/6-5530843-5?qs=X1mjqRbeMc4evMKvgkFEjA%3D%3D" H 6650 -2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 6650 -3000 50  0001 L CNN "Manufacturer_Name"
F 9 "6-5530843-5" H 6650 -3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    6900 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3700 10300 3700
Wire Wire Line
	10100 3600 10300 3600
Wire Wire Line
	9300 900  9100 900 
Wire Wire Line
	10100 1000 10300 1000
Wire Wire Line
	10100 1100 10300 1100
Wire Wire Line
	10100 1200 10300 1200
Wire Wire Line
	10100 1300 10300 1300
Wire Wire Line
	10100 1400 10300 1400
Wire Wire Line
	10100 1500 10300 1500
Wire Wire Line
	10100 1600 10300 1600
Wire Wire Line
	10100 1700 10300 1700
Wire Wire Line
	10100 1800 10300 1800
Wire Wire Line
	10100 1900 10300 1900
Wire Wire Line
	10100 2000 10300 2000
Wire Wire Line
	10100 2100 10300 2100
Wire Wire Line
	10100 2200 10300 2200
Wire Wire Line
	10100 2300 10300 2300
Wire Wire Line
	10100 2400 10300 2400
Wire Wire Line
	10100 2500 10300 2500
Wire Wire Line
	10100 3900 10300 3900
Text Label 10300 1000 2    50   ~ 0
A0
Text Label 10300 1100 2    50   ~ 0
A1
Text Label 10300 1200 2    50   ~ 0
A2
Text Label 10300 1300 2    50   ~ 0
A3
Text Label 10300 1400 2    50   ~ 0
A4
Text Label 10300 1500 2    50   ~ 0
A5
Text Label 10300 1600 2    50   ~ 0
A6
Text Label 10300 1700 2    50   ~ 0
A7
Text Label 10300 1800 2    50   ~ 0
A8
Text Label 10300 1900 2    50   ~ 0
A9
Text Label 10300 2000 2    50   ~ 0
A10
Text Label 10300 2100 2    50   ~ 0
A11
Text Label 10300 2200 2    50   ~ 0
A12
Text Label 10300 2300 2    50   ~ 0
A13
Text Label 10300 2400 2    50   ~ 0
A14
Text Label 10300 2500 2    50   ~ 0
A15
Text Label 10300 3400 2    50   ~ 0
~RST
Wire Wire Line
	10100 3400 10300 3400
Text Label 10300 3600 2    50   ~ 0
~CLK
Text Label 10300 3500 2    50   ~ 0
CLK
Text Label 9100 900  0    50   ~ 0
+5V
Text Label 10300 3900 2    50   ~ 0
+5V
Wire Wire Line
	10100 3500 10300 3500
Wire Wire Line
	10100 3800 10300 3800
Text Label 10300 3800 2    50   ~ 0
~WSEN
Text Label 10300 3700 2    50   ~ 0
GCLK
Text Label 10300 2600 2    50   ~ 0
A16
Text Label 10300 2700 2    50   ~ 0
A17
Text Label 10300 2800 2    50   ~ 0
A18
Text Label 10300 2900 2    50   ~ 0
A19
Text Label 10300 3000 2    50   ~ 0
A20
Text Label 10300 3100 2    50   ~ 0
A21
Text Label 10300 3200 2    50   ~ 0
A22
Text Label 10300 3300 2    50   ~ 0
A23
Wire Wire Line
	10300 2600 10100 2600
Wire Wire Line
	10300 2700 10100 2700
Wire Wire Line
	10300 2800 10100 2800
Wire Wire Line
	10300 2900 10100 2900
Wire Wire Line
	10300 3000 10100 3000
Wire Wire Line
	10300 3100 10100 3100
Wire Wire Line
	10300 3200 10100 3200
Wire Wire Line
	10300 3300 10100 3300
Wire Wire Line
	8700 3700 8900 3700
Wire Wire Line
	8700 3600 8900 3600
Wire Wire Line
	7900 900  7700 900 
Wire Wire Line
	8700 1000 8900 1000
Wire Wire Line
	8700 1100 8900 1100
Wire Wire Line
	8700 1200 8900 1200
Wire Wire Line
	8700 1300 8900 1300
Wire Wire Line
	8700 1400 8900 1400
Wire Wire Line
	8700 1500 8900 1500
Wire Wire Line
	8700 1600 8900 1600
Wire Wire Line
	8700 1700 8900 1700
Wire Wire Line
	8700 1800 8900 1800
Wire Wire Line
	8700 1900 8900 1900
Wire Wire Line
	8700 2000 8900 2000
Wire Wire Line
	8700 2100 8900 2100
Wire Wire Line
	8700 2200 8900 2200
Wire Wire Line
	8700 2300 8900 2300
Wire Wire Line
	8700 2400 8900 2400
Wire Wire Line
	8700 2500 8900 2500
Wire Wire Line
	8700 3900 8900 3900
Text Label 8900 1000 2    50   ~ 0
A0
Text Label 8900 1100 2    50   ~ 0
A1
Text Label 8900 1200 2    50   ~ 0
A2
Text Label 8900 1300 2    50   ~ 0
A3
Text Label 8900 1400 2    50   ~ 0
A4
Text Label 8900 1500 2    50   ~ 0
A5
Text Label 8900 1600 2    50   ~ 0
A6
Text Label 8900 1700 2    50   ~ 0
A7
Text Label 8900 1800 2    50   ~ 0
A8
Text Label 8900 1900 2    50   ~ 0
A9
Text Label 8900 2000 2    50   ~ 0
A10
Text Label 8900 2100 2    50   ~ 0
A11
Text Label 8900 2200 2    50   ~ 0
A12
Text Label 8900 2300 2    50   ~ 0
A13
Text Label 8900 2400 2    50   ~ 0
A14
Text Label 8900 2500 2    50   ~ 0
A15
Text Label 8900 3400 2    50   ~ 0
~RST
Wire Wire Line
	8700 3400 8900 3400
Text Label 8900 3600 2    50   ~ 0
~CLK
Text Label 8900 3500 2    50   ~ 0
CLK
Text Label 7700 900  0    50   ~ 0
+5V
Text Label 8900 3900 2    50   ~ 0
+5V
Wire Wire Line
	8700 3500 8900 3500
Wire Wire Line
	8700 3800 8900 3800
Text Label 8900 3800 2    50   ~ 0
~WSEN
Text Label 8900 3700 2    50   ~ 0
GCLK
Text Label 8900 2600 2    50   ~ 0
A16
Text Label 8900 2700 2    50   ~ 0
A17
Text Label 8900 2800 2    50   ~ 0
A18
Text Label 8900 2900 2    50   ~ 0
A19
Text Label 8900 3000 2    50   ~ 0
A20
Text Label 8900 3100 2    50   ~ 0
A21
Text Label 8900 3200 2    50   ~ 0
A22
Text Label 8900 3300 2    50   ~ 0
A23
Wire Wire Line
	8900 2600 8700 2600
Wire Wire Line
	8900 2700 8700 2700
Wire Wire Line
	8900 2800 8700 2800
Wire Wire Line
	8900 2900 8700 2900
Wire Wire Line
	8900 3000 8700 3000
Wire Wire Line
	8900 3100 8700 3100
Wire Wire Line
	8900 3200 8700 3200
Wire Wire Line
	8900 3300 8700 3300
Wire Wire Line
	7300 3700 7500 3700
Wire Wire Line
	7300 3600 7500 3600
Wire Wire Line
	6500 900  6300 900 
Wire Wire Line
	7300 1000 7500 1000
Wire Wire Line
	7300 1100 7500 1100
Wire Wire Line
	7300 1200 7500 1200
Wire Wire Line
	7300 1300 7500 1300
Wire Wire Line
	7300 1400 7500 1400
Wire Wire Line
	7300 1500 7500 1500
Wire Wire Line
	7300 1600 7500 1600
Wire Wire Line
	7300 1700 7500 1700
Wire Wire Line
	7300 1800 7500 1800
Wire Wire Line
	7300 1900 7500 1900
Wire Wire Line
	7300 2000 7500 2000
Wire Wire Line
	7300 2100 7500 2100
Wire Wire Line
	7300 2200 7500 2200
Wire Wire Line
	7300 2300 7500 2300
Wire Wire Line
	7300 2400 7500 2400
Wire Wire Line
	7300 2500 7500 2500
Wire Wire Line
	7300 3900 7500 3900
Text Label 7500 1000 2    50   ~ 0
A0
Text Label 7500 1100 2    50   ~ 0
A1
Text Label 7500 1200 2    50   ~ 0
A2
Text Label 7500 1300 2    50   ~ 0
A3
Text Label 7500 1400 2    50   ~ 0
A4
Text Label 7500 1500 2    50   ~ 0
A5
Text Label 7500 1600 2    50   ~ 0
A6
Text Label 7500 1700 2    50   ~ 0
A7
Text Label 7500 1800 2    50   ~ 0
A8
Text Label 7500 1900 2    50   ~ 0
A9
Text Label 7500 2000 2    50   ~ 0
A10
Text Label 7500 2100 2    50   ~ 0
A11
Text Label 7500 2200 2    50   ~ 0
A12
Text Label 7500 2300 2    50   ~ 0
A13
Text Label 7500 2400 2    50   ~ 0
A14
Text Label 7500 2500 2    50   ~ 0
A15
Text Label 7500 3400 2    50   ~ 0
~RST
Wire Wire Line
	7300 3400 7500 3400
Text Label 7500 3600 2    50   ~ 0
~CLK
Text Label 7500 3500 2    50   ~ 0
CLK
Text Label 6300 900  0    50   ~ 0
+5V
Text Label 7500 3900 2    50   ~ 0
+5V
Wire Wire Line
	7300 3500 7500 3500
Wire Wire Line
	7300 3800 7500 3800
Text Label 7500 3800 2    50   ~ 0
~WSEN
Text Label 7500 3700 2    50   ~ 0
GCLK
Text Label 7500 2600 2    50   ~ 0
A16
Text Label 7500 2700 2    50   ~ 0
A17
Text Label 7500 2800 2    50   ~ 0
A18
Text Label 7500 2900 2    50   ~ 0
A19
Text Label 7500 3000 2    50   ~ 0
A20
Text Label 7500 3100 2    50   ~ 0
A21
Text Label 7500 3200 2    50   ~ 0
A22
Text Label 7500 3300 2    50   ~ 0
A23
Wire Wire Line
	7500 2600 7300 2600
Wire Wire Line
	7500 2700 7300 2700
Wire Wire Line
	7500 2800 7300 2800
Wire Wire Line
	7500 2900 7300 2900
Wire Wire Line
	7500 3000 7300 3000
Wire Wire Line
	7500 3100 7300 3100
Wire Wire Line
	7500 3200 7300 3200
Wire Wire Line
	7500 3300 7300 3300
Wire Wire Line
	5900 3700 6100 3700
Wire Wire Line
	5900 3600 6100 3600
Wire Wire Line
	5100 900  4900 900 
Wire Wire Line
	5900 1000 6100 1000
Wire Wire Line
	5900 1100 6100 1100
Wire Wire Line
	5900 1200 6100 1200
Wire Wire Line
	5900 1300 6100 1300
Wire Wire Line
	5900 1400 6100 1400
Wire Wire Line
	5900 1500 6100 1500
Wire Wire Line
	5900 1600 6100 1600
Wire Wire Line
	5900 1700 6100 1700
Wire Wire Line
	5900 1800 6100 1800
Wire Wire Line
	5900 1900 6100 1900
Wire Wire Line
	5900 2000 6100 2000
Wire Wire Line
	5900 2100 6100 2100
Wire Wire Line
	5900 2200 6100 2200
Wire Wire Line
	5900 2300 6100 2300
Wire Wire Line
	5900 2400 6100 2400
Wire Wire Line
	5900 2500 6100 2500
Wire Wire Line
	5900 3900 6100 3900
Text Label 6100 1000 2    50   ~ 0
A0
Text Label 6100 1100 2    50   ~ 0
A1
Text Label 6100 1200 2    50   ~ 0
A2
Text Label 6100 1300 2    50   ~ 0
A3
Text Label 6100 1400 2    50   ~ 0
A4
Text Label 6100 1500 2    50   ~ 0
A5
Text Label 6100 1600 2    50   ~ 0
A6
Text Label 6100 1700 2    50   ~ 0
A7
Text Label 6100 1800 2    50   ~ 0
A8
Text Label 6100 1900 2    50   ~ 0
A9
Text Label 6100 2000 2    50   ~ 0
A10
Text Label 6100 2100 2    50   ~ 0
A11
Text Label 6100 2200 2    50   ~ 0
A12
Text Label 6100 2300 2    50   ~ 0
A13
Text Label 6100 2400 2    50   ~ 0
A14
Text Label 6100 2500 2    50   ~ 0
A15
Text Label 6100 3400 2    50   ~ 0
~RST
Wire Wire Line
	5900 3400 6100 3400
Text Label 6100 3600 2    50   ~ 0
~CLK
Text Label 6100 3500 2    50   ~ 0
CLK
Text Label 4900 900  0    50   ~ 0
+5V
Text Label 6100 3900 2    50   ~ 0
+5V
Wire Wire Line
	5900 3500 6100 3500
Wire Wire Line
	5900 3800 6100 3800
Text Label 6100 3800 2    50   ~ 0
~WSEN
Text Label 6100 3700 2    50   ~ 0
GCLK
Text Label 6100 2600 2    50   ~ 0
A16
Text Label 6100 2700 2    50   ~ 0
A17
Text Label 6100 2800 2    50   ~ 0
A18
Text Label 6100 2900 2    50   ~ 0
A19
Text Label 6100 3000 2    50   ~ 0
A20
Text Label 6100 3100 2    50   ~ 0
A21
Text Label 6100 3200 2    50   ~ 0
A22
Text Label 6100 3300 2    50   ~ 0
A23
Wire Wire Line
	6100 2600 5900 2600
Wire Wire Line
	6100 2700 5900 2700
Wire Wire Line
	6100 2800 5900 2800
Wire Wire Line
	6100 2900 5900 2900
Wire Wire Line
	6100 3000 5900 3000
Wire Wire Line
	6100 3100 5900 3100
Wire Wire Line
	6100 3200 5900 3200
Wire Wire Line
	6100 3300 5900 3300
Wire Wire Line
	4500 3700 4700 3700
Wire Wire Line
	4500 3600 4700 3600
Wire Wire Line
	3700 900  3500 900 
Wire Wire Line
	4500 1000 4700 1000
Wire Wire Line
	4500 1100 4700 1100
Wire Wire Line
	4500 1200 4700 1200
Wire Wire Line
	4500 1300 4700 1300
Wire Wire Line
	4500 1400 4700 1400
Wire Wire Line
	4500 1500 4700 1500
Wire Wire Line
	4500 1600 4700 1600
Wire Wire Line
	4500 1700 4700 1700
Wire Wire Line
	4500 1800 4700 1800
Wire Wire Line
	4500 1900 4700 1900
Wire Wire Line
	4500 2000 4700 2000
Wire Wire Line
	4500 2100 4700 2100
Wire Wire Line
	4500 2200 4700 2200
Wire Wire Line
	4500 2300 4700 2300
Wire Wire Line
	4500 2400 4700 2400
Wire Wire Line
	4500 2500 4700 2500
Wire Wire Line
	4500 3900 4700 3900
Text Label 4700 1000 2    50   ~ 0
A0
Text Label 4700 1100 2    50   ~ 0
A1
Text Label 4700 1200 2    50   ~ 0
A2
Text Label 4700 1300 2    50   ~ 0
A3
Text Label 4700 1400 2    50   ~ 0
A4
Text Label 4700 1500 2    50   ~ 0
A5
Text Label 4700 1600 2    50   ~ 0
A6
Text Label 4700 1700 2    50   ~ 0
A7
Text Label 4700 1800 2    50   ~ 0
A8
Text Label 4700 1900 2    50   ~ 0
A9
Text Label 4700 2000 2    50   ~ 0
A10
Text Label 4700 2100 2    50   ~ 0
A11
Text Label 4700 2200 2    50   ~ 0
A12
Text Label 4700 2300 2    50   ~ 0
A13
Text Label 4700 2400 2    50   ~ 0
A14
Text Label 4700 2500 2    50   ~ 0
A15
Text Label 4700 3400 2    50   ~ 0
~RST
Wire Wire Line
	4500 3400 4700 3400
Text Label 4700 3600 2    50   ~ 0
~CLK
Text Label 4700 3500 2    50   ~ 0
CLK
Text Label 3500 900  0    50   ~ 0
+5V
Text Label 4700 3900 2    50   ~ 0
+5V
Wire Wire Line
	4500 3500 4700 3500
Wire Wire Line
	4500 3800 4700 3800
Text Label 4700 3800 2    50   ~ 0
~WSEN
Text Label 4700 3700 2    50   ~ 0
GCLK
Text Label 4700 2600 2    50   ~ 0
A16
Text Label 4700 2700 2    50   ~ 0
A17
Text Label 4700 2800 2    50   ~ 0
A18
Text Label 4700 2900 2    50   ~ 0
A19
Text Label 4700 3000 2    50   ~ 0
A20
Text Label 4700 3100 2    50   ~ 0
A21
Text Label 4700 3200 2    50   ~ 0
A22
Text Label 4700 3300 2    50   ~ 0
A23
Wire Wire Line
	4700 2600 4500 2600
Wire Wire Line
	4700 2700 4500 2700
Wire Wire Line
	4700 2800 4500 2800
Wire Wire Line
	4700 2900 4500 2900
Wire Wire Line
	4700 3000 4500 3000
Wire Wire Line
	4700 3100 4500 3100
Wire Wire Line
	4700 3200 4500 3200
Wire Wire Line
	4700 3300 4500 3300
Wire Wire Line
	3100 3700 3300 3700
Wire Wire Line
	3100 3600 3300 3600
Wire Wire Line
	2300 900  2100 900 
Wire Wire Line
	3100 1000 3300 1000
Wire Wire Line
	3100 1100 3300 1100
Wire Wire Line
	3100 1200 3300 1200
Wire Wire Line
	3100 1300 3300 1300
Wire Wire Line
	3100 1400 3300 1400
Wire Wire Line
	3100 1500 3300 1500
Wire Wire Line
	3100 1600 3300 1600
Wire Wire Line
	3100 1700 3300 1700
Wire Wire Line
	3100 1800 3300 1800
Wire Wire Line
	3100 1900 3300 1900
Wire Wire Line
	3100 2000 3300 2000
Wire Wire Line
	3100 2100 3300 2100
Wire Wire Line
	3100 2200 3300 2200
Wire Wire Line
	3100 2300 3300 2300
Wire Wire Line
	3100 2400 3300 2400
Wire Wire Line
	3100 2500 3300 2500
Wire Wire Line
	3100 3900 3300 3900
Text Label 3300 1000 2    50   ~ 0
A0
Text Label 3300 1100 2    50   ~ 0
A1
Text Label 3300 1200 2    50   ~ 0
A2
Text Label 3300 1300 2    50   ~ 0
A3
Text Label 3300 1400 2    50   ~ 0
A4
Text Label 3300 1500 2    50   ~ 0
A5
Text Label 3300 1600 2    50   ~ 0
A6
Text Label 3300 1700 2    50   ~ 0
A7
Text Label 3300 1800 2    50   ~ 0
A8
Text Label 3300 1900 2    50   ~ 0
A9
Text Label 3300 2000 2    50   ~ 0
A10
Text Label 3300 2100 2    50   ~ 0
A11
Text Label 3300 2200 2    50   ~ 0
A12
Text Label 3300 2300 2    50   ~ 0
A13
Text Label 3300 2400 2    50   ~ 0
A14
Text Label 3300 2500 2    50   ~ 0
A15
Text Label 3300 3400 2    50   ~ 0
~RST
Wire Wire Line
	3100 3400 3300 3400
Text Label 3300 3600 2    50   ~ 0
~CLK
Text Label 3300 3500 2    50   ~ 0
CLK
Text Label 2100 900  0    50   ~ 0
+5V
Text Label 3300 3900 2    50   ~ 0
+5V
Wire Wire Line
	3100 3500 3300 3500
Wire Wire Line
	3100 3800 3300 3800
Text Label 3300 3800 2    50   ~ 0
~WSEN
Text Label 3300 3700 2    50   ~ 0
GCLK
Text Label 3300 2600 2    50   ~ 0
A16
Text Label 3300 2700 2    50   ~ 0
A17
Text Label 3300 2800 2    50   ~ 0
A18
Text Label 3300 2900 2    50   ~ 0
A19
Text Label 3300 3000 2    50   ~ 0
A20
Text Label 3300 3100 2    50   ~ 0
A21
Text Label 3300 3200 2    50   ~ 0
A22
Text Label 3300 3300 2    50   ~ 0
A23
Wire Wire Line
	3300 2600 3100 2600
Wire Wire Line
	3300 2700 3100 2700
Wire Wire Line
	3300 2800 3100 2800
Wire Wire Line
	3300 2900 3100 2900
Wire Wire Line
	3300 3000 3100 3000
Wire Wire Line
	3300 3100 3100 3100
Wire Wire Line
	3300 3200 3100 3200
Wire Wire Line
	3300 3300 3100 3300
$EndSCHEMATC
