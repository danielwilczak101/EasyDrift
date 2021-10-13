EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Relay:FINDER-40.11 K1
U 1 1 615E00DB
P 6750 1950
F 0 "K1" H 7180 1996 50  0000 L CNN
F 1 "FINDER-40.11" H 7180 1905 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 7890 1910 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 6750 1950 50  0001 C CNN
	1    6750 1950
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D3
U 1 1 615E6955
P 5900 1950
F 0 "D3" V 5946 1822 50  0000 R CNN
F 1 "DIODE" V 5855 1822 50  0000 R CNN
F 2 "Diode_SMD:D_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5900 1950 50  0001 C CNN
F 3 "~" H 5900 1950 50  0001 C CNN
	1    5900 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 2250 6550 2450
Wire Wire Line
	6550 2450 5900 2450
Wire Wire Line
	5900 2450 5900 2150
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 615EF85E
P 5800 2650
F 0 "Q3" H 5990 2696 50  0000 L CNN
F 1 "BC547A" H 5990 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6000 2575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5800 2650 50  0001 L CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
Connection ~ 5900 2450
$Comp
L Device:R_Small_US R3
U 1 1 615F12E8
P 5150 2650
F 0 "R3" V 4945 2650 50  0000 C CNN
F 1 "1k" V 5036 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5150 2650 50  0001 C CNN
F 3 "~" H 5150 2650 50  0001 C CNN
	1    5150 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2650 5600 2650
$Comp
L PC817A:PC817A Q1
U 1 1 615DE49C
P 4350 2550
F 0 "Q1" H 4350 2897 50  0000 C CNN
F 1 "PC817A" H 4350 2806 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:DIP762W50P254L650H458Q4B" H 4350 2550 50  0001 L BNN
F 3 "" H 4350 2550 50  0001 L BNN
F 4 "PC817A" H 4350 2550 50  0001 L BNN "MP"
F 5 "Photo-Coupler Photo-Coupler" H 4350 2550 50  0001 L BNN "Description"
F 6 "None" H 4350 2550 50  0001 L BNN "Price"
F 7 "None" H 4350 2550 50  0001 L BNN "Package"
F 8 "Unavailable" H 4350 2550 50  0001 L BNN "Availability"
F 9 "Sharp Microelectronics" H 4350 2550 50  0001 L BNN "MF"
	1    4350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2650 5050 2650
Wire Wire Line
	6550 1650 6550 1550
Wire Wire Line
	6550 1550 5900 1550
Wire Wire Line
	5900 1550 5900 1750
Wire Wire Line
	6850 1550 6850 1650
Wire Wire Line
	5900 1550 4750 1550
Connection ~ 5900 1550
Text HLabel 3200 2650 0    50   Input ~ 0
Relay1
Wire Wire Line
	4750 1550 4750 2450
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 615FA463
P 4600 1350
F 0 "J4" V 4550 1400 50  0000 L CNN
F 1 "Conn_01x02_Male" V 4650 1400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4600 1350 50  0001 C CNN
F 3 "~" H 4600 1350 50  0001 C CNN
	1    4600 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 1550 4750 1550
Connection ~ 4750 1550
$Comp
L Device:R_Small_US R1
U 1 1 61600A88
P 3950 1950
F 0 "R1" H 4018 1996 50  0000 L CNN
F 1 "1k" H 4018 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3950 1950 50  0001 C CNN
F 3 "~" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1550 4500 1850
Wire Wire Line
	4500 1850 3950 1850
Wire Wire Line
	3950 2050 3950 2450
$Comp
L Device:LED D1
U 1 1 61603F06
P 3600 2650
F 0 "D1" H 3593 2867 50  0000 C CNN
F 1 "SMD LED1" H 3593 2776 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3600 2650 50  0001 C CNN
F 3 "~" H 3600 2650 50  0001 C CNN
	1    3600 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61607177
P 3250 1550
F 0 "#PWR0106" H 3250 1400 50  0001 C CNN
F 1 "+5V" V 3265 1678 50  0000 L CNN
F 2 "" H 3250 1550 50  0001 C CNN
F 3 "" H 3250 1550 50  0001 C CNN
	1    3250 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6160A008
P 5900 3050
F 0 "#PWR0108" H 5900 2800 50  0001 C CNN
F 1 "GND" H 5905 2877 50  0000 C CNN
F 2 "" H 5900 3050 50  0001 C CNN
F 3 "" H 5900 3050 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3050 5900 2850
Wire Wire Line
	3250 1550 4500 1550
