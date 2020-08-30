EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Twin-T Morse Code Practice Oscillator"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5EC4847F
P 1300 1900
F 0 "Q1" H 1490 1946 50  0000 L CNN
F 1 "PN2222A" H 1490 1855 50  0000 L CNN
F 2 "BE_Transistors:TO92-3_Formed_Leads" H 1500 1825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1300 1900 50  0001 L CNN
	1    1300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5EC48B9E
P 6050 2700
F 0 "R9" H 6118 2746 50  0000 L CNN
F 1 "24k9" H 6118 2655 50  0000 L CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 6090 2690 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5EC4EA5C
P 9350 5350
F 0 "J7" H 9400 5575 50  0000 R CNN
F 1 "SPKR" H 9400 5475 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-2" H 9350 5350 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 9350 5350 50  0001 C CNN
	1    9350 5350
	1    0    0    -1  
$EndComp
Text Notes 9450 4525 0    50   ~ 0
To Panel-Mount 1/4" \nTRS Headphone Jack\n(Switched)
Text Notes 9425 4875 0    50   ~ 0
Sleeve
Text Notes 9425 4775 0    50   ~ 0
Ring (Switched)
Text Notes 9425 4675 0    50   ~ 0
Tip + Ring
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5EC5C155
P 1350 6900
F 0 "J2" H 1400 7225 50  0000 R CNN
F 1 "DC IN" H 1400 7125 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-3" H 1350 6900 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 1350 6900 50  0001 C CNN
	1    1350 6900
	-1   0    0    -1  
$EndComp
Text Notes 1275 6825 2    50   ~ 0
DC IN
Text Notes 1275 6925 2    50   ~ 0
DC Switched
Text Notes 1275 7025 2    50   ~ 0
DC RTN
Text Notes 1250 6675 2    50   ~ 0
To 9VDC External\nDC Power Jack
$Comp
L Amplifier_Operational:TLC272 U1
U 2 1 5F42FD7E
P 4650 4000
F 0 "U1" H 4600 4000 50  0000 C CNN
F 1 "TLV272" H 4600 3750 50  0000 C CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 4650 4000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv272.pdf" H 4650 4000 50  0001 C CNN
	2    4650 4000
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5F43519C
P 6050 3900
F 0 "Q2" V 6299 3900 50  0000 C CNN
F 1 "2N7000" V 6390 3900 50  0000 C CNN
F 2 "BE_Transistors:TO92-3_Formed_Leads" H 6250 3825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 6050 3900 50  0001 L CNN
	1    6050 3900
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5EC5DFCD
P 1350 7500
F 0 "J1" H 1400 7725 50  0000 R CNN
F 1 "BATT" H 1400 7625 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-2" H 1350 7500 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 1350 7500 50  0001 C CNN
	1    1350 7500
	-1   0    0    -1  
$EndComp
Text Notes 1250 7375 2    50   ~ 0
Tp 9VDC Battery\nCompartment
Text Notes 1275 7525 2    50   ~ 0
(+)
Text Notes 1275 7625 2    50   ~ 0
(-)
Wire Wire Line
	1550 6900 1800 6900
Wire Wire Line
	1800 7500 1550 7500
$Comp
L power:GND #PWR0101
U 1 1 5F43A5B8
P 2350 7700
F 0 "#PWR0101" H 2350 7450 50  0001 C CNN
F 1 "GND" H 2355 7527 50  0000 C CNN
F 2 "" H 2350 7700 50  0001 C CNN
F 3 "" H 2350 7700 50  0001 C CNN
	1    2350 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7600 2350 7700
Wire Wire Line
	1800 6900 1800 7500
$Comp
L power:+9V #PWR0102
U 1 1 5F43F416
P 2350 6750
F 0 "#PWR0102" H 2350 6600 50  0001 C CNN
F 1 "+9V" H 2365 6923 50  0000 C CNN
F 2 "" H 2350 6750 50  0001 C CNN
F 3 "" H 2350 6750 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP0
U 1 1 5F43AE29
P 2350 7500
F 0 "TP0" V 2300 7725 50  0000 R CNN
F 1 "20AWG Bar 700mil" V 2400 8300 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Bar_20AWG_L700mil" H 2350 7500 50  0001 C CNN
F 3 "" H 2350 7500 50  0001 C CNN
	1    2350 7500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5F441091
