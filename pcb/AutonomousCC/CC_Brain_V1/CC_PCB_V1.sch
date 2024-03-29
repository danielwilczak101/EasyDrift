EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Autonomous Crazy Cart V2"
Date "09/12/2021"
Rev "10/13/2021"
Comp "Engineering Physics Propulsion Lab * EPPL *"
Comment1 ""
Comment2 "Made Relay and Radio module pins bigger (2.45mm)"
Comment3 "Relay Circuit"
Comment4 "Added: Switch for PICO V"
$EndDescr
$Comp
L CC_PCB_V1-rescue:Conn_01x06-Connector_Generic J5
U 1 1 6132C346
P 7470 3005
F 0 "J5" H 7550 2997 50  0000 L CNN
F 1 "Relay_Conn_01x06" H 7550 2906 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7470 3005 50  0001 C CNN
F 3 "~" H 7470 3005 50  0001 C CNN
	1    7470 3005
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:Conn_02x04_Odd_Even-Connector_Generic J2
U 1 1 6132E9AC
P 7750 4200
F 0 "J2" H 7800 4517 50  0000 C CNN
F 1 "Antenna_Conn_02x04_Odd_Even" H 7800 4426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7750 4200 50  0001 C CNN
F 3 "~" H 7750 4200 50  0001 C CNN
	1    7750 4200
	1    0    0    -1  
$EndComp
Text GLabel 8250 4200 2    50   Input ~ 0
GP14
Text GLabel 5850 3650 2    50   Input ~ 0
GP14
Text GLabel 7350 4200 0    50   Input ~ 0
GP17
Wire Wire Line
	7020 2905 7270 2905
Wire Wire Line
	7020 3005 7270 3005
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0102
U 1 1 6139949D
P 7200 4100
F 0 "#PWR0102" H 7200 3850 50  0001 C CNN
F 1 "GND" H 7205 3927 50  0000 C CNN
F 2 "" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    7200 4100
	0    1    1    0   
$EndComp
Text GLabel 5850 4950 2    50   Input ~ 0
GP4
Text GLabel 5850 4650 2    50   Input ~ 0
GP6
Text GLabel 5850 4550 2    50   Input ~ 0
GP7
Text GLabel 7350 4300 0    50   Input ~ 0
GP6
Text GLabel 8250 4300 2    50   Input ~ 0
GP7
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0105
U 1 1 613C4FFD
P 6870 2805
F 0 "#PWR0105" H 6870 2555 50  0001 C CNN
F 1 "GND" H 6875 2632 50  0000 C CNN
F 2 "" H 6870 2805 50  0001 C CNN
F 3 "" H 6870 2805 50  0001 C CNN
	1    6870 2805
	0    1    1    0   
$EndComp
Wire Wire Line
	7270 2805 6870 2805
Wire Wire Line
	7270 3305 7020 3305
Text GLabel 7350 4400 0    50   Input ~ 0
GP4
NoConn ~ 7270 3205
NoConn ~ 7270 3105
Text Notes 7620 3830 0    59   ~ 12
Antenna
Text Notes 7360 2685 0    59   ~ 12
Relay
Text Notes 4880 3270 0    59   ~ 12
PICO
Text Notes 4280 2110 0    59   ~ 12
ESC Connection
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0101
U 1 1 6132D47F
P 6200 3750
F 0 "#PWR0101" H 6200 3500 50  0001 C CNN
F 1 "GND" V 6190 3550 50  0000 C CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
	1    6200 3750
	0    -1   -1   0   
