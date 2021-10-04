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
P 7620 4240
F 0 "J2" H 7670 4557 50  0000 C CNN
F 1 "Antenna_Conn_02x04_Odd_Even" H 7670 4466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7620 4240 50  0001 C CNN
F 3 "~" H 7620 4240 50  0001 C CNN
	1    7620 4240
	1    0    0    -1  
$EndComp
Text GLabel 8170 4240 2    50   Input ~ 0
GP14
Text GLabel 5620 3590 2    50   Input ~ 0
GP14
Text GLabel 7170 4240 0    50   Input ~ 0
GP17
Wire Wire Line
	7020 2905 7270 2905
Wire Wire Line
	7020 3005 7270 3005
Wire Wire Line
	7920 4240 8170 4240
Wire Wire Line
	7170 4240 7420 4240
Wire Wire Line
	5620 3490 5520 3490
Wire Wire Line
	5520 3590 5620 3590
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0102
U 1 1 6139949D
P 6970 4140
F 0 "#PWR0102" H 6970 3890 50  0001 C CNN
F 1 "GND" H 6975 3967 50  0000 C CNN
F 2 "" H 6970 4140 50  0001 C CNN
F 3 "" H 6970 4140 50  0001 C CNN
	1    6970 4140
	0    1    1    0   
$EndComp
Wire Wire Line
	7420 4140 6970 4140
Text GLabel 5670 4890 2    50   Input ~ 0
GP4
Wire Wire Line
	7420 4440 7170 4440
Wire Wire Line
	5520 4890 5670 4890
Text GLabel 5670 4590 2    50   Input ~ 0
GP6
Text GLabel 5670 4490 2    50   Input ~ 0
GP7
Text GLabel 7170 4340 0    50   Input ~ 0
GP6
Text GLabel 7170 4440 0    50   Input ~ 0
GP7
Wire Wire Line
	8170 4340 7920 4340
Wire Wire Line
	7420 4340 7170 4340
Wire Wire Line
	5520 4590 5670 4590
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
Text GLabel 8170 4340 2    50   Input ~ 0
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
NoConn ~ 7920 4440
NoConn ~ 7270 3205
NoConn ~ 7270 3105
Text Notes 7520 4630 0    59   ~ 12
Antenna
Text Notes 7360 2685 0    59   ~ 12
Relay
Text Notes 4680 5670 0    59   ~ 12
PICO
Text Notes 4730 1360 0    59   ~ 12
ESC Connection
$Comp
L CC_PCB_V1-rescue:GND-power #PWR0101
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
L CC_PCB_V1-rescue:PWR_FLAG-power #FLG0103
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
Text GLabel 3970 5290 0    50   Input ~ 0
+3.3V_Pico
Text GLabel 7020 3305 0    50   Input ~ 0
+5V
Wire Wire Line
	7920 4140 8170 4140
Text GLabel 8170 4140 2    50   Input ~ 0
+3.3V
NoConn ~ 4120 3490
Text GLabel 7020 2905 0    50   Output ~ 0
GP10
Text GLabel 7020 3005 0    50   Output ~ 0
GP11
Wire Wire Line
	5670 4490 5520 4490
Wire Wire Line
	4120 4790 3970 4790
Wire Wire Line
	4120 5290 3970 5290
Text GLabel 4520 1540 1    50   Input ~ 0
+5V
Text GLabel 3150 1540 0    50   Input ~ 0
+3.3V
Text Notes 3160 1220 0    59   ~ 12
Voltage Regulator
Connection ~ 5520 3690
Text GLabel 3970 4990 0    59   Output ~ 0
3.3V
Text GLabel 4470 2225 0    59   Input ~ 0
3.3V
Wire Wire Line
	4120 4990 3970 4990
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
L CC_PCB_V1-rescue:C-Device C2
U 1 1 61465212
P 3830 1690
F 0 "C2" H 3735 1760 50  0000 L CNN
F 1 "C" H 3735 1615 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3868 1540 50  0001 C CNN
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
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3268 1540 50  0001 C CNN
F 3 "https://www.tdk-electronics.tdk.com/inf/20/30/db/aec/B41866.pdf" H 3230 1690 50  0001 C CNN
	1    3230 1690
	1    0    0    -1  
$EndComp
Wire Wire Line
	3830 1840 3530 1840
Wire Wire Line
	3830 1540 4520 1540
Connection ~ 3830 1540
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
Text GLabel 2350 5100 3    50   Input ~ 0
+3.3V_Pico
Text GLabel 1850 4750 0    50   Input ~ 0
+3.3V
Text Notes 1750 4300 0    50   ~ 0
Pico Power Switch for Programming\n
Text Notes 6900 1150 0    50   ~ 0
USB (PWR In)\n
$Comp
L SSA12G:SSA12G S1
U 1 1 615BBB5C
P 2350 4750
F 0 "S1" H 2427 4796 50  0000 L CNN
F 1 "SSA12G" H 2427 4705 50  0000 L CNN
F 2 "my_footprints:SW_SSA12G" H 2350 4750 50  0001 L BNN
F 3 "" H 2350 4750 50  0001 L BNN
F 4 "Compliant" H 2350 4750 50  0001 L BNN "EU_RoHS_Compliance"
F 5 "1-1437575-5" H 2350 4750 50  0001 L BNN "Comment"
	1    2350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4750 2050 4750
Wire Wire Line
	2350 4950 2350 5100
$EndSCHEMATC
