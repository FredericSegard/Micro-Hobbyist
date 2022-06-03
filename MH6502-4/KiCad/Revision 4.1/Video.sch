EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 10 11
Title "Video"
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
U 1 1 618D1DF6
P 6300 5550
AR Path="/618D1DF6" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/618D1DF6" Ref="#PWR?"  Part="1" 
AR Path="/60CF5668/618D1DF6" Ref="#PWR?"  Part="1" 
AR Path="/61FA55B1/618D1DF6" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/618D1DF6" Ref="#PWR097"  Part="1" 
F 0 "#PWR097" H 6300 5400 50  0001 C CNN
F 1 "+5V" H 6315 5723 50  0000 C CNN
F 2 "" H 6300 5550 50  0001 C CNN
F 3 "" H 6300 5550 50  0001 C CNN
	1    6300 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6230B701
P 6650 5850
AR Path="/6230B701" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/6230B701" Ref="C?"  Part="1" 
AR Path="/60CF5668/6230B701" Ref="C?"  Part="1" 
AR Path="/61FA55B1/6230B701" Ref="C?"  Part="1" 
AR Path="/622E9471/6230B701" Ref="C40"  Part="1" 
F 0 "C40" H 6700 5950 50  0000 L CNN
F 1 "0.1µF" H 6700 5750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6688 5700 50  0001 C CNN
F 3 "~" H 6650 5850 50  0001 C CNN
	1    6650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5700 7350 5650
Wire Wire Line
	7350 5650 7700 5650
Wire Wire Line
	7350 6000 7350 6050
$Comp
L Device:C C?
U 1 1 6230B702
P 7000 5850
AR Path="/6230B702" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/6230B702" Ref="C?"  Part="1" 
AR Path="/60CF5668/6230B702" Ref="C?"  Part="1" 
AR Path="/61FA55B1/6230B702" Ref="C?"  Part="1" 
AR Path="/622E9471/6230B702" Ref="C41"  Part="1" 
F 0 "C41" H 7050 5950 50  0000 L CNN
F 1 "0.1µF" H 7050 5750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7038 5700 50  0001 C CNN
F 3 "~" H 7000 5850 50  0001 C CNN
	1    7000 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5700 7700 5650
Connection ~ 7700 5650
Wire Wire Line
	7700 6000 7700 6050
$Comp
L Device:C C?
U 1 1 618D1E14
P 7350 5850
AR Path="/618D1E14" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/618D1E14" Ref="C?"  Part="1" 
AR Path="/60CF5668/618D1E14" Ref="C?"  Part="1" 
AR Path="/61FA55B1/618D1E14" Ref="C?"  Part="1" 
AR Path="/622E9471/618D1E14" Ref="C42"  Part="1" 
F 0 "C42" H 7400 5950 50  0000 L CNN
F 1 "0.1µF" H 7400 5750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7388 5700 50  0001 C CNN
F 3 "~" H 7350 5850 50  0001 C CNN
	1    7350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6000 8050 6050
Wire Wire Line
	8050 5650 8050 5700
Connection ~ 7700 6050
Wire Wire Line
	7350 6050 7700 6050
$Comp
L Device:C C?
U 1 1 626180FF
P 7700 5850
AR Path="/626180FF" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/626180FF" Ref="C?"  Part="1" 
AR Path="/60CF5668/626180FF" Ref="C?"  Part="1" 
AR Path="/61FA55B1/626180FF" Ref="C?"  Part="1" 
AR Path="/622E9471/626180FF" Ref="C43"  Part="1" 
F 0 "C43" H 7750 5950 50  0000 L CNN
F 1 "0.1µF" H 7750 5750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7738 5700 50  0001 C CNN
F 3 "~" H 7700 5850 50  0001 C CNN
	1    7700 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618D1E39
P 6300 5850
AR Path="/618D1E39" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/618D1E39" Ref="C?"  Part="1" 
AR Path="/60CF5668/618D1E39" Ref="C?"  Part="1" 
AR Path="/61FA55B1/618D1E39" Ref="C?"  Part="1" 
AR Path="/622E9471/618D1E39" Ref="C39"  Part="1" 
F 0 "C39" H 6350 5950 50  0000 L CNN
F 1 "0.1µF" H 6350 5750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6338 5700 50  0001 C CNN
F 3 "~" H 6300 5850 50  0001 C CNN
	1    6300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5700 7000 5650
Wire Wire Line
	7000 5650 7350 5650
Wire Wire Line
	7000 6000 7000 6050
Wire Wire Line
	7000 6050 7350 6050
Connection ~ 7000 5650
Connection ~ 7350 5650
Connection ~ 7350 6050
Wire Wire Line
	7000 6050 6650 6050
Wire Wire Line
	6650 6050 6650 6000
Connection ~ 7000 6050
Wire Wire Line
	6650 6050 6300 6050
Wire Wire Line
	6300 6050 6300 6000