$EndComp
$Comp
L CC_PCB_V1-rescue:PWR_FLAG-power #FLG0103
U 1 1 6132C74E
P 6250 3600
F 0 "#FLG0103" H 6250 3675 50  0001 C CNN
F 1 "PWR_FLAG" V 6165 3390 50  0000 L CNN
F 2 "" H 6250 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	0    1    1    0   
$EndComp
Text GLabel 4050 4850 0    50   Input ~ 0
GP28
$Comp
L CC_PCB_V1-rescue:282837-2-282837-2 Screw_Terminal1
U 1 1 6136899C
P 4820 1540
F 0 "Screw_Terminal1" H 4950 1536 50  0000 L CNN
F 1 "282837-2" H 4950 1445 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:TE_282837-2" H 4820 1540 50  0001 L BNN
F 3 "" H 4820 1540 50  0001 L BNN
F 4 "282837-2" H 4820 1540 50  0001 L BNN "Comment"
	1    4820 1540
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0109
U 1 1 6139CFDB
P 4520 1640
F 0 "#PWR0109" H 4520 1390 50  0001 C CNN
F 1 "GND" V 4560 1675 50  0000 C CNN
F 2 "" H 4520 1640 50  0001 C CNN
F 3 "" H 4520 1640 50  0001 C CNN
	1    4520 1640
	0    1    1    0   
$EndComp
Text GLabel 4100 5350 0    50   Input ~ 0
+3.3V_Pico
Text GLabel 7020 3305 0    50   Input ~ 0
+5V
Text GLabel 8250 4100 2    50   Input ~ 0
+3.3V
Text GLabel 7020 2905 0    50   Output ~ 0
GP10
Text GLabel 7020 3005 0    50   Output ~ 0
GP11
Text GLabel 4520 1540 1    50   Input ~ 0
+5V
Text GLabel 3150 1540 0    50   Input ~ 0
+3.3V
Text Notes 3160 1220 0    59   ~ 12
Voltage Regulator
Text GLabel 4000 5050 0    59   Output ~ 0
3.3V
Text GLabel 4470 2225 0    59   Input ~ 0
3.3V
Text GLabel 4470 2325 0    59   Input ~ 0
GP12
Text GLabel 4470 2425 0    59   Input ~ 0
GP13
Text GLabel 4470 2525 0    59   Input ~ 0
GP21
Text GLabel 4470 2625 0    59   Input ~ 0
GP22
$Comp
L CC_PCB_V1-rescue:Screw_Terminal_01x07-Connector J1
U 1 1 6146F2F5
P 4670 2525
F 0 "J1" H 4750 2567 50  0000 L CNN
F 1 "Screw_Terminal_01x07" H 4750 2476 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-7_1x07_P2.54mm_Horizontal" H 4670 2525 50  0001 C CNN
F 3 "~https://www.amazon.com/SamIdea-10Pieces-2-54mm-Terminal-Assorted/dp/B07FTJSNN7/ref=sr_1_4?dchild=1&keywords=1x3+screw+terminal+smd&qid=1631916388&sr=8-4" H 4670 2525 50  0001 C CNN
	1    4670 2525
	1    0    0    -1  
$EndComp
Text GLabel 4470 2725 0    59   Input ~ 0
GP26
Text GLabel 4470 2825 0    59   Input ~ 0
GP27
Text GLabel 6900 3950 2    59   Input ~ 0
GP12
Text GLabel 5850 3850 2    59   Input ~ 0
GP13
Text GLabel 4050 4150 0    59   Input ~ 0
GP21
Text GLabel 3540 4350 0    59   Input ~ 0
GP22
Text GLabel 4050 4550 0    59   Input ~ 0
GP26
Text GLabel 4050 4650 0    59   Input ~ 0
GP27
$Comp
L CC_PCB_V1-rescue:C-Device C2
U 1 1 61465212
P 3830 1690
F 0 "C2" H 3735 1760 50  0000 L CNN
F 1 "C" H 3735 1615 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3868 1540 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28549/dseries.pdf" H 3830 1690 50  0001 C CNN
	1    3830 1690
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:LM337_TO3-Regulator_Linear U2
U 1 1 6146A6D0
P 3530 1540
F 0 "U2" H 3530 1298 50  0000 C CNN
F 1 "LM337_TO3" H 3530 1389 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:SOT230P696X180-4N" H 3530 1340 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 3530 1540 50  0001 C CNN
	1    3530 1540
	-1   0    0    1   
$EndComp
Wire Wire Line
	3230 1840 3530 1840
