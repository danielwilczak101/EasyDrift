EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_RaspberryPi_and_Boards:Pico U2
U 1 1 614CC605
P 5500 3400
F 0 "U2" H 5500 4615 50  0000 C CNN
F 1 "Pico" H 5500 4524 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:RPi_Pico_SMD_TH" V 5500 3400 50  0001 C CNN
F 3 "" H 5500 3400 50  0001 C CNN
	1    5500 3400
	1    0    0    -1  
$EndComp
$Comp
L COM-09032:COM-09032 U3
U 1 1 614CFFF2
P 8800 3350
F 0 "U3" H 9130 3346 50  0000 L CNN
F 1 "COM-09032" H 9130 3255 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:XDCR_COM-09032" H 8800 3350 50  0001 L BNN
F 3 "" H 8800 3350 50  0001 L BNN
F 4 "30.1mm" H 8800 3350 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "SparkFun Electronics" H 8800 3350 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 8800 3350 50  0001 L BNN "STANDARD"
F 7 "N/A" H 8800 3350 50  0001 L BNN "PARTREV"
	1    8800 3350
	1    0    0    -1  
$EndComp
Text GLabel 5050 1400 0    50   Input ~ 0
GP06
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 614D04BA
P 5400 1300
F 0 "J1" H 5450 1617 50  0000 C CNN
F 1 "Antenna_Conn_02x04_Odd_Even" H 5450 1526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 5400 1300 50  0001 C CNN
F 3 "~" H 5400 1300 50  0001 C CNN
	1    5400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 614D5BB9
P 5850 1200
F 0 "#PWR0101" H 5850 1050 50  0001 C CNN
F 1 "+3.3V" V 5865 1328 50  0000 L CNN
F 2 "" H 5850 1200 50  0001 C CNN
F 3 "" H 5850 1200 50  0001 C CNN
	1    5850 1200
	0    1    1    0   
$EndComp
Text GLabel 5050 1300 0    50   Input ~ 0
GP17
Text GLabel 5050 1500 0    50   Input ~ 0
GP07
Text GLabel 5850 1300 2    50   Input ~ 0
GP14
NoConn ~ 5700 1500
Wire Wire Line
	5700 1400 5850 1400
Wire Wire Line
	5700 1300 5850 1300
Wire Wire Line
	5700 1200 5850 1200
Wire Wire Line
	5200 1300 5050 1300
Wire Wire Line
	5200 1400 5050 1400
Wire Wire Line
	5050 1500 5200 1500
$Comp
L power:GND #PWR0102
U 1 1 614DE3F1
P 5050 1200
F 0 "#PWR0102" H 5050 950 50  0001 C CNN
F 1 "GND" V 5055 1072 50  0000 R CNN
F 2 "" H 5050 1200 50  0001 C CNN
F 3 "" H 5050 1200 50  0001 C CNN
	1    5050 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1200 5200 1200
$Comp
L power:+3.3V #PWR0103
U 1 1 614E008F
P 8200 2950
F 0 "#PWR0103" H 8200 2800 50  0001 C CNN
F 1 "+3.3V" V 8215 3078 50  0000 L CNN
F 2 "" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0001 C CNN
	1    8200 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 614E3005
P 8200 3350
F 0 "#PWR0104" H 8200 3200 50  0001 C CNN
F 1 "+3.3V" V 8215 3478 50  0000 L CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 614E4452
P 8200 3050
F 0 "#PWR0105" H 8200 2800 50  0001 C CNN
F 1 "GND" V 8205 2922 50  0000 R CNN
F 2 "" H 8200 3050 50  0001 C CNN
F 3 "" H 8200 3050 50  0001 C CNN
	1    8200 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 614E5455
P 8200 3450
F 0 "#PWR0106" H 8200 3200 50  0001 C CNN
F 1 "GND" V 8205 3322 50  0000 R CNN
F 2 "" H 8200 3450 50  0001 C CNN
F 3 "" H 8200 3450 50  0001 C CNN
	1    8200 3450
	0    1    1    0   
$EndComp
Text GLabel 8200 3250 0    50   Input ~ 0
GP26
Text GLabel 8200 2850 0    50   Input ~ 0
GP27
Wire Wire Line
	8200 2850 8300 2850
Wire Wire Line
	8200 2950 8300 2950
Wire Wire Line
	8200 3050 8300 3050
Wire Wire Line
	8200 3250 8300 3250
Wire Wire Line
	8200 3350 8300 3350
Wire Wire Line
	8200 3450 8300 3450