Connection ~ 6650 6050
Wire Wire Line
	6650 5700 6650 5650
Wire Wire Line
	6650 5650 7000 5650
Wire Wire Line
	6300 5700 6300 5650
Wire Wire Line
	6300 5650 6650 5650
Connection ~ 6650 5650
Connection ~ 6300 5650
$Comp
L Device:C C?
U 1 1 6349185F
P 8050 5850
AR Path="/6349185F" Ref="C?"  Part="1" 
AR Path="/5F3EA81D/6349185F" Ref="C?"  Part="1" 
AR Path="/60CF5668/6349185F" Ref="C?"  Part="1" 
AR Path="/5F86B098/6349185F" Ref="C?"  Part="1" 
AR Path="/61FA55B1/6349185F" Ref="C?"  Part="1" 
AR Path="/622E9471/6349185F" Ref="C44"  Part="1" 
F 0 "C44" H 8100 5950 50  0000 L CNN
F 1 "0.1µF" H 8100 5750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8088 5700 50  0001 C CNN
F 3 "~" H 8050 5850 50  0001 C CNN
	1    8050 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63491871
P 6300 6150
AR Path="/5F86B098/63491871" Ref="#PWR?"  Part="1" 
AR Path="/63491871" Ref="#PWR?"  Part="1" 
AR Path="/61FA55B1/63491871" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/63491871" Ref="#PWR098"  Part="1" 
F 0 "#PWR098" H 6300 5900 50  0001 C CNN
F 1 "GND" H 6305 5977 50  0000 C CNN
F 2 "" H 6300 6150 50  0001 C CNN
F 3 "" H 6300 6150 50  0001 C CNN
	1    6300 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1000 3300 950 
Wire Wire Line
	3300 3800 3300 3850
$Comp
L power:GND #PWR090
U 1 1 626180EF
P 3300 3850
F 0 "#PWR090" H 3300 3600 50  0001 C CNN
F 1 "GND" H 3305 3677 50  0000 C CNN
F 2 "" H 3300 3850 50  0001 C CNN
F 3 "" H 3300 3850 50  0001 C CNN
	1    3300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR082
U 1 1 626180F0
P 3300 950
F 0 "#PWR082" H 3300 800 50  0001 C CNN
F 1 "+5V" H 3315 1123 50  0000 C CNN
F 2 "" H 3300 950 50  0001 C CNN
F 3 "" H 3300 950 50  0001 C CNN
	1    3300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2150 2750 2150
$Comp
L Device:Crystal Y2
U 1 1 5FFAF203
P 2550 3350
F 0 "Y2" V 2600 3500 50  0000 L CNN
F 1 "10.738635MHz" V 2500 3500 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 2550 3350 50  0001 C CNN
F 3 "~" H 2550 3350 50  0001 C CNN
	1    2550 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 3200 2550 3150
Wire Wire Line
	2550 3500 2550 3550
$Comp
L Device:C C38
U 1 1 626180F2
P 2550 3750
F 0 "C38" H 2665 3796 50  0000 L CNN
F 1 "16pF" H 2665 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2588 3600 50  0001 C CNN
F 3 "~" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 626180F3
P 1800 3750
F 0 "C37" H 1915 3796 50  0000 L CNN
F 1 "16pF" H 1915 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 1838 3600 50  0001 C CNN
F 3 "~" H 1800 3750 50  0001 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3600 2550 3550
Connection ~ 2550 3550
Wire Wire Line
	1800 3150 1800 3600
Wire Wire Line
	1800 3900 1800 3950
Wire Wire Line
	2550 3950 2550 3900
Wire Wire Line
	2200 3950 2200 4050
$Comp
L power:GND #PWR091
U 1 1 626180F4
P 2200 4050
F 0 "#PWR091" H 2200 3800 50  0001 C CNN
F 1 "GND" H 2205 3877 50  0000 C CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0001 C CNN
	1    2200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1250 2400 1250
Wire Wire Line
	2750 1350 2400 1350
Wire Wire Line
	2750 1450 2400 1450
Wire Wire Line
	2750 1550 2400 1550
Wire Wire Line
	2750 1650 2400 1650
Wire Wire Line
	2750 1750 2400 1750
Wire Wire Line
	2750 1850 2400 1850
Wire Wire Line
	2750 1950 2400 1950
Text Label 2400 1250 0    50   ~ 0
D0
Text Label 2400 1350 0    50   ~ 0
D1
Text Label 2400 1450 0    50   ~ 0
D2
Text Label 2400 1550 0    50   ~ 0
D3
Text Label 2400 1650 0    50   ~ 0
D4
Text Label 2400 1750 0    50   ~ 0
D5
Text Label 2400 1850 0    50   ~ 0
D6
Text Label 2400 1950 0    50   ~ 0
D7
Wire Wire Line
	2550 3150 2750 3150
Wire Wire Line
	2550 3550 2750 3550