P 9350 4750
F 0 "J6" H 9400 5075 50  0000 R CNN
F 1 "PHONES" H 9400 4975 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-3" H 9350 4750 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 9350 4750 50  0001 C CNN
	1    9350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F448CB4
P 1650 7050
F 0 "#PWR0103" H 1650 6800 50  0001 C CNN
F 1 "GND" H 1655 6877 50  0000 C CNN
F 2 "" H 1650 7050 50  0001 C CNN
F 3 "" H 1650 7050 50  0001 C CNN
	1    1650 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 7000 1650 7000
Wire Wire Line
	1650 7000 1650 7050
Connection ~ 2350 7600
Wire Wire Line
	2350 6750 2350 6800
Connection ~ 2350 6800
$Comp
L power:GND #PWR0104
U 1 1 5F455294
P 9150 4850
F 0 "#PWR0104" H 9150 4600 50  0001 C CNN
F 1 "GND" H 9155 4677 50  0000 C CNN
F 2 "" H 9150 4850 50  0001 C CNN
F 3 "" H 9150 4850 50  0001 C CNN
	1    9150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4750 8950 4750
Wire Wire Line
	8950 5350 9150 5350
Wire Wire Line
	8950 4750 8950 5350
$Comp
L power:GND #PWR0105
U 1 1 5F456FBC
P 9150 5450
F 0 "#PWR0105" H 9150 5200 50  0001 C CNN
F 1 "GND" H 9155 5277 50  0000 C CNN
F 2 "" H 9150 5450 50  0001 C CNN
F 3 "" H 9150 5450 50  0001 C CNN
	1    9150 5450
	1    0    0    -1  
$EndComp
Text Notes 9450 5225 0    50   ~ 0
To 8 Ohm Speaker
$Comp
L power:+9V #PWR0106
U 1 1 5F464238
P 1400 1100
F 0 "#PWR0106" H 1400 950 50  0001 C CNN
F 1 "+9V" H 1400 1250 50  0000 C CNN
F 2 "" H 1400 1100 50  0001 C CNN
F 3 "" H 1400 1100 50  0001 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F464717
P 1400 1450
F 0 "R1" H 1550 1400 50  0000 R CNN
F 1 "100k" H 1650 1500 50  0000 R CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 1440 1440 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 1400 1450 50  0001 C CNN
	1    1400 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F465934
P 1050 3600
F 0 "R2" V 1250 3550 50  0000 L CNN
F 1 "33k" V 1150 3600 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 1090 3590 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 1050 3600 50  0001 C CNN
	1    1050 3600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F46953E
P 1200 2900
F 0 "J3" H 1150 3125 50  0000 L CNN
F 1 "PITCH" H 1150 3025 50  0000 L CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-2" H 1200 2900 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 1200 2900 50  0001 C CNN
	1    1200 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F469FA8
P 1400 2100
F 0 "#PWR0107" H 1400 1850 50  0001 C CNN
F 1 "GND" H 1405 1927 50  0000 C CNN
F 2 "" H 1400 2100 50  0001 C CNN
F 3 "" H 1400 2100 50  0001 C CNN
	1    1400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F46A3F0
P 1400 3000
F 0 "#PWR0108" H 1400 2750 50  0001 C CNN
F 1 "GND" H 1405 2827 50  0000 C CNN
F 2 "" H 1400 3000 50  0001 C CNN
F 3 "" H 1400 3000 50  0001 C CNN
	1    1400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F46C4B7
P 1850 1200
F 0 "#PWR0109" H 1850 950 50  0001 C CNN
F 1 "GND" H 1855 1027 50  0000 C CNN
F 2 "" H 1850 1200 50  0001 C CNN
F 3 "" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1100 1400 1200
Wire Wire Line
	1550 1200 1400 1200
Connection ~ 1400 1200
Wire Wire Line
	1400 1200 1400 1300
Wire Wire Line
	1400 1700 1400 1650
Text Notes 1125 2925 2    50   ~ 0
CW
Text Notes 1125 3200 2    50   ~ 0
Wiper\n+CCW\n+Shield
Wire Wire Line
	1400 2900 1400 2550