Connection ~ 4500 1550
Wire Wire Line
	3750 2650 3950 2650
Wire Wire Line
	3450 2650 3200 2650
$Comp
L Relay:FINDER-40.11 K2
U 1 1 6165982A
P 6750 4750
F 0 "K2" H 7180 4796 50  0000 L CNN
F 1 "FINDER-40.11" H 7180 4705 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 7890 4710 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 6750 4750 50  0001 C CNN
	1    6750 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 61659830
P 5900 4750
F 0 "D4" V 5946 4622 50  0000 R CNN
F 1 "DIODE" V 5855 4622 50  0000 R CNN
F 2 "Diode_SMD:D_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5900 4750 50  0001 C CNN
F 3 "~" H 5900 4750 50  0001 C CNN
	1    5900 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 5050 6550 5250
Wire Wire Line
	6550 5250 5900 5250
Wire Wire Line
	5900 5250 5900 4950
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 61659841
P 5800 5450
F 0 "Q4" H 5990 5496 50  0000 L CNN
F 1 "BC547A" H 5990 5405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6000 5375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5800 5450 50  0001 L CNN
	1    5800 5450
	1    0    0    -1  
$EndComp
Connection ~ 5900 5250
$Comp
L Device:R_Small_US R4
U 1 1 61659848
P 5150 5450
F 0 "R4" V 4945 5450 50  0000 C CNN
F 1 "1k" V 5036 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5150 5450 50  0001 C CNN
F 3 "~" H 5150 5450 50  0001 C CNN
	1    5150 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5450 5600 5450
$Comp
L PC817A:PC817A Q2
U 1 1 61659855
P 4350 5350
F 0 "Q2" H 4350 5697 50  0000 C CNN
F 1 "PC817A" H 4350 5606 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:DIP762W50P254L650H458Q4B" H 4350 5350 50  0001 L BNN
F 3 "" H 4350 5350 50  0001 L BNN
F 4 "PC817A" H 4350 5350 50  0001 L BNN "MP"
F 5 "Photo-Coupler Photo-Coupler" H 4350 5350 50  0001 L BNN "Description"
F 6 "None" H 4350 5350 50  0001 L BNN "Price"
F 7 "None" H 4350 5350 50  0001 L BNN "Package"
F 8 "Unavailable" H 4350 5350 50  0001 L BNN "Availability"
F 9 "Sharp Microelectronics" H 4350 5350 50  0001 L BNN "MF"
	1    4350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5450 5050 5450
Wire Wire Line
	6550 4450 6550 4350
Wire Wire Line
	6550 4350 5900 4350
Wire Wire Line
	5900 4350 5900 4550
Wire Wire Line
	6850 4350 6850 4450
Wire Wire Line
	5900 4350 4750 4350
Connection ~ 5900 4350
Text HLabel 3200 5450 0    50   Input ~ 0
Relay2
Wire Wire Line
	4750 4350 4750 5250
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 61659866
P 4600 4150
F 0 "J6" V 4550 4200 50  0000 L CNN
F 1 "Conn_01x02_Male" V 4650 4200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4600 4150 50  0001 C CNN
F 3 "~" H 4600 4150 50  0001 C CNN
	1    4600 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4350 4750 4350
Connection ~ 4750 4350
$Comp
L Device:R_Small_US R2
U 1 1 6165986E
P 3950 4750
F 0 "R2" H 4018 4796 50  0000 L CNN
F 1 "1k" H 4018 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3950 4750 50  0001 C CNN
F 3 "~" H 3950 4750 50  0001 C CNN
	1    3950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4350 4500 4650
Wire Wire Line
	4500 4650 3950 4650
Wire Wire Line
	3950 4850 3950 5250
$Comp
L power:+5V #PWR0110
U 1 1 6165987D
P 3250 4350
F 0 "#PWR0110" H 3250 4200 50  0001 C CNN
F 1 "+5V" V 3265 4478 50  0000 L CNN
F 2 "" H 3250 4350 50  0001 C CNN
F 3 "" H 3250 4350 50  0001 C CNN
	1    3250 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61659883
