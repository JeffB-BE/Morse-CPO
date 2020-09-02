EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Twin-T Morse Code Practice Oscillator"
Date "2020-09-01"
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
P 1225 1900
F 0 "Q1" H 1415 1946 50  0000 L CNN
F 1 "PN2222A" H 1415 1855 50  0000 L CNN
F 2 "BE_Transistors:TO92-3_Formed_Leads" H 1425 1825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1225 1900 50  0001 L CNN
	1    1225 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5EC48B9E
P 6025 2700
F 0 "R9" H 6093 2746 50  0000 L CNN
F 1 "24k9" H 6093 2655 50  0000 L CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 6065 2690 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 6025 2700 50  0001 C CNN
	1    6025 2700
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
P 4600 4000
F 0 "U1" H 4550 4000 50  0000 C CNN
F 1 "TLV272" H 4550 3750 50  0000 C CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 4600 4000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv272.pdf" H 4600 4000 50  0001 C CNN
	2    4600 4000
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5F43519C
P 6025 3900
F 0 "Q2" V 6274 3900 50  0000 C CNN
F 1 "2N7000" V 6365 3900 50  0000 C CNN
F 2 "BE_Transistors:TO92-3_Formed_Leads" H 6225 3825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 6025 3900 50  0001 L CNN
	1    6025 3900
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
P 1325 1100
F 0 "#PWR0106" H 1325 950 50  0001 C CNN
F 1 "+9V" H 1325 1250 50  0000 C CNN
F 2 "" H 1325 1100 50  0001 C CNN
F 3 "" H 1325 1100 50  0001 C CNN
	1    1325 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F464717
P 1325 1450
F 0 "R1" H 1475 1400 50  0000 R CNN
F 1 "100k" H 1575 1500 50  0000 R CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 1365 1440 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 1325 1450 50  0001 C CNN
	1    1325 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F465934
P 975 3600
F 0 "R2" V 1175 3550 50  0000 L CNN
F 1 "33k" V 1075 3600 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 1015 3590 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 975 3600 50  0001 C CNN
	1    975  3600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F46953E
P 1125 2900
F 0 "J3" H 1075 3125 50  0000 L CNN
F 1 "PITCH" H 1075 3025 50  0000 L CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-2" H 1125 2900 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 1125 2900 50  0001 C CNN
	1    1125 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F469FA8
P 1325 2100
F 0 "#PWR0107" H 1325 1850 50  0001 C CNN
F 1 "GND" H 1330 1927 50  0000 C CNN
F 2 "" H 1325 2100 50  0001 C CNN
F 3 "" H 1325 2100 50  0001 C CNN
	1    1325 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F46A3F0
P 1325 3000
F 0 "#PWR0108" H 1325 2750 50  0001 C CNN
F 1 "GND" H 1330 2827 50  0000 C CNN
F 2 "" H 1325 3000 50  0001 C CNN
F 3 "" H 1325 3000 50  0001 C CNN
	1    1325 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F46C4B7
P 1775 1200
F 0 "#PWR0109" H 1775 950 50  0001 C CNN
F 1 "GND" H 1780 1027 50  0000 C CNN
F 2 "" H 1775 1200 50  0001 C CNN
F 3 "" H 1775 1200 50  0001 C CNN
	1    1775 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 1100 1325 1200
Wire Wire Line
	1475 1200 1325 1200
Connection ~ 1325 1200
Wire Wire Line
	1325 1200 1325 1300
Wire Wire Line
	1325 1700 1325 1650
Text Notes 1050 2925 2    50   ~ 0
CW
Text Notes 1050 3200 2    50   ~ 0
Wiper\n+CCW\n+Shield
Wire Wire Line
	1325 2900 1325 2550
Connection ~ 1325 2550
Wire Wire Line
	1025 1900 700  1900
Wire Wire Line
	700  1900 700  2550
Wire Wire Line
	1325 1650 1950 1650
Wire Wire Line
	1950 1650 1950 2550