Connection ~ 1400 2550
Wire Wire Line
	1100 1900 775  1900
Wire Wire Line
	775  1900 775  2550
Wire Wire Line
	1400 1650 2025 1650
Wire Wire Line
	2025 1650 2025 2550
Connection ~ 1400 1650
Wire Wire Line
	1400 1650 1400 1600
$Comp
L Device:R_US R3
U 1 1 5F4766D6
P 1750 3600
F 0 "R3" V 1950 3550 50  0000 L CNN
F 1 "33k" V 1850 3600 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 1790 3590 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 1750 3600 50  0001 C CNN
	1    1750 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	775  3600 900  3600
Connection ~ 775  2550
Wire Wire Line
	1200 3600 1400 3600
Connection ~ 2025 2550
Wire Wire Line
	1900 3600 2025 3600
Wire Wire Line
	1100 4000 1400 4000
Wire Wire Line
	1100 4300 1400 4300
Connection ~ 1400 4000
Wire Wire Line
	1400 4000 1700 4000
Connection ~ 1400 3600
Wire Wire Line
	1400 3600 1600 3600
$Comp
L power:GND #PWR0110
U 1 1 5F481EEA
P 1400 4300
F 0 "#PWR0110" H 1400 4050 50  0001 C CNN
F 1 "GND" H 1405 4127 50  0000 C CNN
F 2 "" H 1400 4300 50  0001 C CNN
F 3 "" H 1400 4300 50  0001 C CNN
	1    1400 4300
	1    0    0    -1  
$EndComp
Connection ~ 1400 4300
Wire Wire Line
	1400 4300 1700 4300
Text Notes 1450 3050 0    50   ~ 0
To Panel Mnt.\n10k Rev. LOG\nPotentiometer\n(RV2)
$Comp
L Device:R_US R5
U 1 1 5F487C77
P 3850 3900
F 0 "R5" V 4050 3850 50  0000 L CNN
F 1 "4k7" V 3950 3900 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 3890 3890 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 3850 3900 50  0001 C CNN
	1    3850 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 5F488623
P 4150 3900
F 0 "RV1" V 4475 3900 50  0000 C CNN
F 1 "10k" V 4375 3900 50  0000 C CNN
F 2 "BE_TrimPot:Bourns_3329S_Vertical" H 4150 3900 50  0001 C CNN
F 3 "https://www.bourns.com/pdfs/3329.pdf" H 4150 3900 50  0001 C CNN
	1    4150 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 3750 4300 3750
Wire Wire Line
	4300 3750 4300 3900
$Comp
L Device:R_US R7
U 1 1 5F491DC2
P 4500 4925
F 0 "R7" V 4700 4875 50  0000 L CNN
F 1 "10k" V 4600 4925 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 4540 4915 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 4500 4925 50  0001 C CNN
	1    4500 4925
	0    -1   -1   0   
$EndComp
$Comp
L power:+9V #PWR0111
U 1 1 5F494014
P 3950 4925
F 0 "#PWR0111" H 3950 4775 50  0001 C CNN
F 1 "+9V" H 3965 5098 50  0000 C CNN
F 2 "" H 3950 4925 50  0001 C CNN
F 3 "" H 3950 4925 50  0001 C CNN
	1    3950 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F494A17
P 4750 4925
F 0 "#PWR0112" H 4750 4675 50  0001 C CNN
F 1 "GND" H 4755 4752 50  0000 C CNN
F 2 "" H 4750 4925 50  0001 C CNN
F 3 "" H 4750 4925 50  0001 C CNN
	1    4750 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4925 4750 4925
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5F496D91
P 4700 3150
F 0 "J4" V 4750 2975 50  0000 R CNN
F 1 "VOLUME" V 4650 2975 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-3" H 4700 3150 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 4700 3150 50  0001 C CNN
	1    4700 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F49C573
P 5100 4000
F 0 "R8" V 5300 3950 50  0000 L CNN
F 1 "100R" V 5200 4000 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 5140 3990 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 5100 4000 50  0001 C CNN
	1    5100 4000
	0    -1   -1   0   
