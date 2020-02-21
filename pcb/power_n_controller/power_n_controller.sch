EESchema Schematic File Version 4
LIBS:power_n_controller-cache
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
L MCU_Microchip_ATtiny:ATtiny1614-SS U1
U 1 1 5E264628
P 7150 3700
F 0 "U1" H 7150 4581 50  0000 C CNN
F 1 "ATtiny1614-SS" H 7150 4490 50  0000 C CNN
F 2 "Package_SO:SOIC-14W_7.5x9mm_P1.27mm" H 7150 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny1614-data-sheet-40001995A.pdf" H 7150 3700 50  0001 C CNN
	1    7150 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_MountingPin J1
U 1 1 5E276576
P 2500 3500
F 0 "J1" H 2557 3817 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 2557 3726 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2550 3460 50  0001 C CNN
F 3 "~" H 2550 3460 50  0001 C CNN
	1    2500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3400 3150 3400
Wire Wire Line
	2800 3600 3150 3600
Wire Wire Line
	3150 3600 3150 3950
Wire Wire Line
	3150 3400 3150 2900
$Comp
L Connector_Generic_MountingPin:Conn_01x01_MountingPin J2
U 1 1 5E277B29
P 3350 2900
F 0 "J2" H 3438 2864 50  0000 L CNN
F 1 "Conn_01x01_MountingPin" H 3438 2773 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3350 2900 50  0001 C CNN
F 3 "~" H 3350 2900 50  0001 C CNN
	1    3350 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_MountingPin:Conn_01x01_MountingPin J3
U 1 1 5E27842E
P 3350 3950
F 0 "J3" H 3438 3914 50  0000 L CNN
F 1 "Conn_01x01_MountingPin" H 3438 3823 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3350 3950 50  0001 C CNN
F 3 "~" H 3350 3950 50  0001 C CNN
	1    3350 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5E277E7F
P 8200 3050
F 0 "R1" H 8259 3096 50  0000 L CNN
F 1 "10K" H 8259 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8200 3050 50  0001 C CNN
F 3 "~" H 8200 3050 50  0001 C CNN
	1    8200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3300 8200 3300
Wire Wire Line
	8200 3300 8200 3150
$Comp
L Connector_Generic_MountingPin:Conn_01x01_MountingPin J4
U 1 1 5E2789BE
P 4000 2500
F 0 "J4" H 4088 2464 50  0000 L CNN
F 1 "Conn_01x01_MountingPin" H 4088 2373 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 4000 2500 50  0001 C CNN
F 3 "~" H 4000 2500 50  0001 C CNN
	1    4000 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic_MountingPin:Conn_01x01_MountingPin J5
U 1 1 5E279056
P 4050 4750
F 0 "J5" H 4138 4714 50  0000 L CNN
F 1 "Conn_01x01_MountingPin" H 4138 4623 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 4050 4750 50  0001 C CNN
F 3 "~" H 4050 4750 50  0001 C CNN
	1    4050 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7150 4400 7150 4750
$Comp
L Device:CP C1
U 1 1 5E27B90A
P 4750 3550
F 0 "C1" H 4868 3596 50  0000 L CNN
F 1 "470u" H 4868 3505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4788 3400 50  0001 C CNN
F 3 "~" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2500 4750 2500
Connection ~ 7150 2500
Wire Wire Line
	7150 2500 7150 2300
Wire Wire Line
	4750 3400 4750 2500
Connection ~ 4750 2500
Wire Wire Line
	4750 2500 7150 2500
Connection ~ 7150 4750
Wire Wire Line
	7150 4750 7150 4850
Wire Wire Line
	4750 3700 4750 4750
Wire Wire Line
	4250 4750 4750 4750
Connection ~ 4750 4750
Wire Wire Line
	4750 4750 7150 4750
$Comp
L power:GND #PWR02
U 1 1 5E27FEFC
P 7150 4850
F 0 "#PWR02" H 7150 4600 50  0001 C CNN
F 1 "GND" H 7155 4677 50  0000 C CNN
F 2 "" H 7150 4850 50  0001 C CNN
F 3 "" H 7150 4850 50  0001 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5E2802CA
P 7150 2300
F 0 "#PWR01" H 7150 2150 50  0001 C CNN
F 1 "+5V" H 7165 2473 50  0000 C CNN
F 2 "" H 7150 2300 50  0001 C CNN
F 3 "" H 7150 2300 50  0001 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5E280F40
P 5850 3300
F 0 "J6" H 5950 3300 50  0000 C CNN
F 1 "Conn_01x01" H 6250 3300 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 5850 3300 50  0001 C CNN
F 3 "~" H 5850 3300 50  0001 C CNN
	1    5850 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 3300 6550 3300
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5E281F99
P 5850 3400
F 0 "J7" H 5950 3400 50  0000 C CNN
F 1 "Conn_01x01" H 6250 3400 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 5850 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5E282080
P 5850 3500
F 0 "J8" H 5950 3500 50  0000 C CNN
F 1 "Conn_01x01" H 6250 3500 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 5850 3500 50  0001 C CNN
F 3 "~" H 5850 3500 50  0001 C CNN
	1    5850 3500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5E2821AB
