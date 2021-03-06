EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Atari Wii ESP32 Interfae"
Date "2021-06-22"
Rev "3"
Comp "mulcmu"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:DB9_Male J1
U 1 1 609EB060
P 2025 1525
F 0 "J1" H 1943 833 50  0000 C CNN
F 1 "DB9_SolderSide" H 1943 924 50  0000 C CNN
F 2 "AtariWiiWifi:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.90mm_Housed_MountingHolesOffset11.32mm" H 2025 1525 50  0001 C CNN
F 3 " ~" H 2025 1525 50  0001 C CNN
	1    2025 1525
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB9_Male J2
U 1 1 609ECA4E
P 2025 2825
F 0 "J2" H 1943 2133 50  0000 C CNN
F 1 "DB9_SolderSide" H 1943 2224 50  0000 C CNN
F 2 "AtariWiiWifi:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.90mm_Housed_MountingHolesOffset11.32mm" H 2025 2825 50  0001 C CNN
F 3 " ~" H 2025 2825 50  0001 C CNN
	1    2025 2825
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J1A1
U 1 1 609EE472
P 3200 1525
F 0 "J1A1" H 3280 1567 50  0000 L CNN
F 1 "Conn_01x09" H 3280 1476 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x09_Pitch2.54mm" H 3200 1525 50  0001 C CNN
F 3 "~" H 3200 1525 50  0001 C CNN
	1    3200 1525
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J2A1
U 1 1 609F06AB
P 3200 2825
F 0 "J2A1" H 3280 2867 50  0000 L CNN
F 1 "Conn_01x09" H 3280 2776 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x09_Pitch2.54mm" H 3200 2825 50  0001 C CNN
F 3 "~" H 3200 2825 50  0001 C CNN
	1    3200 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 1125 3000 1125
Connection ~ 3000 1125
Wire Wire Line
	2325 1225 3000 1225
Connection ~ 3000 1225
Wire Wire Line
	2325 1325 3000 1325
Connection ~ 3000 1325
Wire Wire Line
	3000 1825 3850 1825
Wire Wire Line
	3000 1925 3850 1925
Wire Wire Line
	2325 1925 3000 1925
Connection ~ 3000 1925
Wire Wire Line
	2325 1825 3000 1825
Connection ~ 3000 1825
Wire Wire Line
	2325 1725 3000 1725
Connection ~ 3000 1725
Wire Wire Line
	2325 1625 3000 1625
Connection ~ 3000 1625
Wire Wire Line
	2325 1525 3000 1525
Connection ~ 3000 1525
Wire Wire Line
	2325 1425 3000 1425
Connection ~ 3000 1425
Wire Wire Line
	2325 2425 3000 2425
Wire Wire Line
	3000 2525 2325 2525
Wire Wire Line
	2325 2625 3000 2625
Wire Wire Line
	2325 2725 3000 2725
Wire Wire Line
	2325 2825 3000 2825
Wire Wire Line
	2325 2925 3000 2925
Wire Wire Line
	2325 3025 3000 3025
Wire Wire Line
	2325 3125 3000 3125
Wire Wire Line
	2325 3225 3000 3225
Text Label 3850 1125 0    50   ~ 0
J1_UP
Text Label 3850 1325 0    50   ~ 0
J1_DOWN
Text Label 3850 1525 0    50   ~ 0
J1_LEFT
Text Label 3850 1725 0    50   ~ 0
J1_RIGHT
Text Label 3850 1925 0    50   ~ 0
J1_PotB
Text Label 3850 1825 0    50   ~ 0
J1_PotA
Text Label 3850 1625 0    50   ~ 0
J1_GND
Text Label 3850 1425 0    50   ~ 0
J1_5V
Text Label 3850 1225 0    50   ~ 0
J1_TRIG
Wire Wire Line
	3000 3125 3850 3125
Wire Wire Line
	3000 3225 3850 3225
