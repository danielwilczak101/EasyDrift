EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Autonomous Crazy Cart V1"
Date "09/12/2021"
Rev "09/18/2021"
Comp "Engineering Physics Propulsion Lab * EPPL *"
Comment1 "might need future revisions"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CC_PCB_V1-rescue:Pico-MCU_RaspberryPi_and_Boards U1
U 1 1 61312BD2
P 4820 4440
F 0 "U1" H 4820 4240 50  0000 L CNN
F 1 "Pico" H 4770 4340 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:RPi_Pico_SMD_TH" V 4820 4440 50  0001 C CNN
F 3 "" H 4820 4440 50  0001 C CNN
	1    4820 4440
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 6132C346
P 7270 3605
F 0 "J5" H 7350 3597 50  0000 L CNN
F 1 "Relay_Conn_01x06" H 7350 3506 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7270 3605 50  0001 C CNN
F 3 "~" H 7270 3605 50  0001 C CNN
	1    7270 3605
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 6132E9AC
P 7420 4840
F 0 "J2" H 7470 5157 50  0000 C CNN
F 1 "Antenna_Conn_02x04_Odd_Even" H 7470 5066 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7420 4840 50  0001 C CNN
F 3 "~" H 7420 4840 50  0001 C CNN
	1    7420 4840
	1    0    0    -1  
$EndComp
Text GLabel 7970 4840 2    50   Input ~ 0
GP14
Text GLabel 5620 3590 2    50   Input ~ 0
GP14
Text GLabel 6970 4840 0    50   Input ~ 0
GP17
Wire Wire Line
	6820 3505 7070 3505
Wire Wire Line
	6820 3605 7070 3605
Wire Wire Line
	7720 4840 7970 4840
Wire Wire Line
	6970 4840 7220 4840
Wire Wire Line
	5620 3490 5520 3490
Wire Wire Line
	5520 3590 5620 3590
$Comp
L power:GND #PWR0102
U 1 1 6139949D
P 6770 4740
F 0 "#PWR0102" H 6770 4490 50  0001 C CNN
F 1 "GND" H 6775 4567 50  0000 C CNN
F 2 "" H 6770 4740 50  0001 C CNN
F 3 "" H 6770 4740 50  0001 C CNN
	1    6770 4740
	0    1    1    0   
$EndComp
Wire Wire Line
	7220 4740 6770 4740
Text GLabel 5670 4890 2    50   Input ~ 0
GP4
Wire Wire Line
	7220 5040 6970 5040
Wire Wire Line
	5520 4890 5670 4890
Text GLabel 5670 4590 2    50   Input ~ 0
GP6
Text GLabel 5670 4490 2    50   Input ~ 0
GP7
Text GLabel 6970 4940 0    50   Input ~ 0
GP6
Text GLabel 6970 5040 0    50   Input ~ 0
GP7
Wire Wire Line
	7970 4940 7720 4940
Wire Wire Line
	7220 4940 6970 4940
Wire Wire Line
	5520 4590 5670 4590
$Comp
L power:GND #PWR0105
U 1 1 613C4FFD
P 6670 3405
F 0 "#PWR0105" H 6670 3155 50  0001 C CNN
F 1 "GND" H 6675 3232 50  0000 C CNN
F 2 "" H 6670 3405 50  0001 C CNN
F 3 "" H 6670 3405 50  0001 C CNN
	1    6670 3405
	0    1    1    0   
$EndComp
Wire Wire Line
	7070 3405 6670 3405
Wire Wire Line
	7070 3905 6820 3905
Text GLabel 7970 4940 2    50   Input ~ 0
GP4
NoConn ~ 5520 5390
NoConn ~ 5520 5290
NoConn ~ 5520 5190
NoConn ~ 5520 5090
NoConn ~ 5520 4990
NoConn ~ 5520 4790
NoConn ~ 5520 4690
NoConn ~ 5520 4390
NoConn ~ 5520 4290
NoConn ~ 5520 4190
NoConn ~ 4120 5390
NoConn ~ 4120 5090
NoConn ~ 4120 4890
NoConn ~ 4120 4690
NoConn ~ 4120 4390
NoConn ~ 4120 4190
NoConn ~ 4120 3990
NoConn ~ 4120 3890
NoConn ~ 4120 3790
NoConn ~ 4120 3690
NoConn ~ 4720 3290
NoConn ~ 4820 3290
NoConn ~ 4920 3290
NoConn ~ 7720 5040
NoConn ~ 7070 3805
NoConn ~ 7070 3705
Text Notes 7320 5230 0    59   ~ 12
Antenna
Text Notes 7160 3285 0    59   ~ 12
Relay
Text Notes 4680 5670 0    59   ~ 12
PICO
Text Notes 4730 2010 0    59   ~ 12
ESC Connection
$Comp
L power:GND #PWR0101
U 1 1 6132D47F
P 5840 3690
F 0 "#PWR0101" H 5840 3440 50  0001 C CNN
F 1 "GND" V 5830 3490 50  0000 C CNN
F 2 "" H 5840 3690 50  0001 C CNN
F 3 "" H 5840 3690 50  0001 C CNN
	1    5840 3690
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 6132C74E
P 5520 3690
F 0 "#FLG0103" H 5520 3765 50  0001 C CNN
F 1 "PWR_FLAG" V 5510 3740 50  0000 L CNN
F 2 "" H 5520 3690 50  0001 C CNN
F 3 "~" H 5520 3690 50  0001 C CNN
	1    5520 3690
	0    1    1    0   