Connection ~ 1325 1650
Wire Wire Line
	1325 1650 1325 1600
$Comp
L Device:R_US R3
U 1 1 5F4766D6
P 1675 3600
F 0 "R3" V 1875 3550 50  0000 L CNN
F 1 "33k" V 1775 3600 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 1715 3590 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 1675 3600 50  0001 C CNN
	1    1675 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  3600 825  3600
Connection ~ 700  2550
Wire Wire Line
	1125 3600 1325 3600
Connection ~ 1950 2550
Wire Wire Line
	1825 3600 1950 3600
Wire Wire Line
	1025 4000 1325 4000
Wire Wire Line
	1025 4300 1325 4300
Connection ~ 1325 4000
Wire Wire Line
	1325 4000 1625 4000
Connection ~ 1325 3600
Wire Wire Line
	1325 3600 1525 3600
$Comp
L power:GND #PWR0110
U 1 1 5F481EEA
P 1325 4300
F 0 "#PWR0110" H 1325 4050 50  0001 C CNN
F 1 "GND" H 1330 4127 50  0000 C CNN
F 2 "" H 1325 4300 50  0001 C CNN
F 3 "" H 1325 4300 50  0001 C CNN
	1    1325 4300
	1    0    0    -1  
$EndComp
Connection ~ 1325 4300
Wire Wire Line
	1325 4300 1625 4300
Text Notes 1375 3050 0    50   ~ 0
To Panel Mnt.\n10k Rev. LOG\nPotentiometer\n(RV2)
$Comp
L Device:R_US R5
U 1 1 5F487C77
P 3800 3900
F 0 "R5" V 4000 3850 50  0000 L CNN
F 1 "4k7" V 3900 3900 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 3840 3890 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 3800 3900 50  0001 C CNN
	1    3800 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 5F488623
P 4100 3900
F 0 "RV1" V 4425 3900 50  0000 C CNN
F 1 "10k" V 4325 3900 50  0000 C CNN
F 2 "BE_TrimPot:Bourns_3329S_Vertical" H 4100 3900 50  0001 C CNN
F 3 "https://www.bourns.com/pdfs/3329.pdf" H 4100 3900 50  0001 C CNN
	1    4100 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	4100 3750 4250 3750
Wire Wire Line
	4250 3750 4250 3900
$Comp
L Device:R_US R7
U 1 1 5F491DC2
P 4450 4925
F 0 "R7" V 4650 4875 50  0000 L CNN
F 1 "10k" V 4550 4925 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 4490 4915 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 4450 4925 50  0001 C CNN
	1    4450 4925
	0    -1   -1   0   
$EndComp
$Comp
L power:+9V #PWR0111
U 1 1 5F494014
P 3900 4925
F 0 "#PWR0111" H 3900 4775 50  0001 C CNN
F 1 "+9V" H 3915 5098 50  0000 C CNN
F 2 "" H 3900 4925 50  0001 C CNN
F 3 "" H 3900 4925 50  0001 C CNN
	1    3900 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F494A17
P 4700 4925
F 0 "#PWR0112" H 4700 4675 50  0001 C CNN
F 1 "GND" H 4705 4752 50  0000 C CNN
F 2 "" H 4700 4925 50  0001 C CNN
F 3 "" H 4700 4925 50  0001 C CNN
	1    4700 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4925 4700 4925
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5F496D91
P 4650 3150
F 0 "J4" V 4700 2975 50  0000 R CNN
F 1 "VOLUME" V 4600 2975 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-3" H 4650 3150 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 4650 3150 50  0001 C CNN
	1    4650 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F49C573
P 5050 4000
F 0 "R8" V 5250 3950 50  0000 L CNN
F 1 "100R" V 5150 4000 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 5090 3990 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 5050 4000 50  0001 C CNN
	1    5050 4000
	0    -1   -1   0   