Text GLabel 6350 3250 2    50   Input ~ 0
GP27
Text GLabel 6350 3350 2    50   Input ~ 0
GP26
Text GLabel 5850 1400 2    50   Input ~ 0
GP04
Text GLabel 4650 2950 0    50   Input ~ 0
GP04
Text GLabel 4650 4250 0    50   Input ~ 0
GP14
Text GLabel 4650 3350 0    50   Input ~ 0
GP07
Text GLabel 4650 3250 0    50   Input ~ 0
GP06
Text GLabel 6350 4250 2    50   Input ~ 0
GP17
Wire Wire Line
	4650 2950 4800 2950
Wire Wire Line
	4650 3250 4800 3250
Wire Wire Line
	4650 3350 4800 3350
Wire Wire Line
	4650 4250 4800 4250
Wire Wire Line
	6350 4250 6200 4250
Wire Wire Line
	6350 3350 6200 3350
Wire Wire Line
	6350 3250 6200 3250
$Comp
L COM-09032:COM-09032 U1
U 1 1 614F8BBB
P 1950 3550
F 0 "U1" H 2280 3546 50  0000 L CNN
F 1 "COM-09032" H 2280 3455 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:XDCR_COM-09032" H 1950 3550 50  0001 L BNN
F 3 "" H 1950 3550 50  0001 L BNN
F 4 "30.1mm" H 1950 3550 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "SparkFun Electronics" H 1950 3550 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer Recommendations" H 1950 3550 50  0001 L BNN "STANDARD"
F 7 "N/A" H 1950 3550 50  0001 L BNN "PARTREV"
	1    1950 3550
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 614F8BC5
P 2550 3950
F 0 "#PWR0107" H 2550 3800 50  0001 C CNN
F 1 "+3.3V" V 2565 4078 50  0000 L CNN
F 2 "" H 2550 3950 50  0001 C CNN
F 3 "" H 2550 3950 50  0001 C CNN
	1    2550 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 614F8BD9
P 2550 3850
F 0 "#PWR0108" H 2550 3600 50  0001 C CNN
F 1 "GND" V 2555 3722 50  0000 R CNN
F 2 "" H 2550 3850 50  0001 C CNN
F 3 "" H 2550 3850 50  0001 C CNN
	1    2550 3850
	0    -1   -1   0   
$EndComp
Text GLabel 2550 4050 2    50   Input ~ 0
GP28
Wire Wire Line
	2550 4050 2450 4050
Wire Wire Line
	2550 3950 2450 3950
Wire Wire Line
	2550 3850 2450 3850
Text GLabel 6350 3050 2    50   Input ~ 0
GP28
Wire Wire Line
	6200 3050 6350 3050
$Comp
L LM1117T-3.3_NOPB:LM1117T-3.3_NOPB VR1
U 1 1 6150CE35
P 9000 1400
F 0 "VR1" H 9000 1767 50  0000 C CNN
F 1 "LM1117T-3.3_NOPB" H 9000 1676 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:SOT230P696X180-4N" H 9000 1400 50  0001 L BNN
F 3 "" H 9000 1400 50  0001 L BNN
F 4 "Texas Instruments" H 9000 1400 50  0001 L BNN "MANUFACTURER"
F 5 "O" H 9000 1400 50  0001 L BNN "PARTREV"
F 6 "19.55mm" H 9000 1400 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "IPC-7351B" H 9000 1400 50  0001 L BNN "STANDARD"
F 8 "102750" H 9000 1400 50  0001 L BNN "SNAPEDA_PACKAGE_ID"
	1    9000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 6150F77A
P 7900 1300
F 0 "#PWR0109" H 7900 1150 50  0001 C CNN
F 1 "+5V" V 7915 1428 50  0000 L CNN
F 2 "" H 7900 1300 50  0001 C CNN
F 3 "" H 7900 1300 50  0001 C CNN
	1    7900 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 61510D22
P 10300 1250
F 0 "#PWR0110" H 10300 1100 50  0001 C CNN
F 1 "+3.3V" V 10300 1350 50  0000 L CNN
F 2 "" H 10300 1250 50  0001 C CNN
F 3 "" H 10300 1250 50  0001 C CNN
	1    10300 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61511661
P 10300 1550
F 0 "#PWR0111" H 10300 1300 50  0001 C CNN
F 1 "GND" V 10305 1422 50  0000 R CNN
F 2 "" H 10300 1550 50  0001 C CNN
F 3 "" H 10300 1550 50  0001 C CNN
	1    10300 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C2
U 1 1 61515138
P 10050 1400
F 0 "C2" H 10165 1446 50  0000 L CNN
F 1 "CP1" H 10165 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10050 1400 50  0001 C CNN
F 3 "~" H 10050 1400 50  0001 C CNN
	1    10050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1300 9700 1250
Wire Wire Line
	9700 1500 9700 1550
