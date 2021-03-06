EESchema Schematic File Version 4
LIBS:Shield-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R R1
U 1 1 6036266C
P 3500 1850
F 0 "R1" H 3570 1896 50  0000 L CNN
F 1 "100k" H 3570 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 1850 50  0001 C CNN
F 3 "~" H 3500 1850 50  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60362A16
P 6450 1850
F 0 "R3" H 6520 1896 50  0000 L CNN
F 1 "100k" H 6520 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 1850 50  0001 C CNN
F 3 "~" H 6450 1850 50  0001 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60363512
P 7350 2050
F 0 "R2" V 7250 2050 50  0000 C CNN
F 1 "1k" V 7450 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 2050 50  0001 C CNN
F 3 "~" H 7350 2050 50  0001 C CNN
	1    7350 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60363BB8
P 3050 1850
F 0 "C1" H 3165 1896 50  0000 L CNN
F 1 "100n" H 3165 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3088 1700 50  0001 C CNN
F 3 "~" H 3050 1850 50  0001 C CNN
	1    3050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60364536
P 6600 1200
F 0 "C3" H 6715 1246 50  0000 L CNN
F 1 "100n" H 6715 1155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6638 1050 50  0001 C CNN
F 3 "~" H 6600 1200 50  0001 C CNN
	1    6600 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 603649B0
P 6850 1850
F 0 "C4" H 6965 1896 50  0000 L CNN
F 1 "1u" H 6965 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W4.5mm_P5.00mm" H 6888 1700 50  0001 C CNN
F 3 "~" H 6850 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60364F20
P 7750 1850
F 0 "C2" H 7865 1896 50  0000 L CNN
F 1 "100n" H 7865 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 7788 1700 50  0001 C CNN
F 3 "~" H 7750 1850 50  0001 C CNN
	1    7750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1600 3050 1700
Wire Wire Line
	3500 1600 3500 1700
$Comp
L power:+5V #PWR0101
U 1 1 603756C6
P 2050 850
F 0 "#PWR0101" H 2050 700 50  0001 C CNN
F 1 "+5V" H 2065 1023 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R0
U 1 1 6037D836
P 2050 1150
F 0 "R0" H 2120 1196 50  0000 L CNN
F 1 "Rsensor" H 2120 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 1150 50  0001 C CNN
F 3 "~" H 2050 1150 50  0001 C CNN
	1    2050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60380DA1
P 2600 1600
F 0 "R5" V 2393 1600 50  0000 C CNN
F 1 "10k" V 2484 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 2530 1600 50  0001 C CNN
F 3 "~" H 2600 1600 50  0001 C CNN
	1    2600 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1300 2050 1600
Wire Wire Line
	2050 1600 2450 1600
Wire Wire Line
	2750 1600 3050 1600
Connection ~ 3050 1600
$Comp
L power:GND #PWR0102
U 1 1 60386D8D
P 3050 2350
F 0 "#PWR0102" H 3050 2100 50  0001 C CNN
F 1 "GND" H 3055 2177 50  0000 C CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2000 3050 2150
Wire Wire Line
	3500 2000 3500 2150
Wire Wire Line
	3500 2150 3050 2150
Wire Wire Line
	3050 2150 3050 2350
Connection ~ 3050 2150
Connection ~ 3500 1600
Wire Wire Line
	3050 1600 3500 1600
Wire Wire Line
	3500 1600 4050 1600
Text GLabel 4050 1600 2    50   Input ~ 0
IN+
$Comp
L New_Library:LTC1050 U1
U 1 1 6039741D
P 5150 1550
F 0 "U1" H 5425 1865 50  0000 C CNN
F 1 "LTC1050" H 5425 1774 50  0000 C CNN
F 2 "mes_empreintes:AOP" H 5300 1800 50  0001 C CNN
F 3 "" H 5300 1800 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
Text GLabel 4550 1600 0    50   Input ~ 0
IN-
Text GLabel 4550 1700 0    50   Input ~ 0
IN+
Wire Wire Line
	4650 1600 4550 1600
Wire Wire Line
	4650 1700 4550 1700
$Comp
L power:GND #PWR0103
U 1 1 6039A60F
P 4550 1950
F 0 "#PWR0103" H 4550 1700 50  0001 C CNN
F 1 "GND" H 4555 1777 50  0000 C CNN
F 2 "" H 4550 1950 50  0001 C CNN
F 3 "" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1800 4550 1800
Wire Wire Line
	4550 1800 4550 1950
$Comp
L power:+5V #PWR0104
U 1 1 6039D6CB
P 6850 850
F 0 "#PWR0104" H 6850 700 50  0001 C CNN
F 1 "+5V" H 6865 1023 50  0000 C CNN
F 2 "" H 6850 850 50  0001 C CNN
F 3 "" H 6850 850 50  0001 C CNN
	1    6850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1600 6350 900 
Wire Wire Line
	6350 900  6600 900 
Wire Wire Line
	6850 900  6850 850 
Wire Wire Line
	6600 1050 6600 900 
Connection ~ 6600 900 
Wire Wire Line
	6600 900  6850 900 