Text Label 3850 2425 0    50   ~ 0
J2_UP
Text Label 3850 2625 0    50   ~ 0
J2_DOWN
Text Label 3850 2825 0    50   ~ 0
J2_LEFT
Text Label 3850 3025 0    50   ~ 0
J2_RIGHT
Text Label 3850 3225 0    50   ~ 0
J2_PotB
Text Label 3850 3125 0    50   ~ 0
J2_PotA
Text Label 3850 2925 0    50   ~ 0
J2_GND
Text Label 3850 2725 0    50   ~ 0
J2_5V
Text Label 3850 2525 0    50   ~ 0
J2_TRIG
Connection ~ 3000 2425
Connection ~ 3000 2525
Connection ~ 3000 2625
Connection ~ 3000 2725
Connection ~ 3000 2825
Connection ~ 3000 2925
Connection ~ 3000 3025
Connection ~ 3000 3125
Connection ~ 3000 3225
$Comp
L AtariWiiWifi:AD5242 U3
U 1 1 609FCA75
P 8150 2700
F 0 "U3" H 8150 3781 50  0000 C CNN
F 1 "AD5242" H 8150 3690 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 8150 2200 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5253_5254.pdf" H 9150 2400 50  0001 C CNN
	1    8150 2700
	1    0    0    -1  
$EndComp
$Comp
L AtariWiiWifi:AD5242 U2
U 1 1 60A02480
P 9650 2675
F 0 "U2" H 9650 3756 50  0000 C CNN
F 1 "AD5242" H 9650 3665 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 9650 2175 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5253_5254.pdf" H 10650 2375 50  0001 C CNN
	1    9650 2675
	1    0    0    -1  
$EndComp
$Comp
L AtariWiiWifi:PCAL6416APW U1
U 1 1 60A07871
P 6150 2600
F 0 "U1" H 6150 1511 50  0000 C CNN
F 1 "PCAL6416APW" H 6150 1420 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 6150 2650 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCAL6416A.pdf" H 6150 2550 50  0001 C CNN
	1    6150 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 950  5200 950 
Wire Wire Line
	6050 950  6050 1600
Wire Wire Line
	3000 2725 4500 2725
Wire Wire Line
	3000 1425 4500 1425
Wire Wire Line
	5175 1800 5650 1800
Wire Wire Line
	3000 1125 5175 1125
Wire Wire Line
	5650 1900 5100 1900
Wire Wire Line
	3000 1225 5100 1225
Wire Wire Line
	5000 2000 5650 2000
Wire Wire Line
	3000 1325 5000 1325
Wire Wire Line
	5650 2100 4875 2100
Wire Wire Line
	3000 1525 4875 1525
$Comp
L power:GND #PWR0101
U 1 1 60A0FA7E
P 6150 4325
F 0 "#PWR0101" H 6150 4075 50  0001 C CNN
F 1 "GND" H 6155 4152 50  0000 C CNN
F 2 "" H 6150 4325 50  0001 C CNN
F 3 "" H 6150 4325 50  0001 C CNN
	1    6150 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1625 4400 1625
Connection ~ 6150 4250
Wire Wire Line
	6150 4250 6150 4325
Wire Wire Line
	3000 2925 4400 2925
Wire Wire Line
	3000 1725 4650 1725
Wire Wire Line
	5075 2700 5650 2700
Wire Wire Line
	3000 2425 5075 2425
Wire Wire Line
	5650 2800 4950 2800
Wire Wire Line
	3000 2525 4950 2525
Wire Wire Line
	4850 2900 5650 2900
Wire Wire Line
	3000 2625 4850 2625
Wire Wire Line
	5650 3000 4775 3000
Wire Wire Line
	3000 2825 4775 2825
Wire Wire Line
	3000 3025 4675 3025
$Comp
L power:GND #PWR0102
U 1 1 60A1B667
P 7825 4075
F 0 "#PWR0102" H 7825 3825 50  0001 C CNN
F 1 "GND" H 7830 3902 50  0000 C CNN
F 2 "" H 7825 4075 50  0001 C CNN
F 3 "" H 7825 4075 50  0001 C CNN
	1    7825 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3200 8050 3925
Wire Wire Line
	8050 3925 8150 3925
Wire Wire Line
	8150 3200 8150 3925
Connection ~ 8150 3925
Wire Wire Line
	9550 3175 9550 3925
Connection ~ 8925 3925
Connection ~ 9550 3925
Wire Wire Line
	8550 2600 8625 2600
Wire Wire Line
	8550 2200 8625 2200