$EndComp
Connection ~ 4300 4925
$Comp
L Device:R_US R6
U 1 1 5F4917D9
P 4150 4925
F 0 "R6" V 4350 4875 50  0000 L CNN
F 1 "10k" V 4250 4925 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 4190 4915 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 4150 4925 50  0001 C CNN
	1    4150 4925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 4925 4000 4925
Wire Wire Line
	4300 3900 4250 3900
Connection ~ 4250 3900
$Comp
L power:GND #PWR0113
U 1 1 5F4B288B
P 6375 4000
F 0 "#PWR0113" H 6375 3750 50  0001 C CNN
F 1 "GND" H 6380 3827 50  0000 C CNN
F 2 "" H 6375 4000 50  0001 C CNN
F 3 "" H 6375 4000 50  0001 C CNN
	1    6375 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F4B2D47
P 6175 3200
F 0 "R10" V 6375 3200 50  0000 C CNN
F 1 "3k3" V 6275 3200 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 6215 3190 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 6175 3200 50  0001 C CNN
	1    6175 3200
	0    -1   -1   0   
$EndComp
Text Notes 4850 3000 0    50   ~ 0
To Panel-Mount \n10k Potentiometer\n(RV3)
$Comp
L power:+9V #PWR0114
U 1 1 5F4B4902
P 6025 2550
F 0 "#PWR0114" H 6025 2400 50  0001 C CNN
F 1 "+9V" H 6040 2723 50  0000 C CNN
F 2 "" H 6025 2550 50  0001 C CNN
F 3 "" H 6025 2550 50  0001 C CNN
	1    6025 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5F4B51B1
P 6525 3200
F 0 "J5" H 6575 3425 50  0000 R CNN
F 1 "KEY" H 6575 3325 50  0000 R CNN
F 2 "BE_Conn:BE_Conn_HDR_SIP-2" H 6525 3200 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022284364_sd.pdf" H 6525 3200 50  0001 C CNN
	1    6525 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F4B5D0B
P 6325 3300
F 0 "#PWR0115" H 6325 3050 50  0001 C CNN
F 1 "GND" H 6330 3127 50  0000 C CNN
F 2 "" H 6325 3300 50  0001 C CNN
F 3 "" H 6325 3300 50  0001 C CNN
	1    6325 3300
	1    0    0    -1  
$EndComp
Text Notes 6625 3100 0    50   ~ 0
To\nMorse\nKey
Wire Wire Line
	6375 3700 6025 3700
Wire Wire Line
	6025 3700 6025 3500
Connection ~ 6025 3700
Connection ~ 6025 3200
Wire Wire Line
	6025 3200 6025 2850
Wire Wire Line
	6225 4000 6375 4000
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
Text Notes 1100 4275 0    50   ~ 0
Poly.
Text Notes 1700 4275 0    50   ~ 0
Poly.
$Comp
L Device:CP1_Small C10
U 1 1 5F51420D
P 6375 3850
F 0 "C10" H 6450 3900 50  0000 L CNN
F 1 "4u7" H 6450 3800 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Round_D3.0mm_P2.54mm" H 6375 3850 50  0001 C CNN
F 3 "https://www.nichicon.co.jp/english/products/pdfs/e-uma.pdf" H 6375 3850 50  0001 C CNN
	1    6375 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6375 3700 6375 3750
Wire Wire Line
	6375 3950 6375 4000
Connection ~ 6375 4000
$Comp
L Device:C_Small C9
U 1 1 5F519F6A
P 5300 4000
F 0 "C9" V 5075 4000 50  0000 C CNN
F 1 "15n" V 5175 4000 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 5300 4000 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 5300 4000 50  0001 C CNN
	1    5300 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F524F5B
P 1025 4150
F 0 "C4" H 850 4050 50  0000 L CNN
F 1 "10n" H 800 4150 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1025 4150 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1025 4150 50  0001 C CNN
	1    1025 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F52575D
P 975 2550
F 0 "C2" V 675 2550 50  0000 C CNN
F 1 "10n" V 775 2550 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 975 2550 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 975 2550 50  0001 C CNN
	1    975  2550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F5260DB