Connection ~ 10050 1250
Wire Wire Line
	10050 1250 10300 1250
Connection ~ 10050 1550
Wire Wire Line
	10050 1550 10300 1550
Wire Wire Line
	9700 1250 10050 1250
Wire Wire Line
	9700 1550 10050 1550
$Comp
L Device:C_Small C1
U 1 1 6151CAEA
P 8050 1400
F 0 "C1" H 8142 1446 50  0000 L CNN
F 1 "C_Small" H 8142 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8050 1400 50  0001 C CNN
F 3 "~" H 8050 1400 50  0001 C CNN
	1    8050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1300 8050 1300
Wire Wire Line
	8050 1300 8300 1300
Connection ~ 8050 1300
Wire Wire Line
	8050 1500 8050 1700
Wire Wire Line
	8050 1700 9700 1700
Wire Wire Line
	9700 1700 9700 1550
Connection ~ 9700 1550
NoConn ~ 8300 3950
NoConn ~ 8300 3750
NoConn ~ 8300 3650
NoConn ~ 6200 4150
NoConn ~ 6200 4050
NoConn ~ 6200 3950
NoConn ~ 6200 3850
NoConn ~ 6200 3750
NoConn ~ 6200 3650
NoConn ~ 6200 3550
NoConn ~ 6200 3450
NoConn ~ 6200 3150
NoConn ~ 6200 2950
NoConn ~ 6200 2850
NoConn ~ 6200 2750
NoConn ~ 6200 2450
NoConn ~ 4800 2450
NoConn ~ 4800 2550
NoConn ~ 4800 2650
NoConn ~ 4800 2750
NoConn ~ 4800 2850
NoConn ~ 4800 3150
NoConn ~ 4800 3050
NoConn ~ 4800 3450
NoConn ~ 4800 3650
NoConn ~ 4800 3850
NoConn ~ 4800 3950
NoConn ~ 4800 4050
NoConn ~ 4800 4150
NoConn ~ 5400 4550
NoConn ~ 5500 4550
NoConn ~ 5600 4550
NoConn ~ 2450 3650
NoConn ~ 2450 3550
NoConn ~ 2450 3450
NoConn ~ 2450 3250
NoConn ~ 2450 3150
NoConn ~ 2450 2950
NoConn ~ 9300 1400
NoConn ~ 10400 -550
$Comp
L power:+3.3V #PWR01
U 1 1 6153A302
P 6350 2550
F 0 "#PWR01" H 6350 2400 50  0001 C CNN
F 1 "+3.3V" V 6365 2678 50  0000 L CNN
F 2 "" H 6350 2550 50  0001 C CNN
F 3 "" H 6350 2550 50  0001 C CNN
	1    6350 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6153A693
P 6350 2650
F 0 "#PWR02" H 6350 2400 50  0001 C CNN
F 1 "GND" V 6355 2522 50  0000 R CNN
F 2 "" H 6350 2650 50  0001 C CNN
F 3 "" H 6350 2650 50  0001 C CNN
	1    6350 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 2650 6350 2650
Wire Wire Line
	6200 2550 6350 2550
$Comp
L USB1130-15-A_REVA:USB1130-15-A_REVA J2
U 1 1 614FB04C
P 9400 5550
F 0 "J2" H 9630 5546 50  0000 L CNN
F 1 "USB1130-15-A_REVA" H 9630 5455 50  0000 L CNN
F 2 "GCT_USB1130-15-A_REVA" H 9400 5550 50  0001 L BNN
F 3 "" H 9400 5550 50  0001 L BNN
F 4 "A" H 9400 5550 50  0001 L BNN "PARTREV"
F 5 "7.24mm" H 9400 5550 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Manufacturer Recommendations" H 9400 5550 50  0001 L BNN "STANDARD"
F 7 "GCT" H 9400 5550 50  0001 L BNN "MANUFACTURER"
	1    9400 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 614FD28A
P 8850 5350
F 0 "#PWR08" H 8850 5200 50  0001 C CNN
F 1 "+5V" V 8865 5478 50  0000 L CNN
F 2 "" H 8850 5350 50  0001 C CNN
F 3 "" H 8850 5350 50  0001 C CNN
	1    8850 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 615002B3
P 8800 5650
F 0 "#PWR07" H 8800 5400 50  0001 C CNN
F 1 "GND" V 8805 5522 50  0000 R CNN
F 2 "" H 8800 5650 50  0001 C CNN
F 3 "" H 8800 5650 50  0001 C CNN
	1    8800 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5650 9000 5650
Wire Wire Line
	8850 5350 9000 5350