Wire Wire Line
	8625 2200 8625 2600
Wire Wire Line
	10050 2575 10150 2575
Wire Wire Line
	10050 2175 10150 2175
Wire Wire Line
	10150 2175 10150 2575
Text Label 8725 1475 3    50   ~ 0
J1_PotB
Text Label 8825 1475 3    50   ~ 0
J1_PotA
Wire Wire Line
	8550 2500 8825 2500
Text Label 10275 1475 3    50   ~ 0
J2_PotB
Text Label 10375 1475 3    50   ~ 0
J2_PotA
Wire Wire Line
	6250 1600 6250 950 
Wire Wire Line
	6250 950  6700 950 
Wire Wire Line
	8150 950  7475 950 
Wire Wire Line
	8150 1800 8150 950 
Wire Wire Line
	9650 1775 9650 950 
Connection ~ 8150 950 
Wire Wire Line
	6650 2200 6850 2200
Wire Wire Line
	8050 3925 7825 3925
Wire Wire Line
	6775 3925 6775 2400
Wire Wire Line
	6775 2400 6650 2400
Connection ~ 8050 3925
$Comp
L Device:R R2
U 1 1 60A508EE
P 7075 1275
F 0 "R2" H 7145 1321 50  0000 L CNN
F 1 "R" H 7145 1230 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7005 1275 50  0001 C CNN
F 3 "~" H 7075 1275 50  0001 C CNN
	1    7075 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 2000 7075 1425
Wire Wire Line
	7075 1125 7075 950 
Connection ~ 7075 950 
Connection ~ 7475 950 
NoConn ~ 10050 1975
NoConn ~ 10050 2375
NoConn ~ 8550 2000
NoConn ~ 8550 2400
$Comp
L AtariWiiWifi:ESP32 U4
U 1 1 60A755F3
P 4875 5675
F 0 "U4" H 4800 6590 50  0000 C CNN
F 1 "ESP32" H 4800 6499 50  0000 C CNN
F 2 "AtariWiiWifi:DIP-38_900_ELL" H 7375 6525 50  0001 C CNN
F 3 "" H 7375 6525 50  0001 C CNN
	1    4875 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5425 5675 6025 5675
Wire Wire Line
	5425 5375 5750 5375
$Comp
L power:+3V3 #PWR0104
U 1 1 60A7D58D
P 7450 4500
F 0 "#PWR0104" H 7450 4350 50  0001 C CNN
F 1 "+3V3" H 7465 4673 50  0000 C CNN
F 2 "" H 7450 4500 50  0001 C CNN
F 3 "" H 7450 4500 50  0001 C CNN
	1    7450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 5175 3725 5175
Wire Wire Line
	3725 5175 3725 4675
$Comp
L power:GND #PWR0105
U 1 1 60A81AE1
P 4775 7450
F 0 "#PWR0105" H 4775 7200 50  0001 C CNN
F 1 "GND" H 4780 7277 50  0000 C CNN
F 2 "" H 4775 7450 50  0001 C CNN
F 3 "" H 4775 7450 50  0001 C CNN
	1    4775 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 6475 3725 6475
Wire Wire Line
	3725 6475 3725 7275
Wire Wire Line
	3725 7275 4775 7275
Wire Wire Line
	4775 7275 4775 7450
Wire Wire Line
	5425 5175 5575 5175
Wire Wire Line
	5575 5175 5575 5775
Wire Wire Line
	5575 7275 4775 7275
Connection ~ 4775 7275
Wire Wire Line
	5425 5775 5575 5775
Connection ~ 5575 5775
Text Label 6700 5675 2    50   ~ 0
SDA
Text Label 6700 5375 2    50   ~ 0
SCL
NoConn ~ 4175 5375
NoConn ~ 4175 5475
NoConn ~ 4175 5575
NoConn ~ 4175 5675
NoConn ~ 4175 5775
NoConn ~ 4175 5875
NoConn ~ 4175 5975
NoConn ~ 4175 6075
NoConn ~ 4175 6175
NoConn ~ 4175 6275
NoConn ~ 4175 6375
NoConn ~ 4175 6575
NoConn ~ 4175 6675
NoConn ~ 4175 6775
NoConn ~ 4175 6875
NoConn ~ 5425 6975
NoConn ~ 5425 6875
NoConn ~ 5425 6775
NoConn ~ 5425 6675
NoConn ~ 5425 6575
NoConn ~ 5425 6475
NoConn ~ 5425 6375
NoConn ~ 5425 6275
NoConn ~ 5425 6175
NoConn ~ 5425 6075
NoConn ~ 5425 5575
NoConn ~ 5425 5475
$Comp
L Device:R R3
U 1 1 60B1520B
P 5750 5100
F 0 "R3" H 5820 5146 50  0000 L CNN
F 1 "R" H 5820 5055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5680 5100 50  0001 C CNN
F 3 "~" H 5750 5100 50  0001 C CNN
	1    5750 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60B15991