$EndComp
Connection ~ 4350 4925
$Comp
L Device:R_US R6
U 1 1 5F4917D9
P 4200 4925
F 0 "R6" V 4400 4875 50  0000 L CNN
F 1 "10k" V 4300 4925 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 4240 4915 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 4200 4925 50  0001 C CNN
	1    4200 4925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 4925 4050 4925
Wire Wire Line
	4350 3900 4300 3900
Connection ~ 4300 3900
$Comp
L power:GND #PWR0113
U 1 1 5F4B288B
P 6400 4000
F 0 "#PWR0113" H 6400 3750 50  0001 C CNN
F 1 "GND" H 6405 3827 50  0000 C CNN
F 2 "" H 6400 4000 50  0001 C CNN
F 3 "" H 6400 4000 50  0001 C CNN
	1    6400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F4B2D47
P 6200 3200
F 0 "R10" V 6400 3200 50  0000 C CNN
F 1 "3k3" V 6300 3200 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 6240 3190 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 6200 3200 50  0001 C CNN
	1    6200 3200
	0    -1   -1   0   
$EndComp
Text Notes 4900 3000 0    50   ~ 0
To Panel-Mount \n10k Potentiometer\n(RV3)
$Comp
L power:+9V #PWR0114
U 1 1 5F4B4902
P 6050 2550
F 0 "#PWR0114" H 6050 2400 50  0001 C CNN
F 1 "+9V" H 6065 2723 50  0000 C CNN
F 2 "" H 6050 2550 50  0001 C CNN
F 3 "" H 6050 2550 50  0001 C CNN
	1    6050 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5F4B51B1
P 6550 3200
F 0 "J5" H 6600 3425 50  0000 R CNN
F 1 "KEY" H 6600 3325 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-2" H 6550 3200 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F4B5D0B
P 6350 3300
F 0 "#PWR0115" H 6350 3050 50  0001 C CNN
F 1 "GND" H 6355 3127 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
Text Notes 6650 3100 0    50   ~ 0
To\nMorse\nKey
Wire Wire Line
	6400 3700 6050 3700
Wire Wire Line
	6050 3700 6050 3500
Connection ~ 6050 3700
Connection ~ 6050 3200
Wire Wire Line
	6050 3200 6050 2850
Wire Wire Line
	6250 4000 6400 4000
$Comp
L BE_Analog:BE_LM386 U2
U 1 1 5F4C7222
P 7750 4650
F 0 "U2" H 7550 5050 50  0000 R CNN
F 1 "LM386" H 7550 4950 50  0000 R CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 7750 4650 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm386.pdf" H 7750 4650 50  0001 C CNN
	1    7750 4650
	1    0    0    -1  
$EndComp
NoConn ~ 7750 4350
NoConn ~ 7850 4350
$Comp
L power:GND #PWR0116
U 1 1 5F4CF6C0
P 8100 4200
F 0 "#PWR0116" H 8100 3950 50  0001 C CNN
F 1 "GND" H 8105 4027 50  0000 C CNN
F 2 "" H 8100 4200 50  0001 C CNN
F 3 "" H 8100 4200 50  0001 C CNN
	1    8100 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0117
U 1 1 5F4CFBBF
P 7550 3950
F 0 "#PWR0117" H 7550 3800 50  0001 C CNN
F 1 "+9V" H 7565 4123 50  0000 C CNN
F 2 "" H 7550 3950 50  0001 C CNN
F 3 "" H 7550 3950 50  0001 C CNN
	1    7550 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F4DF8E7
P 7650 5250
F 0 "#PWR0118" H 7650 5000 50  0001 C CNN
F 1 "GND" H 7655 5077 50  0000 C CNN
F 2 "" H 7650 5250 50  0001 C CNN
F 3 "" H 7650 5250 50  0001 C CNN
	1    7650 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5F4E0319
P 7850 4200
F 0 "C13" V 7750 4200 50  0000 R CNN
F 1 "100n" V 7750 4225 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_MLCC_95milx150mil_P100mil" H 7850 4200 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 7850 4200 50  0001 C CNN
	1    7850 4200
	0    1    1    0   