Text Label 2400 2150 0    50   ~ 0
A0
$Comp
L 0_Fred's_Local_Library:TMS9918A U16
U 1 1 60EF164A
P 3300 1150
F 0 "U16" H 3350 1300 50  0000 L CNN
F 1 "TMS9918A/28A" H 3350 1200 50  0000 L CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 3300 1200 50  0001 C CNN
F 3 "" H 3300 1200 50  0001 C CNN
	1    3300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3950 2550 3950
Wire Wire Line
	1800 3950 2200 3950
Connection ~ 2200 3950
Wire Wire Line
	1800 3150 2550 3150
Connection ~ 2550 3150
NoConn ~ 2750 2950
Text Label 2400 2250 0    50   ~ 0
~VDP_CSR
Text Label 2400 2350 0    50   ~ 0
~VDP_CSW
Text Label 2400 2650 0    50   ~ 0
~RESET
$Comp
L Connector_Generic:Conn_01x03 J18
U 1 1 61DA8277
P 1900 1750
F 0 "J18" V 2100 1750 50  0000 C CNN
F 1 "INT" V 2000 1750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1900 1750 50  0001 C CNN
F 3 "~" H 1900 1750 50  0001 C CNN
	1    1900 1750
	0    1    -1   0   
$EndComp
Connection ~ 6300 6050
Wire Wire Line
	6300 6050 6300 6150
Wire Wire Line
	6300 5550 6300 5650
Wire Wire Line
	1450 2650 2750 2650
Text HLabel 1450 2650 0    50   Input ~ 0
~RESET
Wire Wire Line
	1900 2550 1900 1950
Wire Wire Line
	1900 2550 2750 2550
Text HLabel 1450 2450 0    50   Output ~ 0
~IRQ1
Text HLabel 1450 2550 0    50   Output ~ 0
~NMI
Wire Wire Line
	1450 2550 1800 2550
Wire Wire Line
	1800 2550 1800 1950
Wire Wire Line
	1450 2450 2000 2450
Wire Wire Line
	2000 2450 2000 1950
Text HLabel 1450 2050 0    50   Input ~ 0
A[0..15]
Entry Wire Line
	2300 2050 2400 2150
Wire Bus Line
	1450 2050 2300 2050
Wire Wire Line
	1450 2250 2750 2250
Wire Wire Line
	1450 2350 2750 2350
Text HLabel 1450 2250 0    50   Input ~ 0
~VDPCSR
Text HLabel 1450 2350 0    50   Input ~ 0
~VDPCSW
Text Label 2400 2550 0    50   ~ 0
~INT
Entry Wire Line
	2300 1150 2400 1250
Entry Wire Line
	2300 1250 2400 1350
Entry Wire Line
	2300 1350 2400 1450
Entry Wire Line
	2300 1450 2400 1550
Entry Wire Line
	2300 1550 2400 1650
Entry Wire Line
	2300 1650 2400 1750
Entry Wire Line
	2300 1750 2400 1850
Entry Wire Line
	2300 1850 2400 1950
Wire Bus Line
	2300 1150 1450 1150
Text HLabel 1450 1150 0    50   Input ~ 0
D[0..7]
Wire Wire Line
	7700 6050 8050 6050
Wire Wire Line
	7700 5650 8050 5650
$Comp
L 74xx:74LS574 U17
U 1 1 5FFE4EAC
P 5500 1750
F 0 "U17" H 5550 2500 50  0000 L CNN
F 1 "74HCT574" H 5550 2400 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5500 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 5500 1750 50  0001 C CNN
	1    5500 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U19
U 1 1 5FFE6DC8
P 5500 3850
F 0 "U19" H 5550 4600 50  0000 L CNN
F 1 "74HCT574" H 5550 4500 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5500 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2850 7450 2900
Wire Wire Line
	7450 1050 7450 950 
$Comp
L power:+5V #PWR?
U 1 1 5FFF500D
P 7450 950
AR Path="/5FFF500D" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/5FFF500D" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/5FFF500D" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/5FFF500D" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/5FFF500D" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 7450 800 50  0001 C CNN
F 1 "+5V" H 7465 1123 50  0000 C CNN
F 2 "" H 7450 950 50  0001 C CNN
F 3 "" H 7450 950 50  0001 C CNN
	1    7450 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFF5013
P 7450 2950
AR Path="/5FFF5013" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/5FFF5013" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/5FFF5013" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/5FFF5013" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/5FFF5013" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 7450 2700 50  0001 C CNN
F 1 "GND" H 7455 2777 50  0000 C CNN
F 2 "" H 7450 2950 50  0001 C CNN
F 3 "" H 7450 2950 50  0001 C CNN
	1    7450 2950
	1    0    0    -1  
$EndComp
NoConn ~ 6000 3350
NoConn ~ 6000 1250
Wire Wire Line
	7850 1250 8050 1250
Wire Wire Line
	7850 1350 8050 1350
