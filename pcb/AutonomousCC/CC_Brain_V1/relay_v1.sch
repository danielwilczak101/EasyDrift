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
L Relay:FINDER-40.11 K?
U 1 1 615E00DB
P 6000 1750
F 0 "K?" H 6430 1796 50  0000 L CNN
F 1 "FINDER-40.11" H 6430 1705 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_40.11" H 7140 1710 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 615E6955
P 5150 1750
F 0 "D?" V 5196 1622 50  0000 R CNN
F 1 "DIODE" V 5105 1622 50  0000 R CNN
F 2 "" H 5150 1750 50  0001 C CNN
F 3 "~" H 5150 1750 50  0001 C CNN
	1    5150 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1450 5800 1200
Wire Wire Line
	5800 1200 5150 1200
Wire Wire Line
	5150 1200 5150 1550
Wire Wire Line
	5800 2050 5800 2250
Wire Wire Line
	5800 2250 5150 2250
Wire Wire Line
	5150 2250 5150 1950
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 615EB875
P 7950 1700
F 0 "J?" H 8030 1742 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 8030 1651 50  0000 L CNN
F 2 "" H 7950 1700 50  0001 C CNN
F 3 "~" H 7950 1700 50  0001 C CNN
	1    7950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1450 6100 1250
Wire Wire Line
	6100 1250 7750 1250
Wire Wire Line
	7750 1250 7750 1600
Wire Wire Line
	6200 2050 7750 2050
Wire Wire Line
	7750 2050 7750 1800
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 615EF85E
P 5050 2450
F 0 "Q?" H 5240 2496 50  0000 L CNN
F 1 "BC547A" H 5240 2405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 2375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5050 2450 50  0001 L CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
Connection ~ 5150 2250
$Comp
L Device:R_Small_US R?
U 1 1 615F12E8
P 4400 2450
F 0 "R?" V 4195 2450 50  0000 C CNN
F 1 "1k" V 4286 2450 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "~" H 4400 2450 50  0001 C CNN
	1    4400 2450
	0    1    1    0   
$EndComp
$EndSCHEMATC