P 1625 4150
F 0 "C5" H 1450 4050 50  0000 L CNN
F 1 "10n" H 1400 4150 50  0000 L CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1625 4150 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1625 4150 50  0001 C CNN
	1    1625 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1025 4050 1025 4000
Wire Wire Line
	1025 4250 1025 4300
Wire Wire Line
	1625 4300 1625 4250
Wire Wire Line
	1625 4050 1625 4000
$Comp
L Device:C_Small C3
U 1 1 5F52EAAC
P 1675 2550
F 0 "C3" V 1375 2550 50  0000 C CNN
F 1 "10n" V 1475 2550 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 1675 2550 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 1675 2550 50  0001 C CNN
	1    1675 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	1775 2550 1950 2550
Wire Wire Line
	1325 2550 1575 2550
Wire Wire Line
	1075 2550 1325 2550
Wire Wire Line
	700  2550 875  2550
Text Notes 900  2475 0    50   ~ 0
Poly.
Text Notes 1600 2475 0    50   ~ 0
Poly.
$Comp
L Device:CP1_Small C1
U 1 1 5F538475
P 1575 1200
F 0 "C1" V 1800 1200 50  0000 C CNN
F 1 "220u" V 1700 1200 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Round_D6.3mm_H11.2mm_P2.5mm" H 1575 1200 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1259.pdf" H 1575 1200 50  0001 C CNN
	1    1575 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1675 1200 1775 1200
Wire Wire Line
	5400 4000 5500 4000
Text Notes 9425 5475 0    50   ~ 0
(Not Polarity\nSensitive)
Text Notes 6300 6700 0    80   ~ 0
Based upon the circuit designed by Michael A. Maynard (K4ICY).\nhttp://k4icy.com/weekend_radio_3tr-audio-amp.html
Text Notes 4575 3075 1    50   ~ 0
Wiper+CW
Text Notes 4675 3075 1    50   ~ 0
CCW
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP3
U 1 1 5F575262
P 5500 5050
F 0 "TP3" V 5550 5275 50  0000 R CNN
F 1 "20AWG Loop" V 5450 5600 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 5500 5050 50  0001 C CNN
F 3 "" H 5500 5050 50  0001 C CNN
	1    5500 5050
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
Text Notes 4225 3500 2    50   ~ 0
(Gain)
Text Notes 4000 3925 3    50   ~ 0
(CW)
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP1
U 1 1 5F575EF5
P 2925 3300
F 0 "TP1" V 2875 3525 50  0000 R CNN
F 1 "20AWG Loop" V 2975 3850 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 2925 3300 50  0001 C CNN
F 3 "" H 2925 3300 50  0001 C CNN
	1    2925 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2925 3400 2925 3900
Wire Wire Line
	2925 4750 3075 4750
Wire Wire Line
	3075 4750 3075 4800
Wire Wire Line
	2525 4750 2525 4850
Connection ~ 2525 4750
Wire Wire Line
	2725 4750 2525 4750
Wire Wire Line
	2525 4650 2525 4750
$Comp
L power:GND #PWR0121
U 1 1 5F55BA3F
P 3075 4800
F 0 "#PWR0121" H 3075 4550 50  0001 C CNN
F 1 "GND" H 3080 4627 50  0000 C CNN
F 2 "" H 3075 4800 50  0001 C CNN
F 3 "" H 3075 4800 50  0001 C CNN
	1    3075 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F55B30C
P 2825 4750
F 0 "C6" V 2600 4750 50  0000 C CNN
F 1 "100n" V 2700 4750 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_MLCC_95milx150mil_P100mil" H 2825 4750 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 2825 4750 50  0001 C CNN
	1    2825 4750
	0    1    1    0   
$EndComp
$Comp
L power:+9V #PWR0120
U 1 1 5F55AAA5
P 2525 4650
F 0 "#PWR0120" H 2525 4500 50  0001 C CNN
F 1 "+9V" H 2540 4823 50  0000 C CNN
F 2 "" H 2525 4650 50  0001 C CNN
F 3 "" H 2525 4650 50  0001 C CNN
	1    2525 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F55A5CD