Wire Wire Line
	3230 1540 3150 1540
Connection ~ 3230 1540
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0104
U 1 1 6146C342
P 3530 1870
F 0 "#PWR0104" H 3530 1620 50  0001 C CNN
F 1 "GND" H 3605 1860 50  0000 C CNN
F 2 "" H 3530 1870 50  0001 C CNN
F 3 "" H 3530 1870 50  0001 C CNN
	1    3530 1870
	1    0    0    -1  
$EndComp
Wire Wire Line
	3530 1840 3530 1870
Connection ~ 3530 1840
$Comp
L CC_PCB_V1-rescue:CP-Device C1
U 1 1 61472D8C
P 3230 1690
F 0 "C1" H 3230 1765 50  0000 L CNN
F 1 "CP" H 3235 1610 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3268 1540 50  0001 C CNN
F 3 "https://www.tdk-electronics.tdk.com/inf/20/30/db/aec/B41866.pdf" H 3230 1690 50  0001 C CNN
	1    3230 1690
	1    0    0    -1  
$EndComp
Wire Wire Line
	3830 1840 3530 1840
Wire Wire Line
	3830 1540 4520 1540
Connection ~ 3830 1540
Text GLabel 4050 3650 0    50   Input ~ 0
GP17
$Comp
L CC_PCB_V1-rescue:USB1130-15-A_REVA-USB1130-15-A_REVA J3
U 1 1 61497609
P 7170 1600
F 0 "J3" H 7400 1596 50  0000 L CNN
F 1 "USB1130-15-A_REVA" H 7400 1505 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:GCT_USB1130-15-A_REVA" H 7170 1600 50  0001 L BNN
F 3 "" H 7170 1600 50  0001 L BNN
F 4 "A" H 7170 1600 50  0001 L BNN "PARTREV"
F 5 "7.24mm" H 7170 1600 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Manufacturer Recommendations" H 7170 1600 50  0001 L BNN "STANDARD"
F 7 "GCT" H 7170 1600 50  0001 L BNN "MANUFACTURER"
	1    7170 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6770 1500
NoConn ~ 6770 1600
Text GLabel 6770 1400 0    50   Input ~ 0
+5V
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0103
U 1 1 614998DB
P 6770 1700
F 0 "#PWR0103" H 6770 1450 50  0001 C CNN
F 1 "GND" H 6775 1527 50  0000 C CNN
F 2 "" H 6770 1700 50  0001 C CNN
F 3 "" H 6770 1700 50  0001 C CNN
	1    6770 1700
	0    1    1    0   
$EndComp
NoConn ~ 6770 1900
$Comp
L CC_PCB_V1-rescue:282837-2-282837-2 Screw_Terminal2
U 1 1 614A273C
P 3265 2560
F 0 "Screw_Terminal2" H 3395 2556 50  0000 L CNN
F 1 "282837-2" H 3395 2465 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:TE_282837-2" H 3265 2560 50  0001 L BNN
F 3 "" H 3265 2560 50  0001 L BNN
F 4 "282837-2" H 3265 2560 50  0001 L BNN "Comment"
	1    3265 2560
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0107
U 1 1 614A47B6
P 2965 2660
F 0 "#PWR0107" H 2965 2410 50  0001 C CNN
F 1 "GND" V 3005 2695 50  0000 C CNN
F 2 "" H 2965 2660 50  0001 C CNN
F 3 "" H 2965 2660 50  0001 C CNN
	1    2965 2660
	0    1    1    0   