$Comp
L power:GND #PWR0105
U 1 1 603A1F1F
P 6600 1350
F 0 "#PWR0105" H 6600 1100 50  0001 C CNN
F 1 "GND" H 6605 1177 50  0000 C CNN
F 2 "" H 6600 1350 50  0001 C CNN
F 3 "" H 6600 1350 50  0001 C CNN
	1    6600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1600 6350 1600
NoConn ~ 6200 1800
$Comp
L Device:R R6
U 1 1 603630F1
P 7350 1700
F 0 "R6" V 7450 1650 50  0000 L CNN
F 1 "1k" V 7250 1650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 1700 50  0001 C CNN
F 3 "~" H 7350 1700 50  0001 C CNN
	1    7350 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 1700 6450 1700
Wire Wire Line
	6450 1700 6850 1700
Connection ~ 6450 1700
Wire Wire Line
	6850 1700 7200 1700
Connection ~ 6850 1700
Wire Wire Line
	7500 1700 7750 1700
Wire Wire Line
	7500 2050 7750 2050
Wire Wire Line
	7750 2050 7750 2000
Wire Wire Line
	7200 2050 6850 2050
Wire Wire Line
	6850 2050 6850 2000
Wire Wire Line
	6850 2050 6450 2050
Wire Wire Line
	6450 2050 6450 2000
Connection ~ 6850 2050
$Comp
L power:GND #PWR0106
U 1 1 603DA35D
P 7750 2050
F 0 "#PWR0106" H 7750 1800 50  0001 C CNN
F 1 "GND" H 7755 1877 50  0000 C CNN
F 2 "" H 7750 2050 50  0001 C CNN
F 3 "" H 7750 2050 50  0001 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
Connection ~ 7750 2050
Text GLabel 7950 1700 2    50   Input ~ 0
ADC
Wire Wire Line
	7750 1700 7950 1700
Connection ~ 7750 1700
Text GLabel 6850 2250 3    50   Input ~ 0
IN-
Wire Wire Line
	6850 2050 6850 2250
$Comp
L power:+5V #PWR0107
U 1 1 603F8809
P 1350 850
F 0 "#PWR0107" H 1350 700 50  0001 C CNN
F 1 "+5V" H 1365 1023 50  0000 C CNN
F 2 "" H 1350 850 50  0001 C CNN
F 3 "" H 1350 850 50  0001 C CNN
	1    1350 850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 603F9046
P 1350 1000
F 0 "#FLG0101" H 1350 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1173 50  0000 C CNN
F 2 "" H 1350 1000 50  0001 C CNN
F 3 "~" H 1350 1000 50  0001 C CNN
	1    1350 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 850  1350 1000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 604014AA
P 900 800
F 0 "#FLG0102" H 900 875 50  0001 C CNN
F 1 "PWR_FLAG" H 900 973 50  0000 C CNN
F 2 "" H 900 800 50  0001 C CNN
F 3 "~" H 900 800 50  0001 C CNN
	1    900  800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60401D62
P 900 1000
F 0 "#PWR0108" H 900 750 50  0001 C CNN
F 1 "GND" H 905 827 50  0000 C CNN
F 2 "" H 900 1000 50  0001 C CNN
F 3 "" H 900 1000 50  0001 C CNN
	1    900  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  800  900  1000
Wire Notes Line
	1800 550  1800 2600
Wire Notes Line
	1800 2600 8300 2600
Wire Notes Line
	8300 2600 8300 550 
Wire Notes Line
	8300 550  1800 550 
Wire Wire Line
	2050 850  2050 1000
Text GLabel 2650 3550 0    50   Input ~ 0
SDA
Text GLabel 2650 3650 0    50   Input ~ 0
SCK
Wire Wire Line
	2650 3550 2900 3550
Wire Wire Line
	2650 3650 2900 3650
$Comp
L power:+5V #PWR0109
U 1 1 6043B2D7
P 2100 3600
F 0 "#PWR0109" H 2100 3450 50  0001 C CNN
F 1 "+5V" H 2115 3773 50  0000 C CNN
F 2 "" H 2100 3600 50  0001 C CNN
F 3 "" H 2100 3600 50  0001 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3600 2100 3750
Wire Wire Line
	2100 3750 2900 3750
$Comp
L power:GND #PWR0110
U 1 1 6044115B
P 2700 4000
F 0 "#PWR0110" H 2700 3750 50  0001 C CNN
F 1 "GND" H 2705 3827 50  0000 C CNN
F 2 "" H 2700 4000 50  0001 C CNN
F 3 "" H 2700 4000 50  0001 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4000 2700 3850
Wire Wire Line
	2700 3850 2900 3850
$Comp
L power:+5V #PWR0111
U 1 1 60445978
P 4500 3250
F 0 "#PWR0111" H 4500 3100 50  0001 C CNN
F 1 "+5V" H 4515 3423 50  0000 C CNN
F 2 "" H 4500 3250 50  0001 C CNN
F 3 "" H 4500 3250 50  0001 C CNN
	1    4500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3250 4500 3450