Wire Wire Line
	7850 1450 8050 1450
Wire Wire Line
	7850 1550 8050 1550
Wire Wire Line
	7850 1650 8050 1650
Wire Wire Line
	7850 1750 8050 1750
Wire Wire Line
	7850 1850 8050 1850
Wire Wire Line
	7850 1950 8050 1950
Text Label 8050 1250 2    50   ~ 0
VD0
Text Label 8050 1350 2    50   ~ 0
VD1
Text Label 8050 1450 2    50   ~ 0
VD2
Text Label 8050 1550 2    50   ~ 0
VD3
Text Label 8050 1650 2    50   ~ 0
VD4
Text Label 8050 1750 2    50   ~ 0
VD5
Text Label 8050 1850 2    50   ~ 0
VD6
Text Label 8050 1950 2    50   ~ 0
VD7
Wire Wire Line
	7850 2450 8050 2450
Wire Wire Line
	7850 2550 8050 2550
Wire Wire Line
	7850 2650 8050 2650
$Comp
L 74xx:74HC04 U10
U 1 1 6001A56C
P 9300 1250
F 0 "U10" H 9300 1567 50  0000 C CNN
F 1 "74HCT04" H 9300 1476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9300 1250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9300 1250 50  0001 C CNN
	1    9300 1250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U10
U 2 1 600206E6
P 9300 2050
F 0 "U10" H 9300 2367 50  0000 C CNN
F 1 "74HCT04" H 9300 2276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9300 2050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9300 2050 50  0001 C CNN
	2    9300 2050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U10
U 4 1 60028DBA
P 9300 2850
F 0 "U10" H 9300 3167 50  0000 C CNN
F 1 "74HCT04" H 9300 3076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9300 2850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9300 2850 50  0001 C CNN
	4    9300 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U10
U 5 1 60028DC0
P 9300 3650
F 0 "U10" H 9300 3967 50  0000 C CNN
F 1 "74HCT04" H 9300 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9300 3650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9300 3650 50  0001 C CNN
	5    9300 3650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U10
U 6 1 60028DC6
P 9300 4450
F 0 "U10" H 9300 4767 50  0000 C CNN
F 1 "74HCT04" H 9300 4676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9300 4450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9300 4450 50  0001 C CNN
	6    9300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2050 9900 2050
Wire Wire Line
	8700 2050 9000 2050
Wire Wire Line
	8700 1250 9000 1250
Wire Wire Line
	9000 2850 8700 2850
Wire Wire Line
	9600 2850 9700 2850
Wire Wire Line
	9700 2850 9700 3200
Wire Wire Line
	9700 3200 8900 3200
Wire Wire Line
	8900 3200 8900 3650
Wire Wire Line
	8900 3650 9000 3650
Wire Wire Line
	9600 3650 9700 3650
Wire Wire Line
	9700 3650 9700 4000
Wire Wire Line
	9700 4000 8900 4000
Wire Wire Line
	8900 4000 8900 4450
Wire Wire Line
	8900 4450 9000 4450
Wire Wire Line
	9600 4450 9900 4450
Text Label 8700 2850 0    50   ~ 0
~CAS
Text Label 8700 1250 0    50   ~ 0
VR~W
Text Label 9900 1250 2    50   ~ 0
V~R~W
Text Label 8700 2050 0    50   ~ 0
~RAS
Text Label 9900 2050 2    50   ~ 0
ROW
Text Label 9900 4450 2    50   ~ 0
COL
Wire Wire Line
	7950 3750 8150 3750
Wire Wire Line
	7950 3850 8150 3850
Wire Wire Line
	7950 3950 8150 3950
Wire Wire Line
	7950 4050 8150 4050
Wire Wire Line
	7950 4150 8150 4150
Wire Wire Line
	7950 4250 8150 4250
Wire Wire Line
	7950 4350 8150 4350
Wire Wire Line
	7950 4450 8150 4450
Text Label 8150 3750 2    50   ~ 0
VD0
Text Label 8150 3850 2    50   ~ 0
VD1
Text Label 8150 3950 2    50   ~ 0
VD2
Text Label 8150 4050 2    50   ~ 0
VD3
Text Label 8150 4150 2    50   ~ 0
VD4
Text Label 8150 4250 2    50   ~ 0
VD5
Text Label 8150 4350 2    50   ~ 0
VD6
Text Label 8150 4450 2    50   ~ 0
VD7
Wire Wire Line
	3850 2550 4050 2550
Wire Wire Line
	3850 2650 4050 2650
Wire Wire Line
	3850 2750 4050 2750
Wire Wire Line
	3850 2850 4050 2850
Wire Wire Line
	3850 2950 4050 2950
Wire Wire Line
	3850 3050 4050 3050
Wire Wire Line
	3850 3150 4050 3150
Wire Wire Line
	3850 3250 4050 3250
