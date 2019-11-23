EESchema Schematic File Version 4
LIBS:atmega328-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-06-27"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5D153119
P 5850 3500
F 0 "U1" H 5850 1911 50  0000 C CNN
F 1 "ATmega328P-AU" H 5850 1820 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5850 3500 50  0000 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5850 3500 50  0001 C CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D1547F8
P 5850 5800
F 0 "#PWR01" H 5850 5550 50  0001 C CNN
F 1 "GND" H 5855 5627 50  0000 C CNN
F 2 "" H 5850 5800 50  0001 C CNN
F 3 "" H 5850 5800 50  0001 C CNN
	1    5850 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 5D15569B
P 6350 1650
F 0 "#PWR02" H 6350 1500 50  0001 C CNN
F 1 "VDD" H 6367 1823 50  0000 C CNN
F 2 "" H 6350 1650 50  0001 C CNN
F 3 "" H 6350 1650 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5800 5850 5450
Connection ~ 5850 5450
Wire Wire Line
	5850 5450 5850 5000
Wire Wire Line
	5850 2000 5850 1800
Wire Wire Line
	5850 1800 5950 1800
Wire Wire Line
	6350 1800 6350 1650
Wire Wire Line
	5950 2000 5950 1800
Connection ~ 5950 1800
Wire Wire Line
	5950 1800 6350 1800
$Comp
L Device:C C1
U 1 1 5D268449
P 8500 4050
F 0 "C1" H 8615 4096 50  0000 L CNN
F 1 "1uF" H 8615 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8538 3900 50  0001 C CNN
F 3 "~" H 8500 4050 50  0001 C CNN
	1    8500 4050
	1    0    0    -1  
$EndComp
Text Label 6150 1750 0    50   ~ 0
VDD
Wire Wire Line
	8500 5450 8500 4200
$Comp
L Device:R R1
U 1 1 5D26991C
P 8500 3450
F 0 "R1" H 8570 3496 50  0000 L CNN
F 1 "10K" H 8570 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8430 3450 50  0001 C CNN
F 3 "~" H 8500 3450 50  0001 C CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1800 7450 1800
Wire Wire Line
	8500 1800 8500 1950
Connection ~ 6350 1800
Wire Wire Line
	8500 3600 8500 3800
Connection ~ 8500 3800
Wire Wire Line
	8500 3800 8500 3900
Wire Wire Line
	5850 5450 6850 5450
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J1
U 1 1 5D3E1A72
P 9600 1950
F 0 "J1" H 9650 2167 50  0000 C CNN
F 1 "Conn_I2C_DISPLAY" H 9650 2076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9600 1950 50  0001 C CNN
F 3 "~" H 9600 1950 50  0001 C CNN
	1    9600 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J3
U 1 1 5D597C81
P 9600 2950
F 0 "J3" H 9650 3167 50  0000 C CNN
F 1 "Conn_RGB_Ctrl" H 9650 3076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9600 2950 50  0001 C CNN
F 3 "~" H 9600 2950 50  0001 C CNN
	1    9600 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J4
U 1 1 5D598992
P 9600 3450
F 0 "J4" H 9650 3667 50  0000 C CNN
F 1 "Conn_bluetooth" H 9650 3600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9600 3450 50  0001 C CNN
F 3 "~" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J5
U 1 1 5D5996B5
P 9600 3950
F 0 "J5" H 9650 4167 50  0000 C CNN
F 1 "Conn_pwm_wled" H 9650 4076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x01_P2.54mm_Vertical_SMD" H 9600 3950 50  0001 C CNN
F 3 "~" H 9600 3950 50  0001 C CNN
	1    9600 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J6
U 1 1 5D599FEA
P 9600 4300
F 0 "J6" H 9650 4517 50  0000 C CNN
F 1 "Conn_fpanel_swtch" H 9650 4426 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x01_P2.54mm_Vertical_SMD" H 9600 4300 50  0001 C CNN
F 3 "~" H 9600 4300 50  0001 C CNN
	1    9600 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J7
U 1 1 5D59A91E
P 9600 4650
F 0 "J7" H 9650 4867 50  0000 C CNN
F 1 "Conn_light_sensor" H 9650 4776 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9600 4650 50  0001 C CNN
F 3 "~" H 9600 4650 50  0001 C CNN
	1    9600 4650
	1    0    0    -1  
$EndComp
Connection ~ 8500 1950
Wire Wire Line
	9400 2450 9050 2450
Wire Wire Line
	9400 3450 9050 3450
Wire Wire Line
	9050 3450 9050 2450
Connection ~ 9050 2450
Wire Wire Line
	8500 5450 10300 5450
Wire Wire Line
	10300 5450 10300 4650
Wire Wire Line
	10300 1950 9900 1950
Connection ~ 8500 5450
Wire Wire Line
	9900 2450 10300 2450
Connection ~ 10300 2450
Wire Wire Line
	10300 2450 10300 1950
Wire Wire Line
	9900 3450 10300 3450
Connection ~ 10300 3450
Wire Wire Line
	10300 3450 10300 2450
Wire Wire Line
	9900 4650 10300 4650