P 5850 3600
F 0 "J9" H 5950 3600 50  0000 C CNN
F 1 "Conn_01x01" H 6250 3600 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 5850 3600 50  0001 C CNN
F 3 "~" H 5850 3600 50  0001 C CNN
	1    5850 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 3400 6550 3400
Wire Wire Line
	6050 3500 6550 3500
Wire Wire Line
	6050 3600 6550 3600
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 5E286196
P 10250 4450
F 0 "J11" H 10350 4450 50  0000 C CNN
F 1 "Conn_01x01" H 10650 4450 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 10250 4450 50  0001 C CNN
F 3 "~" H 10250 4450 50  0001 C CNN
	1    10250 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5E2862E6
P 8200 3600
F 0 "J12" H 8300 3600 50  0000 C CNN
F 1 "Conn_01x01" H 8600 3600 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 8200 3600 50  0001 C CNN
F 3 "~" H 8200 3600 50  0001 C CNN
	1    8200 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 5E28640C
P 8200 3700
F 0 "J13" H 8300 3700 50  0000 C CNN
F 1 "Conn_01x01" H 8600 3700 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 8200 3700 50  0001 C CNN
F 3 "~" H 8200 3700 50  0001 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 5E286580
P 8200 3800
F 0 "J14" H 8300 3800 50  0000 C CNN
F 1 "Conn_01x01" H 8600 3800 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 8200 3800 50  0001 C CNN
F 3 "~" H 8200 3800 50  0001 C CNN
	1    8200 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 5E2866BB
P 8200 3900
F 0 "J15" H 8300 3900 50  0000 C CNN
F 1 "Conn_01x01" H 8600 3900 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 8200 3900 50  0001 C CNN
F 3 "~" H 8200 3900 50  0001 C CNN
	1    8200 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J16
U 1 1 5E2867A7
P 8200 4000
F 0 "J16" H 8300 4000 50  0000 C CNN
F 1 "Conn_01x01" H 8600 4000 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 8200 4000 50  0001 C CNN
F 3 "~" H 8200 4000 50  0001 C CNN
	1    8200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3600 8000 3600
Wire Wire Line
	7750 3700 8000 3700
Wire Wire Line
	7750 3800 8000 3800
Wire Wire Line
	7750 3900 8000 3900
Wire Wire Line
	7750 4000 8000 4000
Wire Wire Line
	7150 2500 8200 2500
Wire Wire Line
	9750 2500 9750 3650
Wire Wire Line
	7150 2500 7150 3000
Wire Wire Line
	8200 2500 8200 2950
Connection ~ 8200 2500
Wire Wire Line
	8200 2500 9750 2500
$Comp
L Device:R_Small R2
U 1 1 5E28BF09
P 9100 3700
F 0 "R2" H 9159 3746 50  0000 L CNN
F 1 "100" H 9159 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9100 3700 50  0001 C CNN
F 3 "~" H 9100 3700 50  0001 C CNN
	1    9100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3800 9100 3850
Wire Wire Line
	9100 3850 9450 3850
Wire Wire Line
	9750 4050 9750 4350
Wire Wire Line
	9750 4350 10050 4350
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5E28D2D0
P 10250 4350
F 0 "J10" H 10350 4350 50  0000 C CNN
F 1 "Conn_01x01" H 10650 4350 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 10250 4350 50  0001 C CNN
F 3 "~" H 10250 4350 50  0001 C CNN
	1    10250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3400 9100 3600
Wire Wire Line
	7750 3400 9100 3400
$Comp
L Connector_Generic:Conn_01x01 J17
U 1 1 5E28E516
P 10250 4550
F 0 "J17" H 10350 4550 50  0000 C CNN
F 1 "Conn_01x01" H 10650 4550 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 10250 4550 50  0001 C CNN
F 3 "~" H 10250 4550 50  0001 C CNN
	1    10250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3500 8950 4450
Wire Wire Line
	8950 4450 10050 4450
Wire Wire Line
	7750 3500 8950 3500
Wire Wire Line
	7150 4750 9750 4750
Wire Wire Line
	9750 4750 9750 4550
Wire Wire Line
	9750 4550 10050 4550
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5E2992E4
P 9650 3850
F 0 "Q1" H 9856 3896 50  0000 L CNN
F 1 "RFD16N05LSM9A" H 9856 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 9850 3950 50  0001 C CNN
F 3 "~" H 9650 3850 50  0001 C CNN
	1    9650 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