$EndComp
Text GLabel 2965 2560 0    50   Input ~ 0
+3.3V
$Comp
L CC_PCB_V1-rescue:MountingHole-Mechanical H1
U 1 1 614A4A29
P 765 705
F 0 "H1" H 865 751 50  0000 L CNN
F 1 "MountingHole" H 865 660 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 765 705 50  0001 C CNN
F 3 "~" H 765 705 50  0001 C CNN
	1    765  705 
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:MountingHole-Mechanical H2
U 1 1 614A5922
P 765 905
F 0 "H2" H 865 951 50  0000 L CNN
F 1 "MountingHole" H 865 860 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 765 905 50  0001 C CNN
F 3 "~" H 765 905 50  0001 C CNN
	1    765  905 
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:MountingHole-Mechanical H3
U 1 1 614A5C32
P 770 1105
F 0 "H3" H 870 1151 50  0000 L CNN
F 1 "MountingHole" H 870 1060 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 770 1105 50  0001 C CNN
F 3 "~" H 770 1105 50  0001 C CNN
	1    770  1105
	1    0    0    -1  
$EndComp
$Comp
L CC_PCB_V1-rescue:MountingHole-Mechanical H4
U 1 1 614A5FD8
P 775 1300
F 0 "H4" H 875 1346 50  0000 L CNN
F 1 "MountingHole" H 875 1255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 775 1300 50  0001 C CNN
F 3 "~" H 775 1300 50  0001 C CNN
	1    775  1300
	1    0    0    -1  
$EndComp
Text GLabel 2150 4950 0    50   Input ~ 0
+3.3V_Pico
Text GLabel 2150 4850 0    50   Input ~ 0
+3.3V
Text Notes 1755 4665 0    50   ~ 0
Pico Power Switch for Programming\n
Text Notes 6925 1235 0    50   ~ 10
USB (PWR In)\n
Wire Wire Line
	2150 4850 2350 4850
$Sheet
S 8850 1350 2000 1600
U 615DA4AF
F0 "relay" 50
F1 "relay.sch" 50
F2 "Relay1" I L 8850 1750 50 
F3 "Relay2" I L 8850 1950 50 
$EndSheet
Text GLabel 5850 4150 2    50   Input ~ 0
GP10
Text GLabel 5850 4050 2    50   Input ~ 0
GP11
$Comp
L CC_PCB_V1-rescue:Pico-MCU_RaspberryPi_and_Boards U1
U 1 1 61312BD2
P 5000 4500
F 0 "U1" H 5000 4300 50  0000 L CNN
F 1 "Pico" H 4950 4400 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:RPi_Pico_SMD_TH" V 5000 4500 50  0001 C CNN
F 3 "" H 5000 4500 50  0001 C CNN
	1    5000 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 4200 7550 4200
Wire Wire Line
	7550 4100 7200 4100
Wire Wire Line
	7350 4300 7550 4300
Wire Wire Line
	7550 4400 7350 4400
Wire Wire Line
	8050 4300 8250 4300
Wire Wire Line
	8250 4200 8050 4200
Wire Wire Line
	8050 4100 8250 4100
Wire Wire Line
	5850 3650 5700 3650
Wire Wire Line
	6200 3750 6150 3750
Wire Wire Line
	5700 3850 5850 3850
Wire Wire Line
	5700 4050 5850 4050
Wire Wire Line
	5850 4150 5700 4150
Wire Wire Line
	5700 4550 5850 4550
Wire Wire Line
	5850 4650 5700 4650
Wire Wire Line
	5850 4950 5700 4950
Wire Wire Line
	4300 4850 4050 4850
Wire Wire Line
	4050 4650 4300 4650
Wire Wire Line
	4300 4550 4050 4550
Wire Wire Line
	4300 4150 4050 4150
Wire Wire Line
	4050 3650 4300 3650
Wire Wire Line
	4100 5350 4300 5350
Wire Wire Line
	4000 5050 4300 5050
Wire Wire Line
	6250 3600 6150 3600
Wire Wire Line
	6150 3600 6150 3750
Connection ~ 6150 3750
Wire Wire Line
	6150 3750 5700 3750