P 6025 5100
F 0 "R4" H 6095 5146 50  0000 L CNN
F 1 "R" H 6095 5055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5955 5100 50  0001 C CNN
F 3 "~" H 6025 5100 50  0001 C CNN
	1    6025 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 5250 6025 5675
Wire Wire Line
	5750 5250 5750 5375
Wire Wire Line
	5750 4950 5750 4675
Wire Wire Line
	3725 4675 5750 4675
Wire Wire Line
	5750 4675 6025 4675
Wire Wire Line
	6025 4675 6025 4950
Connection ~ 5750 4675
Wire Wire Line
	6650 1800 7300 1800
Wire Wire Line
	7300 1800 7300 2300
Wire Wire Line
	6650 1900 6700 1900
Wire Wire Line
	7000 1900 7000 2400
NoConn ~ 10050 2875
NoConn ~ 10050 2975
NoConn ~ 8550 3000
NoConn ~ 8550 2900
Wire Wire Line
	9250 2125 8925 2125
Wire Wire Line
	8925 2125 8925 3925
Connection ~ 7825 3925
Wire Wire Line
	9250 2025 8925 2025
Wire Wire Line
	8925 2025 8925 2125
Connection ~ 8925 2125
Wire Wire Line
	7750 2050 7475 2050
Connection ~ 7475 2050
Wire Wire Line
	7475 2050 7475 950 
Wire Wire Line
	7750 2150 7475 2150
Wire Wire Line
	7475 2150 7475 2050
$Comp
L Device:C C1
U 1 1 60C02D20
P 1700 6400
F 0 "C1" H 1815 6446 50  0000 L CNN
F 1 "C" H 1815 6355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1738 6250 50  0001 C CNN
F 3 "~" H 1700 6400 50  0001 C CNN
	1    1700 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60C04008
P 650 6400
F 0 "C2" H 765 6446 50  0000 L CNN
F 1 "C" H 765 6355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 688 6250 50  0001 C CNN
F 3 "~" H 650 6400 50  0001 C CNN
	1    650  6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60C041DE
P 1000 6400
F 0 "C3" H 1115 6446 50  0000 L CNN
F 1 "C" H 1115 6355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1038 6250 50  0001 C CNN
F 3 "~" H 1000 6400 50  0001 C CNN
	1    1000 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60C0438A
P 1350 6400
F 0 "C4" H 1465 6446 50  0000 L CNN
F 1 "C" H 1465 6355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1388 6250 50  0001 C CNN
F 3 "~" H 1350 6400 50  0001 C CNN
	1    1350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  6550 650  7275
Wire Wire Line
	650  7275 1000 7275
Wire Wire Line
	1000 6550 1000 7275
Connection ~ 1000 7275
Wire Wire Line
	1000 7275 1350 7275
Wire Wire Line
	1350 6550 1350 7275
Connection ~ 1350 7275
Wire Wire Line
	1350 7275 1700 7275
Wire Wire Line
	650  6250 650  5675
Wire Wire Line
	650  5675 1000 5675
Wire Wire Line
	1000 6250 1000 5675
Connection ~ 1000 5675
Wire Wire Line
	1000 5675 1350 5675
Wire Wire Line
	1350 6250 1350 5675
Connection ~ 1350 5675
Wire Wire Line
	1350 5675 1700 5675