$EndComp
Wire Wire Line
	5520 3690 5840 3690
NoConn ~ 4120 5190
Text GLabel 3970 4790 0    50   Input ~ 0
GP28
$Comp
L CC_PCB_V1-rescue:282837-2-282837-2 Screw_Terminal1
U 1 1 6136899C
P 4820 2190
F 0 "Screw_Terminal1" H 4950 2186 50  0000 L CNN
F 1 "282837-2" H 4950 2095 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:TE_282837-2" H 4820 2190 50  0001 L BNN
F 3 "" H 4820 2190 50  0001 L BNN
F 4 "282837-2" H 4820 2190 50  0001 L BNN "Comment"
	1    4820 2190
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6139CFDB
P 4520 2290
F 0 "#PWR0109" H 4520 2040 50  0001 C CNN
F 1 "GND" V 4560 2325 50  0000 C CNN
F 2 "" H 4520 2290 50  0001 C CNN
F 3 "" H 4520 2290 50  0001 C CNN
	1    4520 2290
	0    1    1    0   
$EndComp
Text GLabel 3970 5290 0    50   Input ~ 0
+3.3V
Text GLabel 6820 3905 0    50   Input ~ 0
+5V
Wire Wire Line
	7720 4740 7970 4740
Text GLabel 7970 4740 2    50   Input ~ 0
+3.3V
NoConn ~ 4120 3490
Text GLabel 6820 3505 0    50   Output ~ 0
GP10
Text GLabel 6820 3605 0    50   Output ~ 0
GP11
Wire Wire Line
	5670 4490 5520 4490
Wire Wire Line
	4120 4790 3970 4790
Wire Wire Line
	4120 5290 3970 5290
Text GLabel 4520 2190 1    50   Input ~ 0
+5V
Text GLabel 3150 2190 0    50   Input ~ 0
+3.3V
Text Notes 3160 1870 0    59   ~ 12
Voltage Regulator
Connection ~ 5520 3690
Text GLabel 3970 4990 0    59   Output ~ 0
3.3V
Text GLabel 4420 2575 0    59   Input ~ 0
3.3V
Wire Wire Line
	4120 4990 3970 4990
Text GLabel 4420 2675 0    59   Input ~ 0
GP12
Text GLabel 4420 2775 0    59   Input ~ 0
GP13
Text GLabel 4420 2875 0    59   Input ~ 0
GP21
Text GLabel 4420 2975 0    59   Input ~ 0
GP22
$Comp
L Connector:Screw_Terminal_01x07 J1
U 1 1 6146F2F5
P 4620 2875
F 0 "J1" H 4700 2917 50  0000 L CNN
F 1 "Screw_Terminal_01x07" H 4700 2826 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-7_1x07_P2.54mm_Horizontal" H 4620 2875 50  0001 C CNN
F 3 "~https://www.amazon.com/SamIdea-10Pieces-2-54mm-Terminal-Assorted/dp/B07FTJSNN7/ref=sr_1_4?dchild=1&keywords=1x3+screw+terminal+smd&qid=1631916388&sr=8-4" H 4620 2875 50  0001 C CNN
	1    4620 2875
	1    0    0    -1  
$EndComp
Text GLabel 4420 3075 0    59   Input ~ 0
GP26
Text GLabel 4420 3175 0    59   Input ~ 0
GP27
Text GLabel 5520 3890 2    59   Input ~ 0
GP12
Text GLabel 5520 3790 2    59   Input ~ 0
GP13
Text GLabel 4120 4090 0    59   Input ~ 0
GP21
Text GLabel 4120 4290 0    59   Input ~ 0
GP22
Text GLabel 4120 4490 0    59   Input ~ 0
GP26
Text GLabel 4120 4590 0    59   Input ~ 0
GP27
$Comp
L Device:C C2
U 1 1 61465212
P 3830 2340
F 0 "C2" H 3735 2410 50  0000 L CNN
F 1 "C" H 3735 2265 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3868 2190 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28549/dseries.pdf" H 3830 2340 50  0001 C CNN
	1    3830 2340
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337_TO3 U2
U 1 1 6146A6D0
P 3530 2190
F 0 "U2" H 3530 1948 50  0000 C CNN
F 1 "LM337_TO3" H 3530 2039 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:SOT230P696X180-4N" H 3530 1990 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 3530 2190 50  0001 C CNN
	1    3530 2190
	-1   0    0    1   
$EndComp
Wire Wire Line
	3230 2490 3530 2490