Text Label 4050 2550 2    50   ~ 0
VD0
Text Label 4050 2650 2    50   ~ 0
VD1
Text Label 4050 2750 2    50   ~ 0
VD2
Text Label 4050 2850 2    50   ~ 0
VD3
Text Label 4050 2950 2    50   ~ 0
VD4
Text Label 4050 3050 2    50   ~ 0
VD5
Text Label 4050 3150 2    50   ~ 0
VD6
Text Label 4050 3250 2    50   ~ 0
VD7
Wire Wire Line
	5000 1250 4800 1250
Wire Wire Line
	5000 1350 4800 1350
Wire Wire Line
	5000 1450 4800 1450
Wire Wire Line
	5000 1550 4800 1550
Wire Wire Line
	5000 1650 4800 1650
Wire Wire Line
	5000 1750 4800 1750
Wire Wire Line
	5000 1850 4800 1850
Wire Wire Line
	5000 1950 4800 1950
Text Label 4800 1250 0    50   ~ 0
AD0
Text Label 4800 1350 0    50   ~ 0
AD1
Text Label 4800 1450 0    50   ~ 0
AD2
Text Label 4800 1550 0    50   ~ 0
AD3
Text Label 4800 1650 0    50   ~ 0
AD4
Text Label 4800 1750 0    50   ~ 0
AD5
Text Label 4800 1850 0    50   ~ 0
AD6
Text Label 4800 1950 0    50   ~ 0
AD7
Wire Wire Line
	5000 3350 4800 3350
Wire Wire Line
	5000 3450 4800 3450
Wire Wire Line
	5000 3550 4800 3550
Wire Wire Line
	5000 3650 4800 3650
Wire Wire Line
	5000 3750 4800 3750
Wire Wire Line
	5000 3850 4800 3850
Wire Wire Line
	5000 3950 4800 3950
Wire Wire Line
	5000 4050 4800 4050
Text Label 4800 3350 0    50   ~ 0
AD0
Text Label 4800 3450 0    50   ~ 0
AD1
Text Label 4800 3550 0    50   ~ 0
AD2
Text Label 4800 3650 0    50   ~ 0
AD3
Text Label 4800 3750 0    50   ~ 0
AD4
Text Label 4800 3850 0    50   ~ 0
AD5
Text Label 4800 3950 0    50   ~ 0
AD6
Text Label 4800 4050 0    50   ~ 0
AD7
Wire Wire Line
	6950 3750 6750 3750
Wire Wire Line
	6950 3850 6750 3850
Wire Wire Line
	6950 3950 6750 3950
Wire Wire Line
	6950 4050 6750 4050
Wire Wire Line
	6950 4150 6750 4150
Wire Wire Line
	6950 4250 6750 4250
Wire Wire Line
	6950 4350 6750 4350
Wire Wire Line
	6950 4450 6750 4450
Text Label 6750 3750 0    50   ~ 0
AD0
Text Label 6750 3850 0    50   ~ 0
AD1
Text Label 6750 3950 0    50   ~ 0
AD2
Text Label 6750 4050 0    50   ~ 0
AD3
Text Label 6750 4150 0    50   ~ 0
AD4
Text Label 6750 4250 0    50   ~ 0
AD5
Text Label 6750 4350 0    50   ~ 0
AD6
Text Label 6750 4450 0    50   ~ 0
AD7
Wire Wire Line
	5000 4350 4900 4350
Wire Wire Line
	4900 4350 4900 4450
$Comp
L power:GND #PWR092
U 1 1 601393F4
P 4900 4450
F 0 "#PWR092" H 4900 4200 50  0001 C CNN
F 1 "GND" H 4905 4277 50  0000 C CNN
F 2 "" H 4900 4450 50  0001 C CNN
F 3 "" H 4900 4450 50  0001 C CNN
	1    4900 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR094
U 1 1 60139E6E
P 7450 5050
F 0 "#PWR094" H 7450 4800 50  0001 C CNN
F 1 "GND" H 7455 4877 50  0000 C CNN
F 2 "" H 7450 5050 50  0001 C CNN
F 3 "" H 7450 5050 50  0001 C CNN
	1    7450 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR093
U 1 1 6013A0EC
P 5500 4650
F 0 "#PWR093" H 5500 4400 50  0001 C CNN
F 1 "GND" H 5505 4477 50  0000 C CNN
F 2 "" H 5500 4650 50  0001 C CNN
F 3 "" H 5500 4650 50  0001 C CNN
	1    5500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR086
U 1 1 6013A7FA
P 5500 2550
F 0 "#PWR086" H 5500 2300 50  0001 C CNN
F 1 "GND" H 5505 2377 50  0000 C CNN
F 2 "" H 5500 2550 50  0001 C CNN
F 3 "" H 5500 2550 50  0001 C CNN
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6013B3B4
P 5500 950
AR Path="/6013B3B4" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6013B3B4" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/6013B3B4" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/6013B3B4" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/6013B3B4" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 5500 800 50  0001 C CNN
F 1 "+5V" H 5515 1123 50  0000 C CNN
F 2 "" H 5500 950 50  0001 C CNN
F 3 "" H 5500 950 50  0001 C CNN
	1    5500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6013BA48