Text Notes 6650 2625 1    50   ~ 0
0x20
Text Notes 7750 2025 1    50   ~ 0
0x2F
Text Notes 9250 2025 1    50   ~ 0
0x2C
$Comp
L power:+5V #PWR0106
U 1 1 60C1B4FC
P 5200 800
F 0 "#PWR0106" H 5200 650 50  0001 C CNN
F 1 "+5V" H 5215 973 50  0000 C CNN
F 2 "" H 5200 800 50  0001 C CNN
F 3 "" H 5200 800 50  0001 C CNN
	1    5200 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 800  5200 950 
Connection ~ 5200 950 
Wire Wire Line
	5200 950  6050 950 
Connection ~ 10150 2175
Connection ~ 8625 2200
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60C38241
P 2900 6650
F 0 "J4" V 2962 6694 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3053 6694 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2900 6650 50  0001 C CNN
F 3 "~" H 2900 6650 50  0001 C CNN
	1    2900 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4175 6975 2900 6975
Wire Wire Line
	2900 6975 2900 6850
Wire Wire Line
	2800 6850 2800 6975
Wire Wire Line
	2800 6975 2450 6975
Wire Wire Line
	2450 6975 2450 5675
$Comp
L power:+5V #PWR0109
U 1 1 60C55DB0
P 2450 4900
F 0 "#PWR0109" H 2450 4750 50  0001 C CNN
F 1 "+5V" H 2465 5073 50  0000 C CNN
F 2 "" H 2450 4900 50  0001 C CNN
F 3 "" H 2450 4900 50  0001 C CNN
	1    2450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 950  7300 950 
Wire Wire Line
	10150 950  9650 950 
Wire Wire Line
	10150 950  10150 2175
Connection ~ 9650 950 
Wire Wire Line
	8150 950  8625 950 
Wire Wire Line
	8625 950  8625 2200
Connection ~ 8625 950 
Wire Wire Line
	6050 950  6250 950 
Connection ~ 6050 950 
Connection ~ 6250 950 
Wire Wire Line
	1700 6250 1700 5675
Connection ~ 1700 5675
Wire Wire Line
	1700 6550 1700 7275
Wire Wire Line
	1700 5675 2025 5675
Connection ~ 2450 5675
Wire Wire Line
	2450 5675 2450 4925
Connection ~ 3725 7275
Wire Wire Line
	1700 7275 2025 7275
Connection ~ 1700 7275
Wire Wire Line
	4400 4250 6150 4250
Connection ~ 6025 4675
Wire Wire Line
	6650 2000 7075 2000
Wire Wire Line
	6300 5250 6300 5875
Wire Wire Line
	6300 5875 5425 5875
$Comp
L Device:R R7
U 1 1 60D8A4E7
P 6300 5100
F 0 "R7" H 6370 5146 50  0000 L CNN
F 1 "R" H 6370 5055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6230 5100 50  0001 C CNN
F 3 "~" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 4675 6300 4675
Wire Wire Line
	6300 4950 6300 4675
$Comp
L Device:R R6
U 1 1 60E5E747
P 7300 1275
F 0 "R6" H 7370 1321 50  0000 L CNN
F 1 "R" H 7370 1230 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 1275 50  0001 C CNN
F 3 "~" H 7300 1275 50  0001 C CNN
	1    7300 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1125 7300 950 
Connection ~ 7300 950 
Wire Wire Line
	7300 950  7475 950 
Wire Wire Line
	7300 1425 7300 1800
Connection ~ 7300 1800
$Comp
L Device:R R5
U 1 1 60E9D50E
P 6700 1275
F 0 "R5" H 6770 1321 50  0000 L CNN
F 1 "R" H 6770 1230 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6630 1275 50  0001 C CNN
F 3 "~" H 6700 1275 50  0001 C CNN
	1    6700 1275
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 1425 6700 1900
Connection ~ 6700 1900
Wire Wire Line
	6700 1900 7000 1900
Wire Wire Line
	6700 1125 6700 950 
Connection ~ 6700 950 
Wire Wire Line
	5650 3400 5600 3400
Wire Wire Line
	5575 3300 5650 3300
Wire Wire Line
	5650 3200 5550 3200
Wire Wire Line
	5525 2500 5650 2500
Wire Wire Line
	5650 2400 5500 2400
Wire Wire Line
	5500 2400 5500 3850
Wire Wire Line
	5475 2300 5650 2300