NoConn ~ 4300 5450
NoConn ~ 4300 5250
NoConn ~ 4300 5150
NoConn ~ 4300 4950
NoConn ~ 4300 4750
NoConn ~ 4300 4450
NoConn ~ 4300 4250
NoConn ~ 4300 4050
NoConn ~ 4300 3950
NoConn ~ 4300 3850
NoConn ~ 4300 3750
NoConn ~ 4300 3550
NoConn ~ 4900 3350
NoConn ~ 5000 3350
NoConn ~ 5100 3350
NoConn ~ 5700 3550
NoConn ~ 5700 4250
NoConn ~ 5700 4350
NoConn ~ 5700 4450
NoConn ~ 5700 4750
NoConn ~ 5700 4850
NoConn ~ 5700 5050
NoConn ~ 5700 5150
NoConn ~ 5700 5250
NoConn ~ 5700 5350
NoConn ~ 5700 5450
NoConn ~ 8050 4400
Wire Wire Line
	8850 1750 8700 1750
Wire Wire Line
	8850 1950 8700 1950
Text GLabel 8700 1750 0    50   Output ~ 0
GP10
Text GLabel 8700 1950 0    50   Output ~ 0
GP11
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 61610430
P 2550 4950
F 0 "J9" H 2522 4832 50  0000 R CNN
F 1 "Conn_01x02_Male" H 2522 4923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2550 4950 50  0001 C CNN
F 3 "~" H 2550 4950 50  0001 C CNN
	1    2550 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4950 2350 4950
$Comp
L Device:R_Small_US R?
U 1 1 616756D3
P 6650 3850
AR Path="/615DA4AF/616756D3" Ref="R?"  Part="1" 
AR Path="/616756D3" Ref="R6"  Part="1" 
F 0 "R6" H 6695 3900 50  0000 L CNN
F 1 "1k" H 6680 3795 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6650 3850 50  0001 C CNN
F 3 "~" H 6650 3850 50  0001 C CNN
	1    6650 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61676AAC
P 3650 4250
AR Path="/615DA4AF/61676AAC" Ref="R?"  Part="1" 
AR Path="/61676AAC" Ref="R5"  Part="1" 
F 0 "R5" H 3535 4300 50  0000 L CNN
F 1 "1k" H 3680 4190 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3650 4250 50  0001 C CNN
F 3 "~" H 3650 4250 50  0001 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 616797FD
P 6650 3500
AR Path="/615DA4AF/616797FD" Ref="D?"  Part="1" 
AR Path="/616797FD" Ref="D6"  Part="1" 
F 0 "D6" V 6740 3550 50  0000 C CNN
F 1 "SMD LED2" V 6625 3775 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6650 3500 50  0001 C CNN
F 3 "~" H 6650 3500 50  0001 C CNN
	1    6650 3500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6167A748
P 3650 3900
AR Path="/615DA4AF/6167A748" Ref="D?"  Part="1" 
AR Path="/6167A748" Ref="D5"  Part="1" 
F 0 "D5" V 3750 3955 50  0000 C CNN
F 1 "SMD LED2" V 3625 3615 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3650 3900 50  0001 C CNN
F 3 "~" H 3650 3900 50  0001 C CNN
	1    3650 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	3540 4350 3650 4350
Connection ~ 3650 4350
Wire Wire Line
	3650 4350 4300 4350
Wire Wire Line
	3650 4050 3650 4150
$Comp
L CC_PCB_V1-rescue:GND-power #PWR?
U 1 1 616D58BC
P 3650 3600
F 0 "#PWR?" H 3650 3350 50  0001 C CNN
F 1 "GND" V 3690 3635 50  0000 C CNN
F 2 "" H 3650 3600 50  0001 C CNN
F 3 "" H 3650 3600 50  0001 C CNN
	1    3650 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 3600 3650 3750
$Comp
L CC_PCB_V1-rescue:GND-power #PWR?
U 1 1 616DC890
P 6650 3200
F 0 "#PWR?" H 6650 2950 50  0001 C CNN
F 1 "GND" V 6690 3235 50  0000 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	-1   0    0    1   
$EndComp
Connection ~ 6650 3950
Wire Wire Line
	6650 3950 6900 3950
Wire Wire Line
	5700 3950 6650 3950
Wire Wire Line
	6650 3750 6650 3650
Wire Wire Line
	6650 3200 6650 3350
$EndSCHEMATC