P 5900 5850
F 0 "#PWR0111" H 5900 5600 50  0001 C CNN
F 1 "GND" H 5905 5677 50  0000 C CNN
F 2 "" H 5900 5850 50  0001 C CNN
F 3 "" H 5900 5850 50  0001 C CNN
	1    5900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5850 5900 5650
Wire Wire Line
	3250 4350 4500 4350
Connection ~ 4500 4350
Wire Wire Line
	3750 5450 3950 5450
$Comp
L power:+12V #PWR0112
U 1 1 61677AFB
P 8750 4450
F 0 "#PWR0112" H 8750 4300 50  0001 C CNN
F 1 "+12V" V 8765 4578 50  0000 L CNN
F 2 "" H 8750 4450 50  0001 C CNN
F 3 "" H 8750 4450 50  0001 C CNN
	1    8750 4450
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 6167ABC8
P 8700 1650
F 0 "#PWR0113" H 8700 1500 50  0001 C CNN
F 1 "+12V" V 8715 1778 50  0000 L CNN
F 2 "" H 8700 1650 50  0001 C CNN
F 3 "" H 8700 1650 50  0001 C CNN
	1    8700 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND1 #PWR0114
U 1 1 61683CE2
P 8700 1550
F 0 "#PWR0114" H 8700 1300 50  0001 C CNN
F 1 "GND1" V 8705 1422 50  0000 R CNN
F 2 "" H 8700 1550 50  0001 C CNN
F 3 "" H 8700 1550 50  0001 C CNN
	1    8700 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND1 #PWR0115
U 1 1 61684851
P 8750 4350
F 0 "#PWR0115" H 8750 4100 50  0001 C CNN
F 1 "GND1" V 8755 4222 50  0000 R CNN
F 2 "" H 8750 4350 50  0001 C CNN
F 3 "" H 8750 4350 50  0001 C CNN
	1    8750 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 4350 6850 4350
Wire Wire Line
	7050 4450 8750 4450
Wire Wire Line
	7050 1650 8700 1650
Wire Wire Line
	8700 1550 6850 1550
Text GLabel 8800 5050 2    50   Input ~ 0
Motor+
Text GLabel 8700 2250 2    50   Input ~ 0
Motor-
Wire Wire Line
	6950 2250 8700 2250
Wire Wire Line
	8800 5050 6950 5050
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 61692A69
P 9900 3300
F 0 "J8" H 9980 3292 50  0000 L CNN
F 1 "Linear Actuator" H 9980 3201 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:TE_282837-2" H 9900 3300 50  0001 C CNN
F 3 "~" H 9900 3300 50  0001 C CNN
	1    9900 3300
	1    0    0    -1  
$EndComp
Text GLabel 9350 3300 0    50   Input ~ 0
Motor-
Text GLabel 9350 3400 0    50   Input ~ 0
Motor+
Wire Wire Line
	9350 3300 9700 3300
Wire Wire Line
	9700 3400 9350 3400
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 6169651E
P 9900 2850
F 0 "J7" H 9980 2842 50  0000 L CNN
F 1 "Linear Actuator Power" H 9980 2751 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:TE_282837-2" H 9900 2850 50  0001 C CNN
F 3 "~" H 9900 2850 50  0001 C CNN
	1    9900 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0116
U 1 1 61697C6D
P 9300 2850
F 0 "#PWR0116" H 9300 2600 50  0001 C CNN
F 1 "GND1" V 9305 2722 50  0000 R CNN
F 2 "" H 9300 2850 50  0001 C CNN
F 3 "" H 9300 2850 50  0001 C CNN
	1    9300 2850
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 61699417
P 9300 2950
F 0 "#PWR0117" H 9300 2800 50  0001 C CNN
F 1 "+12V" V 9315 3078 50  0000 L CNN
F 2 "" H 9300 2950 50  0001 C CNN
F 3 "" H 9300 2950 50  0001 C CNN
	1    9300 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 2950 9700 2950
Wire Wire Line
	9700 2850 9300 2850
Text Notes 5650 1250 0    118  ~ 24
Relay 1
Text Notes 5650 4000 0    118  ~ 24
Relay 2
Wire Wire Line
	3450 5450 3200 5450
$Comp
L Device:LED D2
U 1 1 61659877
P 3600 5450
F 0 "D2" H 3593 5667 50  0000 C CNN
F 1 "SMD LED2" H 3593 5576 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3600 5450 50  0001 C CNN
F 3 "~" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