Text Notes 2400 1925 0    62   ~ 0
GRN\nBLU\nYEL\nRED\nWHT\nBLK\nPRL\nGRY\nORG
Text Notes 2400 3225 0    62   ~ 0
GRN\nBLU\nYEL\nRED\nWHT\nBLK\nPRL\nGRY\nORG
Text Notes -2325 5100 0    50   ~ 0
Todo:\n\nTest interrup feedback.  Not needed for joystick but\nthe ports are bi-directional so could use ESP32 as\nnetwork gateway.\n\nJ3 Extra trigger with digital IO, how to best implement?\n
Text Notes 4275 7850 0    50   ~ 0
Pin 18 has GND on silk screen\nDon't ground it!
$Comp
L AtariWiiWifi:TXS0104E U6
U 1 1 60D3930A
P 8275 5675
F 0 "U6" H 8400 5200 50  0000 C CNN
F 1 "TXS0104E" H 8500 5100 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8275 5125 50  0001 C CNN
F 3 "" H 8275 6055 50  0001 C CNN
	1    8275 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4675 7300 4675
Wire Wire Line
	8175 4675 8175 4775
Connection ~ 6300 4675
$Comp
L Device:C C5
U 1 1 60D57A04
P 7300 4975
F 0 "C5" H 7415 5021 50  0000 L CNN
F 1 "C" H 7415 4930 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 4825 50  0001 C CNN
F 3 "~" H 7300 4975 50  0001 C CNN
	1    7300 4975
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60D99DF7
P 2025 6400
F 0 "C6" H 2140 6446 50  0000 L CNN
F 1 "C" H 2140 6355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2063 6250 50  0001 C CNN
F 3 "~" H 2025 6400 50  0001 C CNN
	1    2025 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 6250 2025 5675
Wire Wire Line
	2025 6550 2025 7275
Connection ~ 2025 5675
Wire Wire Line
	2025 5675 2450 5675
Connection ~ 2025 7275
Wire Wire Line
	2025 7275 3725 7275
Connection ~ 5750 5375
Connection ~ 6025 5675
Text Label 6700 5875 2    50   ~ 0
INT
Connection ~ 6300 5875
Wire Wire Line
	5425 5275 7750 5275
Wire Wire Line
	6025 5675 7750 5675
Wire Wire Line
	6300 5875 7750 5875
Text Label 8975 5775 2    50   ~ 0
INT_5
Text Label 8975 5575 2    50   ~ 0
SDA_5
Wire Wire Line
	8550 2100 8725 2100
Wire Wire Line
	8725 1475 8725 2100
Wire Wire Line
	8825 1475 8825 2500
Wire Wire Line
	10050 2075 10275 2075
Wire Wire Line
	10275 1475 10275 2075
Wire Wire Line
	10050 2475 10375 2475
Wire Wire Line
	10375 1475 10375 2475
Wire Wire Line
	9550 3925 9650 3925
Wire Wire Line
	9650 3175 9650 3925
Wire Wire Line
	8925 3925 9550 3925
Wire Wire Line
	7825 4075 7825 3925
Text Label 7450 3525 1    50   ~ 0
SLC_5
Text Label 7575 3525 1    50   ~ 0
SDA_5
Text Label 9050 3500 1    50   ~ 0
SLC_5
Text Label 9150 3500 1    50   ~ 0
SDA_5
Wire Wire Line
	7300 2300 7450 2300
Wire Wire Line
	9150 3500 9150 2375
Wire Wire Line
	9150 2375 9250 2375
Wire Wire Line
	9250 2275 9050 2275
Wire Wire Line
	9050 2275 9050 3500
Wire Wire Line
	7575 3525 7575 2400
Wire Wire Line
	7000 2400 7575 2400
Connection ~ 7575 2400
Wire Wire Line
	7575 2400 7750 2400
Wire Wire Line
	7450 3525 7450 2300
Connection ~ 7450 2300
Wire Wire Line
	7450 2300 7750 2300
Wire Wire Line
	7075 2000 7075 3100
Wire Wire Line
	7075 3100 7325 3100
Wire Wire Line
	7325 3100 7325 3525