P 2525 5450
F 0 "#PWR0119" H 2525 5200 50  0001 C CNN
F 1 "GND" H 2530 5277 50  0000 C CNN
F 2 "" H 2525 5450 50  0001 C CNN
F 3 "" H 2525 5450 50  0001 C CNN
	1    2525 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F51F020
P 3325 3900
F 0 "C7" V 3100 3900 50  0000 C CNN
F 1 "47n" V 3200 3900 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_Rect-Film_W7.2mm_T2.5mm_H6.5mm_P5.0mm" H 3325 3900 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/F3294_MMK.pdf" H 3325 3900 50  0001 C CNN
	1    3325 3900
	0    1    1    0   
$EndComp
Connection ~ 2925 3900
$Comp
L Device:R_US R4
U 1 1 5F486BCF
P 3075 3900
F 0 "R4" V 3275 3850 50  0000 L CNN
F 1 "49R9" V 3175 3900 50  0000 C CNN
F 2 "BE_Resistors:BE_Resistor_THT_Axial_.100x.400" V 3115 3890 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_MFR_1.pdf" H 3075 3900 50  0001 C CNN
	1    3075 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2925 4200 2925 3900
Wire Wire Line
	2325 4200 2925 4200
Wire Wire Line
	2325 4000 2325 4200
$Comp
L Amplifier_Operational:TLC272 U1
U 3 1 5F431B43
P 2625 5150
F 0 "U1" H 2583 5196 50  0000 L CNN
F 1 "TLV272" H 2583 5105 50  0000 L CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 2625 5150 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv272.pdf" H 2625 5150 50  0001 C CNN
	3    2625 5150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TLC272 U1
U 1 1 5F42D0D4
P 2625 3900
F 0 "U1" H 2575 3900 50  0000 C CNN
F 1 "TLV272" H 2575 4150 50  0000 C CNN
F 2 "BE_Sockets:BE_DIP-8_Socket" H 2625 3900 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv272.pdf" H 2625 3900 50  0001 C CNN
	1    2625 3900
	1    0    0    -1  
$EndComp
Wire Notes Line
	7000 5750 7000 3650
Wire Notes Line
	10350 3650 10350 5750
Wire Notes Line
	5725 2250 6875 2250
Wire Notes Line
	6875 2250 6875 4350
Wire Notes Line
	6875 4350 5725 4350
Wire Notes Line
	2175 5750 2175 3050
Wire Notes Line
	3500 3050 3500 5750
Wire Notes Line
	10350 3650 7000 3650
Wire Notes Line
	7000 5750 10350 5750
Connection ~ 7100 4550
Text Notes 975  700  0    60   ~ 0
Twin-T Oscillator
Text Notes 2525 2950 0    60   ~ 0
Analog Buffer
Text Notes 4400 2475 0    60   ~ 0
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
Text Notes 6600 3225 0    50   ~ 0
Tip
Text Notes 6600 3325 0    50   ~ 0
Ring
Text Notes 4775 3075 1    50   ~ 0
(Shield)
$Comp
L power:GND #PWR0122
U 1 1 5F4749C3
P 4750 3350
F 0 "#PWR0122" H 4750 3100 50  0001 C CNN
F 1 "GND" H 4755 3177 50  0000 C CNN
F 2 "" H 4750 3350 50  0001 C CNN
F 3 "" H 4750 3350 50  0001 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3350 4550 3650
Wire Wire Line
	4300 3650 4300 3900
Connection ~ 4300 3900
Wire Wire Line
	4650 3350 4650 3650
Wire Wire Line
	4900 3650 4900 4000
Connection ~ 4900 4000
Wire Wire Line
	4650 3650 4900 3650
Wire Wire Line
	4300 3650 4550 3650