$EndComp
$Comp
L Device:CP1_Small C12
U 1 1 5F4E193B
P 7850 3950
F 0 "C12" V 7950 4100 50  0000 R CNN
F 1 "220u" V 7950 3725 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Round_D6.3mm_H11.2mm_P2.5mm" H 7850 3950 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1259.pdf" H 7850 3950 50  0001 C CNN
	1    7850 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3950 7650 3950
Wire Wire Line
	7650 4350 7650 4200
Connection ~ 7650 3950
Connection ~ 7650 4200
Wire Wire Line
	7650 4200 7650 3950
Wire Wire Line
	7950 3950 8100 3950
Wire Wire Line
	8100 3950 8100 4200
Wire Wire Line
	8100 4200 7950 4200
Connection ~ 8100 4200
$Comp
L Device:C_Small C11
U 1 1 5F4F1AC1
P 7100 4900
F 0 "C11" H 6875 4850 50  0000 L CNN
F 1 "47p" H 6875 4950 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Dipped_W4.0mm_T2.6mm_H5.6mm_P2.5mm" H 7100 4900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/427/Sprague%201C-3C%20MLC%20leaded%20capacitors%202000-1211470.pdf" H 7100 4900 50  0001 C CNN
	1    7100 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 4550 7100 4550
Wire Wire Line
	7100 4550 7100 4800
$Comp
L Device:C_Small C15
U 1 1 5F500527
P 8200 4800
F 0 "C15" H 7975 4750 50  0000 L CNN
F 1 "100n" H 7925 4850 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 8200 4800 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 8200 4800 50  0001 C CNN
	1    8200 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5F500BE8
P 8200 5050
F 0 "R11" H 8268 5096 50  0000 L CNN
F 1 "10R" H 8268 5005 50  0000 L CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 8240 5040 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 8200 5050 50  0001 C CNN
	1    8200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4950 7650 5250
Wire Wire Line
	7650 5250 7800 5250
Wire Wire Line
	7800 5250 7800 5150
Connection ~ 7650 5250
Wire Wire Line
	7800 5250 8200 5250
Wire Wire Line
	8200 5250 8200 5200
Connection ~ 7800 5250
Wire Wire Line
	7650 5250 7450 5250
Wire Wire Line
	7100 5250 7100 5000
Wire Wire Line
	8050 4650 8200 4650
Wire Wire Line
	8200 4650 8200 4700
$Comp
L Device:C_Small C16
U 1 1 5F509B13
P 8550 4650
F 0 "C16" V 8450 4825 50  0000 R CNN
F 1 "220u" V 8450 4425 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Round-NP_D10.0mm_H12.5mm_P5.0mm" H 8550 4650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1053.pdf" H 8550 4650 50  0001 C CNN
	1    8550 4650
	0    -1   1    0   
$EndComp
Text Notes 8300 4500 0    50   ~ 0
NP Electrolytic
Wire Wire Line
	8450 4650 8200 4650
Connection ~ 8200 4650
Text Notes 7175 5075 0    50   ~ 0
COG
Text Notes 8500 4875 0    50   ~ 0
Poly.
Text Notes 1175 4275 0    50   ~ 0
Poly.
Text Notes 1775 4275 0    50   ~ 0
Poly.
$Comp
L Device:CP1_Small C10
U 1 1 5F51420D
P 6400 3850
F 0 "C10" H 6475 3900 50  0000 L CNN
F 1 "4u7" H 6475 3800 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Round_D3.0mm_P2.54mm" H 6400 3850 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uma.pdf" H 6400 3850 50  0001 C CNN
	1    6400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3700 6400 3750
Wire Wire Line
	6400 3950 6400 4000
Connection ~ 6400 4000
$Comp
L Device:C_Small C9
U 1 1 5F519F6A
P 5350 4000
F 0 "C9" V 5125 4000 50  0000 C CNN
F 1 "15n" V 5225 4000 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 5350 4000 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 5350 4000 50  0001 C CNN
	1    5350 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F524F5B
P 1100 4150
F 0 "C4" H 925 4050 50  0000 L CNN
F 1 "10n" H 875 4150 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1100 4150 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1100 4150 50  0001 C CNN
	1    1100 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F52575D
P 1050 2550
F 0 "C2" V 750 2550 50  0000 C CNN
F 1 "10n" V 850 2550 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1050 2550 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1050 2550 50  0001 C CNN
	1    1050 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F5260DB