Wire Wire Line
	3230 2190 3150 2190
Connection ~ 3230 2190
$Comp
L power:GND #PWR0104
U 1 1 6146C342
P 3530 2520
F 0 "#PWR0104" H 3530 2270 50  0001 C CNN
F 1 "GND" H 3605 2510 50  0000 C CNN
F 2 "" H 3530 2520 50  0001 C CNN
F 3 "" H 3530 2520 50  0001 C CNN
	1    3530 2520
	1    0    0    -1  
$EndComp
Wire Wire Line
	3530 2490 3530 2520
Connection ~ 3530 2490
$Comp
L Device:CP C1
U 1 1 61472D8C
P 3230 2340
F 0 "C1" H 3230 2415 50  0000 L CNN
F 1 "CP" H 3235 2260 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3268 2190 50  0001 C CNN
F 3 "https://www.tdk-electronics.tdk.com/inf/20/30/db/aec/B41866.pdf" H 3230 2340 50  0001 C CNN
	1    3230 2340
	1    0    0    -1  
$EndComp
Wire Wire Line
	3830 2490 3530 2490
Wire Wire Line
	3830 2190 4520 2190
Connection ~ 3830 2190
Text GLabel 5520 4090 2    50   Input ~ 0
GP10
Text GLabel 5520 3990 2    50   Input ~ 0
GP11
NoConn ~ 5620 3490
Text GLabel 4120 3590 0    50   Input ~ 0
GP17
$Comp
L CC_PCB_V1-rescue:USB1130-15-A_REVA-USB1130-15-A_REVA J3
U 1 1 61497609
P 7020 2300
F 0 "J3" H 7250 2296 50  0000 L CNN
F 1 "USB1130-15-A_REVA" H 7250 2205 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:GCT_USB1130-15-A_REVA" H 7020 2300 50  0001 L BNN
F 3 "" H 7020 2300 50  0001 L BNN
F 4 "A" H 7020 2300 50  0001 L BNN "PARTREV"
F 5 "7.24mm" H 7020 2300 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Manufacturer Recommendations" H 7020 2300 50  0001 L BNN "STANDARD"
F 7 "GCT" H 7020 2300 50  0001 L BNN "MANUFACTURER"
	1    7020 2300
	1    0    0    -1  
$EndComp
NoConn ~ 6620 2200
NoConn ~ 6620 2300
Text GLabel 6620 2100 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR0103
U 1 1 614998DB
P 6620 2400
F 0 "#PWR0103" H 6620 2150 50  0001 C CNN
F 1 "GND" H 6625 2227 50  0000 C CNN
F 2 "" H 6620 2400 50  0001 C CNN
F 3 "" H 6620 2400 50  0001 C CNN
	1    6620 2400
	0    1    1    0   
$EndComp
NoConn ~ 6620 2600
$Comp
L CC_PCB_V1-rescue:282837-2-282837-2 Screw_Terminal2
U 1 1 614A273C
P 3215 2910
F 0 "Screw_Terminal2" H 3345 2906 50  0000 L CNN
F 1 "282837-2" H 3345 2815 50  0000 L CNN
F 2 "MCU_RaspberryPi_and_Boards:TE_282837-2" H 3215 2910 50  0001 L BNN
F 3 "" H 3215 2910 50  0001 L BNN
F 4 "282837-2" H 3215 2910 50  0001 L BNN "Comment"
	1    3215 2910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 614A47B6
P 2915 3010
F 0 "#PWR0107" H 2915 2760 50  0001 C CNN
F 1 "GND" V 2955 3045 50  0000 C CNN
F 2 "" H 2915 3010 50  0001 C CNN
F 3 "" H 2915 3010 50  0001 C CNN
	1    2915 3010
	0    1    1    0   
$EndComp
Text GLabel 2915 2910 0    50   Input ~ 0
+3.3V
$Comp
L Mechanical:MountingHole H1
U 1 1 614A4A29
P 5815 1305
F 0 "H1" H 5915 1351 50  0000 L CNN
F 1 "MountingHole" H 5915 1260 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 5815 1305 50  0001 C CNN
F 3 "~" H 5815 1305 50  0001 C CNN
	1    5815 1305
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 614A5922
P 5815 1505
F 0 "H2" H 5915 1551 50  0000 L CNN
F 1 "MountingHole" H 5915 1460 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 5815 1505 50  0001 C CNN
F 3 "~" H 5815 1505 50  0001 C CNN
	1    5815 1505
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 614A5C32
P 5820 1705
F 0 "H3" H 5920 1751 50  0000 L CNN
F 1 "MountingHole" H 5920 1660 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 5820 1705 50  0001 C CNN
F 3 "~" H 5820 1705 50  0001 C CNN
	1    5820 1705
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 614A5FD8
P 5825 1900
F 0 "H4" H 5925 1946 50  0000 L CNN
F 1 "MountingHole" H 5925 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 5825 1900 50  0001 C CNN
F 3 "~" H 5825 1900 50  0001 C CNN
	1    5825 1900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