Connection ~ 7075 2000
Text Label 7325 3525 1    50   ~ 0
INT_5
$Comp
L Device:R R8
U 1 1 61066A4F
P 7750 6250
F 0 "R8" H 7820 6296 50  0000 L CNN
F 1 "R" H 7820 6205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7680 6250 50  0001 C CNN
F 3 "~" H 7750 6250 50  0001 C CNN
	1    7750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 5975 7750 5975
Wire Wire Line
	7750 5975 7750 6100
Connection ~ 7750 5975
Connection ~ 4500 1425
Wire Wire Line
	4500 1425 4500 950 
Wire Wire Line
	4500 1425 4500 2725
Wire Wire Line
	5650 2200 4650 2200
Wire Wire Line
	4650 2200 4650 1725
Wire Wire Line
	4400 1625 4400 2925
Wire Wire Line
	4875 1525 4875 2100
Wire Wire Line
	5000 1325 5000 2000
Wire Wire Line
	5100 1225 5100 1900
Wire Wire Line
	5175 1125 5175 1800
Connection ~ 4400 2925
Connection ~ 4500 2725
Wire Wire Line
	4400 2925 4400 4250
Wire Wire Line
	5075 2425 5075 2700
Wire Wire Line
	4950 2525 4950 2800
Wire Wire Line
	4850 2625 4850 2900
Wire Wire Line
	4775 2825 4775 3000
Wire Wire Line
	4675 3025 4675 3100
Wire Wire Line
	4675 3100 5650 3100
$Comp
L Connector:DB9_Male J3
U 1 1 6123B9C0
P 2025 4150
F 0 "J3" H 1943 3458 50  0000 C CNN
F 1 "DB9_SolderSide" H 1943 3549 50  0000 C CNN
F 2 "AtariWiiWifi:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset9.90mm_Housed_MountingHolesOffset11.32mm" H 2025 4150 50  0001 C CNN
F 3 " ~" H 2025 4150 50  0001 C CNN
	1    2025 4150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J3A1
U 1 1 6123BE92
P 3200 4150
F 0 "J3A1" H 3280 4192 50  0000 L CNN
F 1 "Conn_01x09" H 3280 4101 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x09_Pitch2.54mm" H 3200 4150 50  0001 C CNN
F 3 "~" H 3200 4150 50  0001 C CNN
	1    3200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 3750 3000 3750
Wire Wire Line
	3000 3850 2325 3850
Wire Wire Line
	2325 3950 3000 3950
Wire Wire Line
	2325 4050 3000 4050
Wire Wire Line
	2325 4150 3000 4150
Wire Wire Line
	2325 4250 3000 4250
Wire Wire Line
	2325 4350 3000 4350
Wire Wire Line
	2325 4450 3000 4450
Wire Wire Line
	2325 4550 3000 4550
Text Label 3850 3750 0    50   ~ 0
J3_UP
Text Label 3850 3950 0    50   ~ 0
J3_DOWN
Text Label 3850 4150 0    50   ~ 0
J3_LEFT
Text Label 3850 4350 0    50   ~ 0
J3_RIGHT
Text Label 3850 4250 0    50   ~ 0
J3_GND
Text Label 3850 4050 0    50   ~ 0
J3_5V
Text Label 3850 3850 0    50   ~ 0
J3_TRIG
Connection ~ 3000 3750
Connection ~ 3000 3850
Connection ~ 3000 3950
Connection ~ 3000 4050
Connection ~ 3000 4150
Connection ~ 3000 4250
Connection ~ 3000 4350
Wire Wire Line
	3000 4050 4500 4050
Wire Wire Line
	3000 4250 4400 4250
Text Notes 2400 4550 0    62   ~ 0
GRN\nBLU\nYEL\nRED\nWHT\nBLK\nPRL\nGRY\nORG
Wire Wire Line
	7450 4500 7450 4675
Connection ~ 7450 4675
Wire Wire Line
	7450 4675 8175 4675
Wire Wire Line
	4500 2725 4500 4050
Wire Wire Line
	6150 3600 6150 4250
Wire Wire Line
	5475 2300 5475 3750
Wire Wire Line
	3000 3750 5475 3750
Wire Wire Line
	3000 3850 5500 3850
Wire Wire Line
	3000 3950 5525 3950
Wire Wire Line
	5525 3950 5525 2500