P 1700 4150
F 0 "C5" H 1525 4050 50  0000 L CNN
F 1 "10n" H 1475 4150 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1700 4150 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1700 4150 50  0001 C CNN
	1    1700 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 4050 1100 4000
Wire Wire Line
	1100 4250 1100 4300
Wire Wire Line
	1700 4300 1700 4250
Wire Wire Line
	1700 4050 1700 4000
$Comp
L Device:C_Small C3
U 1 1 5F52EAAC
P 1750 2550
F 0 "C3" V 1450 2550 50  0000 C CNN
F 1 "10n" V 1550 2550 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1750 2550 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1750 2550 50  0001 C CNN
	1    1750 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2550 2025 2550
Wire Wire Line
	1400 2550 1650 2550
Wire Wire Line
	1150 2550 1400 2550
Wire Wire Line
	775  2550 950  2550
Text Notes 975  2475 0    50   ~ 0
Poly.
Text Notes 1675 2475 0    50   ~ 0
Poly.
$Comp
L Device:CP1_Small C1
U 1 1 5F538475
P 1650 1200
F 0 "C1" V 1875 1200 50  0000 C CNN
F 1 "220u" V 1775 1200 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Round_D6.3mm_H11.2mm_P2.5mm" H 1650 1200 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1259.pdf" H 1650 1200 50  0001 C CNN
	1    1650 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 1200 1850 1200
Wire Wire Line
	5450 4000 5550 4000
Text Notes 9425 5475 0    50   ~ 0
(Not Polarity\nSensitive)
Text Notes 6300 6700 0    80   ~ 0
Based upon the circuit designed by Michael A. Maynard (K4ICY).\nhttp://k4icy.com/weekend_radio_3tr-audio-amp.html
Text Notes 4625 3075 1    50   ~ 0
Wiper+CW
Text Notes 4725 3075 1    50   ~ 0
CCW
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP3
U 1 1 5F575262
P 5550 5050
F 0 "TP3" V 5600 5275 50  0000 R CNN
F 1 "20AWG Loop" V 5500 5600 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 5550 5050 50  0001 C CNN
F 3 "" H 5550 5050 50  0001 C CNN
	1    5550 5050
	0    -1   -1   0   
$EndComp
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP4
U 1 1 5F5758FC
P 8950 4075
F 0 "TP4" V 8900 4300 50  0000 R CNN
F 1 "20AWG Loop" V 9000 4625 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 8950 4075 50  0001 C CNN
F 3 "" H 8950 4075 50  0001 C CNN
	1    8950 4075
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 4750 7450 5250
Connection ~ 7450 5250
Wire Wire Line
	7450 5250 7100 5250
Wire Wire Line
	7650 4200 7750 4200
Wire Wire Line
	7650 3950 7750 3950
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP5
U 1 1 5F44A19C
P 2350 6900
F 0 "TP5" V 2400 6675 50  0000 L CNN
F 1 "20AWG Loop" V 2300 6350 50  0000 L CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 2350 6900 50  0001 C CNN
F 3 "" H 2350 6900 50  0001 C CNN
	1    2350 6900
	0    -1   -1   0   
$EndComp
Text Notes 4275 3500 2    50   ~ 0
(Gain)
Text Notes 4050 3925 3    50   ~ 0
(CW)
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP1
U 1 1 5F575EF5
P 3000 3300
F 0 "TP1" V 2950 3525 50  0000 R CNN
F 1 "20AWG Loop" V 3050 3850 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 3000 3300 50  0001 C CNN
F 3 "" H 3000 3300 50  0001 C CNN
	1    3000 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3400 3000 3900
Wire Wire Line
	3000 4750 3150 4750
Wire Wire Line
	3150 4750 3150 4800
Wire Wire Line
	2600 4750 2600 4850
Connection ~ 2600 4750
Wire Wire Line
	2800 4750 2600 4750
Wire Wire Line
	2600 4650 2600 4750
$Comp
L power:GND #PWR0121
U 1 1 5F55BA3F
P 3150 4800
F 0 "#PWR0121" H 3150 4550 50  0001 C CNN
F 1 "GND" H 3155 4627 50  0000 C CNN
F 2 "" H 3150 4800 50  0001 C CNN
F 3 "" H 3150 4800 50  0001 C CNN
	1    3150 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F55B30C