P 5500 3050
AR Path="/6013BA48" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6013BA48" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/6013BA48" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/6013BA48" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/6013BA48" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 5500 2900 50  0001 C CNN
F 1 "+5V" H 5515 3223 50  0000 C CNN
F 2 "" H 5500 3050 50  0001 C CNN
F 3 "" H 5500 3050 50  0001 C CNN
	1    5500 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6013C2D7
P 7450 3450
AR Path="/6013C2D7" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6013C2D7" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/6013C2D7" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/6013C2D7" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/6013C2D7" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 7450 3300 50  0001 C CNN
F 1 "+5V" H 7465 3623 50  0000 C CNN
F 2 "" H 7450 3450 50  0001 C CNN
F 3 "" H 7450 3450 50  0001 C CNN
	1    7450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2150 4800 2150
Wire Wire Line
	5000 4250 4800 4250
Text Label 4800 2150 0    50   ~ 0
ROW
Text Label 4800 4250 0    50   ~ 0
COL
Wire Wire Line
	6750 4650 6950 4650
Wire Wire Line
	6750 4750 6950 4750
Text Label 6750 4650 0    50   ~ 0
V~R~W
Text Label 6750 4750 0    50   ~ 0
VR~W
Text Label 8050 2550 2    50   ~ 0
V~R~W
Text Label 8050 2450 2    50   ~ 0
VR~W
Text Label 8050 2650 2    50   ~ 0
~CAS
Wire Wire Line
	3850 2150 4050 2150
Wire Wire Line
	4050 2250 3850 2250
Text Label 4050 2150 2    50   ~ 0
~RAS
Text Label 4050 2250 2    50   ~ 0
~CAS
Wire Wire Line
	3850 1250 4050 1250
Wire Wire Line
	3850 1350 4050 1350
Wire Wire Line
	3850 1450 4050 1450
Wire Wire Line
	3850 1550 4050 1550
Wire Wire Line
	3850 1650 4050 1650
Wire Wire Line
	3850 1750 4050 1750
Wire Wire Line
	3850 1850 4050 1850
Wire Wire Line
	3850 1950 4050 1950
Text Label 4050 1250 2    50   ~ 0
AD0
Text Label 4050 1350 2    50   ~ 0
AD1
Text Label 4050 1450 2    50   ~ 0
AD2
Text Label 4050 1550 2    50   ~ 0
AD3
Text Label 4050 1650 2    50   ~ 0
AD4
Text Label 4050 1750 2    50   ~ 0
AD5
Text Label 4050 1850 2    50   ~ 0
AD6
Text Label 4050 1950 2    50   ~ 0
AD7
Wire Wire Line
	5000 2250 4900 2250
Wire Wire Line
	4900 2250 4900 2350
$Comp
L power:GND #PWR085
U 1 1 60213365
P 4900 2350
F 0 "#PWR085" H 4900 2100 50  0001 C CNN
F 1 "GND" H 4905 2177 50  0000 C CNN
F 2 "" H 4900 2350 50  0001 C CNN
F 3 "" H 4900 2350 50  0001 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U10
U 7 1 6023AF43
P 9300 5850
F 0 "U10" H 9530 5896 50  0000 L CNN
F 1 "74HCT04" H 9530 5805 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9300 5850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9300 5850 50  0001 C CNN
	7    9300 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6023FC21
P 9300 5350
AR Path="/6023FC21" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6023FC21" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/6023FC21" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/6023FC21" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/6023FC21" Ref="#PWR096"  Part="1" 
F 0 "#PWR096" H 9300 5200 50  0001 C CNN
F 1 "+5V" H 9315 5523 50  0000 C CNN
F 2 "" H 9300 5350 50  0001 C CNN
F 3 "" H 9300 5350 50  0001 C CNN
	1    9300 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR099
U 1 1 60240353
P 9300 6350
F 0 "#PWR099" H 9300 6100 50  0001 C CNN
F 1 "GND" H 9305 6177 50  0000 C CNN
F 2 "" H 9300 6350 50  0001 C CNN
F 3 "" H 9300 6350 50  0001 C CNN
	1    9300 6350
	1    0    0    -1  
$EndComp
$Comp
L 0_Fred's_Local_Library:CY62256-70PC U18
U 1 1 60EF3369
P 7450 1950
F 0 "U18" H 7500 2900 50  0000 L CNN
F 1 "71256" H 7500 2800 50  0000 L CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 7450 1850 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 7450 1850 50  0001 C CNN
	1    7450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1250 9900 1250
Wire Wire Line
	7450 2900 6950 2900
Wire Wire Line
	6950 2900 6950 2650
Wire Wire Line
	6950 2650 7050 2650