Wire Wire Line
	4500 3450 4800 3450
$Comp
L power:GND #PWR0112
U 1 1 6044917C
P 4200 3550
F 0 "#PWR0112" H 4200 3300 50  0001 C CNN
F 1 "GND" H 4205 3377 50  0000 C CNN
F 2 "" H 4200 3550 50  0001 C CNN
F 3 "" H 4200 3550 50  0001 C CNN
	1    4200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3550 4800 3550
Text GLabel 4500 3650 0    50   Input ~ 0
RX
Wire Wire Line
	4500 3650 4800 3650
Text GLabel 4500 3750 0    50   Input ~ 0
TX
Wire Wire Line
	4500 3750 4800 3750
Wire Wire Line
	6550 3800 6550 3700
$Comp
L New_Library:Bluetooth_HC05 U3
U 1 1 60444833
P 5550 3150
F 0 "U3" H 5900 2550 50  0000 L CNN
F 1 "Bluetooth_HC05" H 5550 2450 50  0000 L CNN
F 2 "mes_empreintes:Mon_Bluetooth" H 5550 3150 50  0001 C CNN
F 3 "" H 5550 3150 50  0001 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3500 7100 3500
Wire Wire Line
	7000 3400 7100 3400
Wire Wire Line
	7000 3300 7100 3300
Text GLabel 7000 3300 0    50   Input ~ 0
CLK
Text GLabel 7000 3400 0    50   Input ~ 0
DATA
Text GLabel 7000 3500 0    50   Input ~ 0
SWITCH
Wire Wire Line
	6550 3600 7100 3600
$Comp
L power:+5V #PWR0113
U 1 1 60459E74
P 6550 3600
F 0 "#PWR0113" H 6550 3450 50  0001 C CNN
F 1 "+5V" H 6565 3773 50  0000 C CNN
F 2 "" H 6550 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3700 7100 3700
$Comp
L power:GND #PWR0114
U 1 1 6045627C
P 6550 3800
F 0 "#PWR0114" H 6550 3550 50  0001 C CNN
F 1 "GND" H 6555 3627 50  0000 C CNN
F 2 "" H 6550 3800 50  0001 C CNN
F 3 "" H 6550 3800 50  0001 C CNN
	1    6550 3800
	1    0    0    -1  
$EndComp
$Comp
L New_Library:KY_040 U4
U 1 1 604552BB
P 7650 3150
F 0 "U4" H 7850 2750 50  0000 L CNN
F 1 "KY_040" H 7750 2650 50  0000 L CNN
F 2 "mes_empreintes:Encodeur" H 7650 3150 50  0001 C CNN
F 3 "" H 7650 3150 50  0001 C CNN
	1    7650 3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	8300 2800 8300 4450
$Comp
L New_Library:OLED_0,91 U2
U 1 1 6041025D
P 3500 3350
F 0 "U2" H 3650 2950 50  0000 L CNN
F 1 "OLED_0,91" H 3500 2850 50  0000 L CNN
F 2 "mes_empreintes:Mon_Bluetooth" H 3500 3350 50  0001 C CNN
F 3 "" H 3500 3350 50  0001 C CNN
	1    3500 3350
	1    0    0    -1  
$EndComp
Wire Notes Line
	8300 2800 1800 2800
Wire Notes Line
	1800 2800 1800 4450
Wire Notes Line
	1800 4450 8300 4450
NoConn ~ 10550 1400
NoConn ~ 10550 1600
NoConn ~ 10550 1700
NoConn ~ 10550 2000
NoConn ~ 10550 2100
NoConn ~ 10550 2300
NoConn ~ 10550 2400
NoConn ~ 10550 2500
NoConn ~ 10550 2900
NoConn ~ 10550 3000
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
Text GLabel 10550 1800 2    50   Input ~ 0
TX
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text GLabel 10600 1900 2    50   Input ~ 0
RX
Wire Wire Line
	10200 1900 10600 1900
Text GLabel 10800 2700 2    50   Input ~ 0
CLK
Text GLabel 10800 2600 2    50   Input ~ 0
DATA
Text GLabel 10800 2800 2    50   Input ~ 0
SWITCH
Wire Wire Line
	10200 2600 10800 2600
Wire Wire Line
	10200 2700 10800 2700
Wire Wire Line
	10200 2800 10800 2800
NoConn ~ 9350 1450
NoConn ~ 8650 1800
Text GLabel 8800 2500 0    50   Input ~ 0
ADC
Text GLabel 8800 2900 0    50   Input ~ 0
SDA
Text GLabel 8800 3000 0    50   Input ~ 0
SCK
Wire Wire Line
	8800 2500 9400 2500
Wire Wire Line
	8800 2900 9400 2900
Wire Wire Line
	8800 3000 9400 3000
Text GLabel 10950 1300 2    50   Input ~ 0
SDA
Text GLabel 10950 1200 2    50   Input ~ 0
SCK
Wire Wire Line
	10200 1200 10950 1200
Wire Wire Line
	10200 1300 10950 1300
NoConn ~ 8950 1450
$EndSCHEMATC