P 2900 4750
F 0 "C6" V 2675 4750 50  0000 C CNN
F 1 "100n" V 2775 4750 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_MLCC_95milx150mil_P100mil" H 2900 4750 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 2900 4750 50  0001 C CNN
	1    2900 4750
	0    1    1    0   
$EndComp
$Comp
L power:+9V #PWR0120
U 1 1 5F55AAA5
P 2600 4650
F 0 "#PWR0120" H 2600 4500 50  0001 C CNN
F 1 "+9V" H 2615 4823 50  0000 C CNN
F 2 "" H 2600 4650 50  0001 C CNN
F 3 "" H 2600 4650 50  0001 C CNN
	1    2600 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F55A5CD
P 2600 5450
F 0 "#PWR0119" H 2600 5200 50  0001 C CNN
F 1 "GND" H 2605 5277 50  0000 C CNN
F 2 "" H 2600 5450 50  0001 C CNN
F 3 "" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F51F020
P 3400 3900
F 0 "C7" V 3175 3900 50  0000 C CNN
F 1 "47n" V 3275 3900 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 3400 3900 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 3400 3900 50  0001 C CNN
	1    3400 3900
	0    1    1    0   
$EndComp
Connection ~ 3000 3900
$Comp
L Device:R_US R4
U 1 1 5F486BCF
P 3150 3900
F 0 "R4" V 3350 3850 50  0000 L CNN
F 1 "49R9" V 3250 3900 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 3190 3890 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 3150 3900 50  0001 C CNN
	1    3150 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 4200 3000 3900
Wire Wire Line
	2400 4200 3000 4200
Wire Wire Line
	2400 4000 2400 4200
$Comp
L Amplifier_Operational:TLC272 U1
U 3 1 5F431B43
P 2700 5150
F 0 "U1" H 2658 5196 50  0000 L CNN
F 1 "TLV272" H 2658 5105 50  0000 L CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 2700 5150 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv272.pdf" H 2700 5150 50  0001 C CNN
	3    2700 5150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TLC272 U1
U 1 1 5F42D0D4
P 2700 3900
F 0 "U1" H 2650 3900 50  0000 C CNN
F 1 "TLV272" H 2650 4150 50  0000 C CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 2700 3900 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv272.pdf" H 2700 3900 50  0001 C CNN
	1    2700 3900
	1    0    0    -1  
$EndComp
Wire Notes Line
	7000 5750 7000 3650
Wire Notes Line
	10350 3650 10350 5750
Wire Notes Line
	5750 4350 5750 2250
Wire Notes Line
	5750 2250 6900 2250
Wire Notes Line
	6900 2250 6900 4350
Wire Notes Line
	6900 4350 5750 4350
Wire Notes Line
	2250 5750 2250 3050
Wire Notes Line
	3550 3050 3550 5750
Wire Notes Line
	10350 3650 7000 3650
Wire Notes Line
	7000 5750 10350 5750
Wire Notes Line
	3550 3050 2250 3050
Wire Notes Line
	2250 5750 3550 5750
Wire Wire Line
	5550 4000 5850 4000
Connection ~ 5550 4000
Wire Wire Line
	5550 4000 5550 4550
Wire Wire Line
	7100 4550 5550 4550
Connection ~ 7100 4550
Connection ~ 5550 4550
Wire Wire Line
	5550 4550 5550 4950
Text Notes 1050 700  0    60   ~ 0
Twin-T Oscillator
Text Notes 2600 2950 0    60   ~ 0
Analog Buffer
Text Notes 4450 2475 0    60   ~ 0
Gain Block
Text Notes 8350 3550 0    60   ~ 0
Audio Amplifier
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F4E02DC
P 2050 7600
F 0 "#FLG0101" H 2050 7675 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 7773 50  0000 C CNN
F 2 "" H 2050 7600 50  0001 C CNN
F 3 "~" H 2050 7600 50  0001 C CNN
	1    2050 7600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F4DEAD4