Connection ~ 10300 4650
Wire Wire Line
	10300 4650 10300 4300
Wire Wire Line
	9400 4650 9050 4650
Wire Wire Line
	9050 4650 9050 3450
Connection ~ 9050 3450
Wire Wire Line
	9050 2450 9050 1950
Wire Wire Line
	8500 1950 9050 1950
Connection ~ 9050 1950
Wire Wire Line
	9050 1950 9400 1950
Wire Wire Line
	8500 1950 8500 3300
Wire Wire Line
	5250 2300 4750 2300
Connection ~ 5850 1800
$Comp
L Device:R R2
U 1 1 5D5A4207
P 4100 2400
F 0 "R2" H 4170 2446 50  0000 L CNN
F 1 "10K" H 4170 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4030 2400 50  0001 C CNN
F 3 "~" H 4100 2400 50  0001 C CNN
	1    4100 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D5A494E
P 4100 2950
F 0 "R3" H 4170 2996 50  0000 L CNN
F 1 "10K" H 4170 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4030 2950 50  0001 C CNN
F 3 "~" H 4100 2950 50  0001 C CNN
	1    4100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2250 4100 1800
Wire Wire Line
	4100 2800 4100 2650
Wire Wire Line
	4100 5450 5850 5450
Wire Wire Line
	4750 2300 4750 2650
Wire Wire Line
	4750 2650 4100 2650
Connection ~ 4100 2650
Wire Wire Line
	4100 2650 4100 2550
Wire Wire Line
	4100 1800 5850 1800
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J8
U 1 1 5D5A73F2
P 9550 1300
F 0 "J8" H 9600 1617 50  0000 C CNN
F 1 "Conn_ISP" H 9600 1526 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical_SMD" H 9550 1300 50  0001 C CNN
F 3 "~" H 9550 1300 50  0001 C CNN
	1    9550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1400 10300 1400
Wire Wire Line
	10300 1400 10300 1950
Connection ~ 10300 1950
Wire Wire Line
	9850 1200 10300 1200
Text HLabel 10300 1200 2    50   Input ~ 0
VDD
Wire Wire Line
	9850 1300 10300 1300
Wire Wire Line
	9350 1200 9050 1200
Wire Wire Line
	9350 1300 9050 1300
Wire Wire Line
	9350 1400 9050 1400
Text HLabel 10300 1300 2    50   Input ~ 0
MOSI
Text HLabel 9050 1200 0    50   Input ~ 0
MISO
Text HLabel 9050 1300 0    50   Input ~ 0
SCK
Text HLabel 9050 1400 0    50   Input ~ 0
RST
Text HLabel 8650 3800 2    50   Input ~ 0
RST
Wire Wire Line
	8650 3800 8500 3800
Wire Wire Line
	6450 3800 8500 3800
Text HLabel 6350 1700 2    50   Input ~ 0
VDD
Wire Wire Line
	6450 2800 7000 2800
Wire Wire Line
	6450 2700 7000 2700
Wire Wire Line
	6450 2600 7000 2600
Wire Wire Line
	6450 3200 6950 3200
Wire Wire Line
	6450 4200 6950 4200
Wire Wire Line
	6450 4300 6950 4300
Wire Wire Line
	6450 4400 6950 4400
Wire Wire Line
	6450 4500 6950 4500
Wire Wire Line
	6450 4000 6950 4000
Wire Wire Line
	6450 4600 6950 4600
Wire Wire Line
	6450 3600 6950 3600
Wire Wire Line
	6450 3700 6950 3700
Text HLabel 7000 2600 2    50   Input ~ 0
MOSI
Text HLabel 7000 2700 2    50   Input ~ 0
MISO
Text HLabel 7000 2800 2    50   Input ~ 0
SCK
Text HLabel 6950 3200 2    50   Input ~ 0
AIP
Text HLabel 6950 3600 2    50   Input ~ 0
SDA
Text HLabel 6950 3700 2    50   Input ~ 0
SCL
Text HLabel 6950 4000 2    50   Input ~ 0
SRX
Text HLabel 6950 4600 2    50   Input ~ 0
PWM
Text HLabel 6950 4200 2    50   Input ~ 0
RGB1
Text HLabel 6950 4300 2    50   Input ~ 0
RGB2
Text HLabel 6950 4400 2    50   Input ~ 0
RGB3
Text HLabel 6950 4500 2    50   Input ~ 0
RGB4
$Comp
L Device:R R6
U 1 1 5D5BFE9D
P 7800 4550
F 0 "R6" H 7870 4596 50  0000 L CNN
F 1 "1K" H 7870 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7730 4550 50  0001 C CNN
F 3 "~" H 7800 4550 50  0001 C CNN
	1    7800 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D5C0692
P 7800 5000
F 0 "R7" H 7870 5046 50  0000 L CNN
F 1 "2K" H 7870 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7730 5000 50  0001 C CNN
F 3 "~" H 7800 5000 50  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
Connection ~ 7800 5450
Wire Wire Line
	7800 5450 8500 5450
Wire Wire Line
	7800 5150 7800 5450