$Comp
L Switch:SW_Push SW1
U 1 1 6150A185
P 2300 5450
F 0 "SW1" H 2300 5735 50  0000 C CNN
F 1 "SW_12mm_Push" H 2300 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 2300 5650 50  0001 C CNN
F 3 "~" H 2300 5650 50  0001 C CNN
	1    2300 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61517813
P 2300 6100
F 0 "D1" H 2293 6317 50  0000 C CNN
F 1 "Green_LED" H 2293 6226 50  0000 C CNN
F 2 "" H 2300 6100 50  0001 C CNN
F 3 "~" H 2300 6100 50  0001 C CNN
	1    2300 6100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6150B748
P 5050 5450
F 0 "SW2" H 5050 5735 50  0000 C CNN
F 1 "SW_12mm_Push" H 5050 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5050 5650 50  0001 C CNN
F 3 "~" H 5050 5650 50  0001 C CNN
	1    5050 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 61518FD8
P 2800 6100
F 0 "R1" V 3000 6050 50  0000 L CNN
F 1 "220_R_Small_US" V 2900 5750 50  0000 L CNN
F 2 "" H 2800 6100 50  0001 C CNN
F 3 "~" H 2800 6100 50  0001 C CNN
	1    2800 6100
	0    -1   -1   0   
$EndComp
Text GLabel 3200 6100 2    50   Input ~ 0
GP10
$Comp
L power:GND #PWR03
U 1 1 61511AED
P 1800 6100
F 0 "#PWR03" H 1800 5850 50  0001 C CNN
F 1 "GND" V 1805 5972 50  0000 R CNN
F 2 "" H 1800 6100 50  0001 C CNN
F 3 "" H 1800 6100 50  0001 C CNN
	1    1800 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 6100 2150 6100
Wire Wire Line
	2450 6100 2700 6100
Wire Wire Line
	2900 6100 3200 6100
$Comp
L Device:LED D2
U 1 1 61517D52
P 4900 6100
F 0 "D2" H 4893 6317 50  0000 C CNN
F 1 "RED_LED" H 4893 6226 50  0000 C CNN
F 2 "" H 4900 6100 50  0001 C CNN
F 3 "~" H 4900 6100 50  0001 C CNN
	1    4900 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 61517D58
P 5400 6100
F 0 "R2" V 5600 6050 50  0000 L CNN
F 1 "220_R_Small_US" V 5500 5750 50  0000 L CNN
F 2 "" H 5400 6100 50  0001 C CNN
F 3 "~" H 5400 6100 50  0001 C CNN
	1    5400 6100
	0    -1   -1   0   
$EndComp
Text GLabel 5800 6100 2    50   Input ~ 0
GP09
$Comp
L power:GND #PWR05
U 1 1 61517D5F
P 4400 6100
F 0 "#PWR05" H 4400 5850 50  0001 C CNN
F 1 "GND" V 4405 5972 50  0000 R CNN
F 2 "" H 4400 6100 50  0001 C CNN
F 3 "" H 4400 6100 50  0001 C CNN
	1    4400 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 6100 4750 6100
Wire Wire Line
	5050 6100 5300 6100
Wire Wire Line
	5500 6100 5800 6100
$Comp
L power:GND #PWR04
U 1 1 6151B378
P 2750 5450
F 0 "#PWR04" H 2750 5200 50  0001 C CNN
F 1 "GND" V 2755 5322 50  0000 R CNN
F 2 "" H 2750 5450 50  0001 C CNN
F 3 "" H 2750 5450 50  0001 C CNN
	1    2750 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6151BF18
P 5500 5450
F 0 "#PWR06" H 5500 5200 50  0001 C CNN
F 1 "GND" V 5505 5322 50  0000 R CNN
F 2 "" H 5500 5450 50  0001 C CNN
F 3 "" H 5500 5450 50  0001 C CNN
	1    5500 5450
	0    -1   -1   0   
$EndComp
Text GLabel 4650 3550 0    50   Input ~ 0
GP09
Text GLabel 4650 3750 0    50   Input ~ 0
GP10
Wire Wire Line
	5500 5450 5250 5450
Wire Wire Line
	2750 5450 2500 5450
Text GLabel 1800 5450 0    50   Input ~ 0
GP15
Text GLabel 4500 5450 0    50   Input ~ 0
GP16
Wire Wire Line
	4500 5450 4850 5450
Wire Wire Line
	1800 5450 2100 5450
Text GLabel 6350 4350 2    50   Input ~ 0
GP16
Text GLabel 4650 4350 0    50   Input ~ 0
GP15
Wire Wire Line
	4650 4350 4800 4350
Wire Wire Line
	6350 4350 6200 4350
Wire Wire Line
	4650 3750 4800 3750
Wire Wire Line
	4800 3550 4650 3550
$EndSCHEMATC