P 2050 6800
F 0 "#FLG0102" H 2050 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 6973 50  0000 C CNN
F 2 "" H 2050 6800 50  0001 C CNN
F 3 "~" H 2050 6800 50  0001 C CNN
	1    2050 6800
	1    0    0    -1  
$EndComp
Connection ~ 2050 6800
Wire Wire Line
	2050 6800 2350 6800
Connection ~ 2050 7600
Wire Wire Line
	2050 7600 2350 7600
Wire Wire Line
	1550 7600 2050 7600
Wire Wire Line
	1550 6800 2050 6800
Wire Notes Line
	3650 2625 5650 2625
Wire Notes Line
	3650 5250 5650 5250
Wire Wire Line
	3700 3900 3500 3900
$Comp
L Device:CP1_Small C14
U 1 1 5F45C022
P 7800 5050
F 0 "C14" H 7875 5100 50  0000 L CNN
F 1 "10u" H 7875 5000 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Round_D4.0mm_H5.0mm_P2.54mm" H 7800 5050 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uma.pdf" H 7800 5050 50  0001 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4650 8950 4650
Wire Wire Line
	8950 4175 8950 4650
Connection ~ 8950 4650
Wire Wire Line
	8950 4650 9150 4650
Text Notes 6625 3225 0    50   ~ 0
Tip
Text Notes 6625 3325 0    50   ~ 0
Ring
Text Notes 4825 3075 1    50   ~ 0
(Shield)
$Comp
L power:GND #PWR0122
U 1 1 5F4749C3
P 4800 3350
F 0 "#PWR0122" H 4800 3100 50  0001 C CNN
F 1 "GND" H 4805 3177 50  0000 C CNN
F 2 "" H 4800 3350 50  0001 C CNN
F 3 "" H 4800 3350 50  0001 C CNN
	1    4800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3350 4600 3650
Wire Wire Line
	4350 3650 4350 3900
Connection ~ 4350 3900
Wire Wire Line
	4700 3350 4700 3650
Wire Wire Line
	4950 3650 4950 4000
Connection ~ 4950 4000
Wire Wire Line
	4700 3650 4950 3650
Wire Wire Line
	4350 3650 4600 3650
Text Notes 9600 3950 0    50   ~ 0
Star-ground this\ncircuit section at\nU2 Pin 4
Wire Wire Line
	775  2550 775  3600
Wire Wire Line
	2025 2550 2025 3600
Wire Wire Line
	1400 3600 1400 3800
Wire Notes Line
	675  825  2125 825 
Wire Notes Line
	2125 825  2125 4600
Wire Notes Line
	675  825  675  4600
Wire Notes Line
	675  4600 2125 4600
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP2
U 1 1 5F4EE718
P 5950 3500
F 0 "TP2" H 6025 3625 50  0000 R CNN
F 1 "20AWG Loop" V 5825 3725 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 5950 3500 50  0001 C CNN
F 3 "" H 5950 3500 50  0001 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
Connection ~ 6050 3500
Wire Wire Line
	6050 3500 6050 3200
Wire Wire Line
	1400 3800 2400 3800
Connection ~ 1400 3800
Wire Wire Line
	1400 3800 1400 4000
Text Notes 5850 2150 0    60   ~ 0
Keying and Envelope
Wire Wire Line
	4350 4100 4350 4550
$Comp
L Device:C_Small C8
U 1 1 5F57D7C1
P 4500 4550
F 0 "C8" V 4271 4550 50  0000 C CNN
F 1 "100n" V 4362 4550 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_MLCC_95milx150mil_P100mil" H 4500 4550 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 4500 4550 50  0001 C CNN
	1    4500 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4550 4350 4550
Connection ~ 4350 4550
Wire Wire Line
	4350 4550 4350 4925
$Comp
L power:GND #PWR0123
U 1 1 5F581989
P 4750 4550
F 0 "#PWR0123" H 4750 4300 50  0001 C CNN
F 1 "GND" H 4755 4377 50  0000 C CNN
F 2 "" H 4750 4550 50  0001 C CNN
F 3 "" H 4750 4550 50  0001 C CNN
	1    4750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4550 4750 4550
Wire Notes Line
	5650 5250 5650 2625
Wire Notes Line
	3650 5250 3650 2625
$EndSCHEMATC
