EESchema Schematic File Version 4
LIBS:front_encoder-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5DE82110
P 5700 3900
F 0 "SW1" H 5700 4267 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 5700 4176 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 5550 4060 50  0001 C CNN
F 3 "~" H 5700 4160 50  0001 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DE83362
P 4850 4400
F 0 "C2" V 5102 4400 50  0000 C CNN
F 1 "1u" V 5011 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4888 4250 50  0001 C CNN
F 3 "~" H 4850 4400 50  0001 C CNN
	1    4850 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5DE83F51
P 7150 4150
F 0 "C3" H 7265 4196 50  0000 L CNN
F 1 "1u" H 7265 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7188 4000 50  0001 C CNN
F 3 "~" H 7150 4150 50  0001 C CNN
	1    7150 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DE84F15
P 4850 3350
F 0 "C1" V 4598 3350 50  0000 C CNN
F 1 "1u" V 4689 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4888 3200 50  0001 C CNN
F 3 "~" H 4850 3350 50  0001 C CNN
	1    4850 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DE95834
P 6300 3800
F 0 "R3" V 6093 3800 50  0000 C CNN
F 1 "100" V 6184 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6230 3800 50  0001 C CNN
F 3 "~" H 6300 3800 50  0001 C CNN
	1    6300 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DE967A1
P 7150 3550
F 0 "R5" H 7080 3504 50  0000 R CNN
F 1 "10K" H 7080 3595 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7080 3550 50  0001 C CNN
F 3 "~" H 7150 3550 50  0001 C CNN
	1    7150 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5DE96F17
P 4850 3900
F 0 "R1" V 4643 3900 50  0000 C CNN
F 1 "100" V 4734 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4780 3900 50  0001 C CNN
F 3 "~" H 4850 3900 50  0001 C CNN
	1    4850 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DE97F19
P 6300 4400
F 0 "R4" V 6093 4400 50  0000 C CNN
F 1 "20K" V 6184 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6230 4400 50  0001 C CNN
F 3 "~" H 6300 4400 50  0001 C CNN
	1    6300 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3350 4450 3350
Wire Wire Line
	4450 3350 4450 3900
Wire Wire Line
	4450 3900 4700 3900
Wire Wire Line
	4450 3900 4450 4400
Wire Wire Line
	4450 4400 4700 4400
Connection ~ 4450 3900
Wire Wire Line
	5000 3900 5400 3900
Wire Wire Line
	5400 4000 5400 4400
Wire Wire Line
	5000 4400 5400 4400
Connection ~ 5400 4400
Wire Wire Line
	5400 4400 6150 4400
Wire Wire Line
	5400 3800 5400 3350
Wire Wire Line
	5400 3350 5000 3350
Wire Wire Line
	5400 3350 6150 3350
Connection ~ 5400 3350
Wire Wire Line
	6450 4400 6750 4400
Connection ~ 6750 3350
$Comp
L Device:R R2
U 1 1 5DE98375
P 6300 3350
F 0 "R2" V 6093 3350 50  0000 C CNN
F 1 "10K" V 6184 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6230 3350 50  0001 C CNN
F 3 "~" H 6300 3350 50  0001 C CNN
	1    6300 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3350 6750 3350
Wire Wire Line
	6750 3350 6750 4400
$Comp
L power:GND #PWR01
U 1 1 5DE9DEBB
P 6050 4950
F 0 "#PWR01" H 6050 4700 50  0001 C CNN
F 1 "GND" H 6055 4777 50  0000 C CNN
F 2 "" H 6050 4950 50  0001 C CNN
F 3 "" H 6050 4950 50  0001 C CNN
	1    6050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4400 4450 4950
Wire Wire Line
	4450 4950 6050 4950
Connection ~ 4450 4400
Wire Wire Line
	6000 4000 6050 4000
Wire Wire Line
	6050 4000 6050 4950
Connection ~ 6050 4950
Wire Wire Line
	6000 3800 6150 3800
Wire Wire Line
	6450 3800 7150 3800
Wire Wire Line
	7150 3800 7150 4000
Wire Wire Line
	7150 4300 7150 4950
Wire Wire Line
	6050 4950 7150 4950
Wire Wire Line
	6750 3350 7150 3350
Wire Wire Line
	7150 3350 7150 3400
Wire Wire Line
	7150 3700 7150 3800
Connection ~ 7150 3800
$Comp
L Mechanical:MountingHole H1
U 1 1 5DEA26EA
P 2250 3150
F 0 "H1" H 2350 3196 50  0000 L CNN
F 1 "MountingHole" H 2350 3105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2250 3150 50  0001 C CNN
F 3 "~" H 2250 3150 50  0001 C CNN
	1    2250 3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DEA2F45
P 2250 4750
F 0 "H3" H 2350 4796 50  0000 L CNN
F 1 "MountingHole" H 2350 4705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2250 4750 50  0001 C CNN
F 3 "~" H 2250 4750 50  0001 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DEA3366
P 2250 4000
F 0 "H2" H 2350 4046 50  0000 L CNN
F 1 "MountingHole" H 2350 3955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2250 4000 50  0001 C CNN
F 3 "~" H 2250 4000 50  0001 C CNN
	1    2250 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5DEA3FDD
P 8150 4150
F 0 "J1" H 8200 4467 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 8200 4376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 8150 4150 50  0001 C CNN
F 3 "~" H 8150 4150 50  0001 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4950 8850 4950
Wire Wire Line
	8850 4950 8850 4050
Wire Wire Line
	8850 4050 8450 4050
Connection ~ 7150 4950
Wire Wire Line
	7150 3350 7950 3350
Wire Wire Line
	7950 3350 7950 4050
Connection ~ 7150 3350
Wire Wire Line
	6750 3350 6750 2900
$Comp
L power:VDD #PWR02
U 1 1 5DEA7E3D
P 6750 2900
F 0 "#PWR02" H 6750 2750 50  0001 C CNN
F 1 "VDD" H 6767 3073 50  0000 C CNN
F 2 "" H 6750 2900 50  0001 C CNN
F 3 "" H 6750 2900 50  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3800 7650 3800
Wire Wire Line
	7650 3800 7650 4150
Wire Wire Line
	5400 4400 5400 4650
Wire Wire Line
	5400 4650 7950 4650
Wire Wire Line
	7950 4650 7950 4250
Wire Wire Line
	5400 3350 5400 3100
Wire Wire Line
	5400 3100 8550 3100
Wire Wire Line
	8550 3100 8550 4250
Wire Wire Line
	8550 4250 8450 4250
NoConn ~ 8200 4150
Wire Wire Line
	7650 4150 7950 4150
Connection ~ 7950 4150
Wire Wire Line
	7950 4150 8450 4150
$EndSCHEMATC