Text Notes 9600 3950 0    50   ~ 0
Star-ground this\ncircuit section at\nU2 Pin 4
Wire Wire Line
	700  2550 700  3600
Wire Wire Line
	1950 2550 1950 3600
Wire Wire Line
	1325 3600 1325 3800
Wire Notes Line
	600  825  2050 825 
Wire Notes Line
	2050 825  2050 4600
Wire Notes Line
	600  825  600  4600
Wire Notes Line
	600  4600 2050 4600
$Comp
L BE_Conn:BE_TP-Loop_20AWG_D200MIL TP2
U 1 1 5F4EE718
P 5925 3500
F 0 "TP2" H 6000 3625 50  0000 R CNN
F 1 "20AWG Loop" V 5800 3725 50  0000 R CNN
F 2 "BE_Conn:BE_TP-Loop_20AWG_D200MIL" H 5925 3500 50  0001 C CNN
F 3 "" H 5925 3500 50  0001 C CNN
	1    5925 3500
	1    0    0    -1  
$EndComp
Connection ~ 6025 3500
Wire Wire Line
	6025 3500 6025 3200
Wire Wire Line
	1300 3800 1325 3800
Connection ~ 1325 3800
Wire Wire Line
	1325 3800 1325 4000
Text Notes 5825 2150 0    60   ~ 0
Keying and Envelope
Wire Wire Line
	4300 4100 4300 4550
$Comp
L Device:C_Small C8
U 1 1 5F57D7C1
P 4450 4550
F 0 "C8" V 4221 4550 50  0000 C CNN
F 1 "100n" V 4312 4550 50  0000 C CNN
F 2 "BE_Capacitors:BE_Cap_MLCC_95milx150mil_P100mil" H 4450 4550 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 4450 4550 50  0001 C CNN
	1    4450 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4550 4300 4550
Connection ~ 4300 4550
Wire Wire Line
	4300 4550 4300 4925
$Comp
L power:GND #PWR0123
U 1 1 5F581989
P 4700 4550
F 0 "#PWR0123" H 4700 4300 50  0001 C CNN
F 1 "GND" H 4705 4377 50  0000 C CNN
F 2 "" H 4700 4550 50  0001 C CNN
F 3 "" H 4700 4550 50  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4550 4700 4550
Wire Notes Line
	5600 5250 5600 2625
Wire Notes Line
	3625 5250 3625 2625
Text Notes 2800 2125 0    50   ~ 0
Set at test (SAT). May need to be anywhere from\n0 Ohms to several k Ohms to achieve maximum\nclean LM386 output power, depending upon the\nactual values of RV1 and RV3.
Wire Notes Line style solid
	3800 3600 3800 2150
Wire Notes Line style solid
	2800 2150 4675 2150
Text Label 1575 3800 0    50   ~ 0
Twin-T_Out
Text Label 6100 4550 0    50   ~ 0
LM386_In
Text Label 8950 4325 0    50   ~ 0
LM386_Out
Text Label 2925 3500 2    50   ~ 0
Buffered_Osc_Out
Text Label 6025 3625 0    50   ~ 0
Envelope_Gate
Wire Notes Line
	5725 4350 5725 2250
Wire Wire Line
	5500 4000 5500 4550
Wire Wire Line
	5500 4550 7100 4550
Connection ~ 5500 4550
Wire Wire Line
	5500 4550 5500 4950
Wire Wire Line
	5500 4000 5825 4000
Connection ~ 5500 4000
Wire Notes Line
	5600 5250 3625 5250
Wire Notes Line
	3625 2625 5600 2625
Wire Notes Line style solid
	3800 3600 3825 3525
Wire Notes Line style solid
	3825 3525 3775 3525
Wire Notes Line style solid
	3775 3525 3800 3600
Wire Wire Line
	3425 3900 3650 3900
Wire Wire Line
	1325 3800 2325 3800
Wire Notes Line
	2175 3050 3500 3050
Wire Notes Line
	2175 5750 3500 5750
$EndSCHEMATC