Wire Wire Line
	3000 4150 5550 4150
Connection ~ 4400 4250
Wire Wire Line
	3000 4350 5575 4350
Wire Wire Line
	5550 3200 5550 4150
Wire Wire Line
	5575 3300 5575 4350
Wire Wire Line
	5600 4450 3000 4450
Wire Wire Line
	5600 3400 5600 4450
Connection ~ 3000 4450
$Comp
L power:+5V #PWR0103
U 1 1 60D3D457
P 8375 4525
F 0 "#PWR0103" H 8375 4375 50  0001 C CNN
F 1 "+5V" H 8390 4698 50  0000 C CNN
F 2 "" H 8375 4525 50  0001 C CNN
F 3 "" H 8375 4525 50  0001 C CNN
	1    8375 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	8375 4525 8375 4775
Wire Wire Line
	5575 5775 5575 6625
Wire Wire Line
	5575 6625 7300 6625
Wire Wire Line
	8275 6625 8275 6175
Connection ~ 5575 6625
Wire Wire Line
	5575 6625 5575 7275
Wire Wire Line
	7750 6400 7750 6625
Connection ~ 7750 6625
Wire Wire Line
	7750 6625 8275 6625
Wire Wire Line
	5425 5975 7750 5975
Wire Wire Line
	5750 5375 7875 5375
Wire Wire Line
	7750 5275 7750 5175
Wire Wire Line
	7750 5175 7875 5175
Wire Wire Line
	7750 5675 7750 5575
Wire Wire Line
	7750 5575 7875 5575
Wire Wire Line
	7750 5875 7750 5775
Wire Wire Line
	7750 5775 7875 5775
Text Label 8975 5375 2    50   ~ 0
SLC_5
Wire Wire Line
	8675 5375 8975 5375
Wire Wire Line
	8675 5575 8975 5575
Wire Wire Line
	8675 5775 8975 5775
Wire Wire Line
	8150 3925 8925 3925
Wire Wire Line
	7825 3925 6775 3925
Wire Wire Line
	6700 950  7075 950 
Wire Wire Line
	8625 950  9650 950 
$Comp
L Device:R R1
U 1 1 615DFF63
P 9500 5525
F 0 "R1" H 9570 5571 50  0000 L CNN
F 1 "R" H 9570 5480 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9430 5525 50  0001 C CNN
F 3 "~" H 9500 5525 50  0001 C CNN
	1    9500 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	8275 6625 9500 6625
Wire Wire Line
	9500 6625 9500 5675
Connection ~ 8275 6625
Wire Wire Line
	8675 5175 9500 5175
Wire Wire Line
	9500 5175 9500 5375
Text Label 8975 5175 2    50   ~ 0
READY
Text Label 9250 3500 1    50   ~ 0
READY
Wire Wire Line
	9250 2575 9250 3500
Wire Wire Line
	7750 2600 7700 2600
Wire Wire Line
	7700 2600 7700 3525
Text Label 7700 3525 1    50   ~ 0
READY
Wire Wire Line
	6850 2200 6850 2600
Wire Wire Line
	6850 2600 7700 2600
Connection ~ 7700 2600
$Comp
L AtariWiiWifi:MIC2775 U5
U 1 1 616C2AC2
P 3100 5375
F 0 "U5" H 3250 5075 50  0000 C CNN
F 1 "MIC2775" H 3325 4975 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3150 4875 50  0001 C CNN
F 3 "" H 3500 5725 50  0001 C CNN
	1    3100 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4825 7300 4675
Connection ~ 7300 4675
Wire Wire Line
	7300 4675 7450 4675
Wire Wire Line
	7300 5125 7300 6625
Connection ~ 7300 6625
Wire Wire Line
	7300 6625 7750 6625
Wire Wire Line
	3100 5775 3100 6050
Wire Wire Line
	3100 6050 3725 6050
Wire Wire Line
	3725 6050 3725 6475
Connection ~ 3725 6475
Wire Wire Line
	3100 4925 2450 4925
Connection ~ 2450 4925
Wire Wire Line
	2450 4925 2450 4900
Wire Wire Line
	3600 5275 4175 5275
NoConn ~ 2650 5375
NoConn ~ 3600 5475
$EndSCHEMATC