Wire Wire Line
	7800 4700 7800 4800
Wire Wire Line
	7800 4800 8050 4800
Connection ~ 7800 4800
Wire Wire Line
	7800 4800 7800 4850
Wire Wire Line
	6450 4100 7800 4100
Text HLabel 8050 4800 2    50   Input ~ 0
STX
Wire Wire Line
	9400 2050 9250 2050
Wire Wire Line
	9250 2050 9250 2550
Wire Wire Line
	9900 2050 10050 2050
Wire Wire Line
	10050 2050 10050 2550
Wire Wire Line
	9250 2050 8850 2050
Connection ~ 9250 2050
Wire Wire Line
	10050 2050 10500 2050
Connection ~ 10050 2050
Wire Wire Line
	9400 2950 9300 2950
Wire Wire Line
	9900 3050 10000 3050
Wire Wire Line
	9400 3550 9350 3550
Text HLabel 8850 2050 0    50   Input ~ 0
SCL
Text HLabel 10500 2050 2    50   Input ~ 0
SDA
Text HLabel 9400 2950 0    50   Input ~ 0
RGB1
Text HLabel 9900 2950 2    50   Input ~ 0
RGB2
Text HLabel 9400 3050 0    50   Input ~ 0
RGB3
Text HLabel 10000 3050 2    50   Input ~ 0
RGB4
Text HLabel 9900 3550 2    50   Input ~ 0
SRX
Text HLabel 9350 3550 0    50   Input ~ 0
STX
Text HLabel 9900 3950 2    50   Input ~ 0
PWM
Text HLabel 9400 3950 0    50   Input ~ 0
PWM
Text HLabel 9400 4750 0    50   Input ~ 0
AIP
Wire Wire Line
	9900 4300 10300 4300
Connection ~ 10300 4300
Wire Wire Line
	10300 4300 10300 3450
$Comp
L Device:R R5
U 1 1 5D5E0269
P 7250 5050
F 0 "R5" V 7043 5050 50  0000 C CNN
F 1 "10K" V 7134 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7180 5050 50  0001 C CNN
F 3 "~" H 7250 5050 50  0001 C CNN
	1    7250 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D5E21BF
P 6850 4900
F 0 "R4" H 6920 4946 50  0000 L CNN
F 1 "20K" H 6920 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6780 4900 50  0001 C CNN
F 3 "~" H 6850 4900 50  0001 C CNN
	1    6850 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D5E29CE
P 6850 5250
F 0 "C2" H 6965 5296 50  0000 L CNN
F 1 "1uF" H 6965 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6888 5100 50  0001 C CNN
F 3 "~" H 6850 5250 50  0001 C CNN
	1    6850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4700 6600 4700
Wire Wire Line
	6600 4700 6600 5050
Wire Wire Line
	6600 5050 6850 5050
Wire Wire Line
	6850 5050 6850 5100
Connection ~ 6850 5050
Wire Wire Line
	6850 5400 6850 5450
Connection ~ 6850 5450
Wire Wire Line
	6850 5450 7800 5450
Wire Wire Line
	7100 5050 6850 5050
Wire Wire Line
	6850 4750 7450 4750
Wire Wire Line
	7450 4750 7450 1800
Connection ~ 7450 1800
Wire Wire Line
	7450 1800 8500 1800
Text HLabel 9400 4300 0    50   Input ~ 0
SW_DB
Text HLabel 7450 5050 2    50   Input ~ 0
SW_DB
Wire Wire Line
	7400 5050 7450 5050
$Comp
L Device:C C4
U 1 1 5D5F82B7
P 3450 2150
F 0 "C4" H 3565 2196 50  0000 L CNN
F 1 "10nF" H 3565 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3488 2000 50  0001 C CNN
F 3 "~" H 3450 2150 50  0001 C CNN
	1    3450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D5F8CE8
P 2850 2150
F 0 "C3" H 2965 2196 50  0000 L CNN
F 1 "100nF" H 2965 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2888 2000 50  0001 C CNN
F 3 "~" H 2850 2150 50  0001 C CNN
	1    2850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2000 2850 1800
Wire Wire Line
	2850 1800 3450 1800
Connection ~ 4100 1800
Wire Wire Line
	3450 2000 3450 1800
Connection ~ 3450 1800
Wire Wire Line
	3450 1800 4100 1800
Wire Wire Line
	4100 3100 4100 5450
Wire Wire Line
	4100 5450 3450 5450
Wire Wire Line
	3450 2300 3450 5450
Connection ~ 4100 5450
Wire Wire Line
	3450 5450 2850 5450
Wire Wire Line
	2850 2300 2850 5450
Connection ~ 3450 5450
Wire Wire Line
	9900 2550 10050 2550
Wire Wire Line
	9250 2550 9400 2550
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J2
U 1 1 5D3E2BB2
P 9600 2450
F 0 "J2" H 9650 2667 50  0000 C CNN
F 1 "Conn_I2C_RTC" H 9650 2600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9600 2450 50  0001 C CNN
F 3 "~" H 9600 2450 50  0001 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4400 7800 4100
$EndSCHEMATC