Connection ~ 7450 2900
Wire Wire Line
	7450 2900 7450 2950
Text Label 6800 1250 0    50   ~ 0
VA0
Text Label 6800 1350 0    50   ~ 0
VA1
Text Label 6800 1450 0    50   ~ 0
VA2
Text Label 6800 1550 0    50   ~ 0
VA3
Text Label 6800 1650 0    50   ~ 0
VA4
Text Label 6800 1750 0    50   ~ 0
VA5
Text Label 6800 1850 0    50   ~ 0
VA6
Text Label 6800 1950 0    50   ~ 0
VA7
Text Label 6800 2050 0    50   ~ 0
VA8
Text Label 6800 2150 0    50   ~ 0
VA9
Text Label 6800 2250 0    50   ~ 0
VA10
Text Label 6800 2350 0    50   ~ 0
VA11
Text Label 6800 2450 0    50   ~ 0
VA12
Text Label 6800 2550 0    50   ~ 0
VA13
Wire Wire Line
	3850 2350 4050 2350
Text Label 4050 2350 2    50   ~ 0
VR~W
$Comp
L power:+5V #PWR?
U 1 1 6261810A
P 3000 5100
AR Path="/6261810A" Ref="#PWR?"  Part="1" 
AR Path="/5F3EA81D/6261810A" Ref="#PWR?"  Part="1" 
AR Path="/5FFAB29F/6261810A" Ref="#PWR?"  Part="1" 
AR Path="/60EEF558/6261810A" Ref="#PWR?"  Part="1" 
AR Path="/622E9471/6261810A" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 3000 4950 50  0001 C CNN
F 1 "+5V" H 3015 5273 50  0000 C CNN
F 2 "" H 3000 5100 50  0001 C CNN
F 3 "" H 3000 5100 50  0001 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 6261810E
P 2650 6150
F 0 "R2" H 2718 6196 50  0000 L CNN
F 1 "470Ω" H 2718 6105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2690 6140 50  0001 C CNN
F 3 "~" H 2650 6150 50  0001 C CNN
	1    2650 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 6261810F
P 3000 6300
F 0 "R3" H 3068 6346 50  0000 L CNN
F 1 "75Ω" H 3068 6255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3040 6290 50  0001 C CNN
F 3 "~" H 3000 6300 50  0001 C CNN
	1    3000 6300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 62618110
P 2900 5800
F 0 "Q1" H 3090 5846 50  0000 L CNN
F 1 "PN2222" H 3090 5755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 3100 5900 50  0001 C CNN
F 3 "~" H 2900 5800 50  0001 C CNN
	1    2900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6000 3000 6050
Connection ~ 3000 6050
Wire Wire Line
	3000 6050 3000 6150
Wire Wire Line
	2700 5800 2650 5800
Wire Wire Line
	2650 5800 2650 6000
Connection ~ 2650 5800
Wire Wire Line
	2650 5800 2600 5800
Wire Wire Line
	3800 6250 3800 6550
Wire Wire Line
	3800 6550 3450 6550
Wire Wire Line
	3000 6550 3000 6450
Wire Wire Line
	3000 6550 2650 6550
Wire Wire Line
	2650 6550 2650 6300
Connection ~ 3000 6550
Wire Wire Line
	3450 6450 3450 6550
Connection ~ 3450 6550
Wire Wire Line
	3450 6550 3250 6550
Wire Wire Line
	3450 6150 3450 5500
Wire Wire Line
	3450 5500 3000 5500
Wire Wire Line
	3000 5500 3000 5600
Connection ~ 3000 5500
Wire Wire Line
	3250 6550 3250 6650
Connection ~ 3250 6550
Wire Wire Line
	3250 6550 3000 6550
$Comp
L power:GND #PWR0100
U 1 1 62618111
P 3250 6650
F 0 "#PWR0100" H 3250 6400 50  0001 C CNN
F 1 "GND" H 3255 6477 50  0000 C CNN
F 2 "" H 3250 6650 50  0001 C CNN
F 3 "" H 3250 6650 50  0001 C CNN
	1    3250 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C45
U 1 1 62618112
P 3450 6300
F 0 "C45" H 3565 6346 50  0000 L CNN
F 1 "0.1µF" H 3565 6255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3488 6150 50  0001 C CNN
F 3 "~" H 3450 6300 50  0001 C CNN
	1    3450 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 62618113
P 3000 5300
F 0 "FB1" H 3200 5350 50  0000 C CNN
F 1 "Ferrite Bead" H 3350 5250 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P10.16mm_Horizontal_Vishay_IM-1" V 2930 5300 50  0001 C CNN
F 3 "~" H 3000 5300 50  0001 C CNN
	1    3000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_US RV1
U 1 1 63BCE9BA
P 2450 5800
F 0 "RV1" V 2245 5800 50  0000 C CNN
F 1 "1KΩ" V 2336 5800 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 2450 5800 50  0001 C CNN
F 3 "~" H 2450 5800 50  0001 C CNN
	1    2450 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5950 2450 6000
NoConn ~ 2300 5800
Wire Wire Line
	3850 3550 4150 3550
Text Label 4150 3550 2    50   ~ 0
COMP
Wire Wire Line
	2050 6000 2450 6000
Text Label 2050 6000 0    50   ~ 0
COMP
Wire Wire Line
	3000 5100 3000 5200
Wire Wire Line
	3000 5400 3000 5500
Text Label 6250 1350 2    50   ~ 0
VA0
Text Label 6250 1450 2    50   ~ 0
VA1
Text Label 6250 1550 2    50   ~ 0
VA2
Text Label 6250 1650 2    50   ~ 0
VA3
Text Label 6250 1750 2    50   ~ 0
VA4
Text Label 6250 1850 2    50   ~ 0
VA5
Text Label 6250 1950 2    50   ~ 0
VA6
Wire Wire Line
	6250 1350 6000 1350
Wire Wire Line
	6250 1450 6000 1450
Wire Wire Line
	6250 1550 6000 1550
Wire Wire Line
	6250 1650 6000 1650
Wire Wire Line
	6250 1750 6000 1750
Wire Wire Line
	6250 1850 6000 1850
Wire Wire Line
	6250 1950 6000 1950
Wire Wire Line
	6800 1250 7050 1250
Wire Wire Line
	6800 1350 7050 1350
Wire Wire Line
	6800 1450 7050 1450
Wire Wire Line
	6800 1550 7050 1550
Wire Wire Line
	6800 1650 7050 1650
Wire Wire Line
	6800 1750 7050 1750
Wire Wire Line
	6800 1850 7050 1850
Text Label 6250 3450 2    50   ~ 0
VA7
Text Label 6250 3550 2    50   ~ 0
VA8
Text Label 6250 3650 2    50   ~ 0
VA9
Text Label 6250 3750 2    50   ~ 0
VA10
Text Label 6250 3850 2    50   ~ 0
VA11
Text Label 6250 3950 2    50   ~ 0
VA12
Text Label 6250 4050 2    50   ~ 0
VA13
Wire Wire Line
	6250 3450 6000 3450
Wire Wire Line
	6250 3550 6000 3550
Wire Wire Line
	6250 3650 6000 3650
Wire Wire Line
	6250 3750 6000 3750
Wire Wire Line
	6250 3850 6000 3850
Wire Wire Line
	6250 3950 6000 3950
Wire Wire Line
	6250 4050 6000 4050
Wire Wire Line
	7050 1950 6800 1950
Wire Wire Line
	7050 2050 6800 2050
Wire Wire Line
	7050 2150 6800 2150
Wire Wire Line
	7050 2250 6800 2250
Wire Wire Line
	7050 2350 6800 2350
Wire Wire Line
	7050 2450 6800 2450
Wire Wire Line
	7050 2550 6800 2550
$Comp
L RCJ-041:RCJ-041 J19
U 1 1 62618103
P 4000 6150
F 0 "J19" H 3748 6180 50  0000 R CNN
F 1 "COMPOSITE" H 3748 6089 50  0000 R CNN
F 2 "0_Fred's_Local_Library:RCAJackCUI" H 4000 6150 50  0001 L BNN
F 3 "" H 4000 6150 50  0001 L BNN
F 4 "RCJ-041" H 4000 6150 50  0001 L BNN "MP"
F 5 "https://www.cuidevices.com/product/interconnect/connectors/rca-connectors/rcj-04-series?utm_source=snapeda.com&utm_medium=referral&utm_campaign=snapedaBOM" H 4000 6150 50  0001 L BNN "CUI_PURCHASE_URL"
F 6 "None" H 4000 6150 50  0001 L BNN "PACKAGE"
F 7 "Unavailable" H 4000 6150 50  0001 L BNN "AVAILABILITY"
F 8 "None" H 4000 6150 50  0001 L BNN "PRICE"
F 9 "CUI Devices" H 4000 6150 50  0001 L BNN "MF"
F 10 "Metal Right-Angle, RCA Jack, Black Housing and Insulation" H 4000 6150 50  0001 L BNN "DESCRIPTION"
	1    4000 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 6050 3800 6050
Text Label 3150 5500 0    50   ~ 0
FB
Text Label 3550 6050 0    50   ~ 0
Y
Text Label 2650 5950 0    50   ~ 0
RY
$Comp
L 74xx:74LS574 U20
U 1 1 627D2985
P 7450 4250
F 0 "U20" H 7500 5000 50  0000 L CNN
F 1 "74HCT574" H 7500 4900 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7450 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 7450 4250 50  0001 C CNN
	1    7450 4250
	1    0    0    -1  
$EndComp
NoConn ~ 3850 3450
NoConn ~ 2750 2850
Wire Bus Line
	2300 1150 2300 1850
$EndSCHEMATC
