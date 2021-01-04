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
L Connector_Generic:Conn_02x13_Odd_Even J1
U 1 1 5EB058BA
P 2900 2700
F 0 "J1" H 2950 3517 50  0000 C CNN
F 1 "Conn_02x13_Odd_Even" H 2950 3426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x13_P2.54mm_Vertical" H 2900 2700 50  0001 C CNN
F 3 "~" H 2900 2700 50  0001 C CNN
	1    2900 2700
	1    0    0    -1  
$EndComp
Text GLabel 3200 2900 2    39   Input ~ 0
nRF_IRQ
Text GLabel 3200 2800 2    39   Input ~ 0
RFM_IRQ
Text GLabel 2700 3000 0    39   Input ~ 0
MOSI
Text GLabel 2700 3100 0    39   Input ~ 0
MISO
Text GLabel 2700 3200 0    39   Input ~ 0
SCK
Text GLabel 3200 3200 2    39   Input ~ 0
nRF_CSN
Text GLabel 3200 3300 2    39   Input ~ 0
RFM_NSS
$Comp
L RF:NRF24L01_Breakout U1
U 1 1 5EB08085
P 4600 1900
F 0 "U1" H 4980 1946 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 4980 1855 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 4750 2500 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 4600 1800 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:RFM69W U2
U 1 1 5EB08B88
P 4600 3850
F 0 "U2" H 4600 4531 50  0000 C CNN
F 1 "RFM69W" H 4600 4440 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM69HW" H 4600 3250 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbe34756e1.pdf" H 4600 3550 50  0001 C CNN
	1    4600 3850
	1    0    0    -1  
$EndComp
Text GLabel 5100 3650 2    39   Input ~ 0
RFM_IRQ
Text GLabel 4100 3750 0    39   Input ~ 0
MOSI
Text GLabel 4100 3650 0    39   Input ~ 0
MISO
Text GLabel 4100 3550 0    39   Input ~ 0
SCK
Text GLabel 4100 3850 0    39   Input ~ 0
RFM_NSS
Text GLabel 4100 1600 0    39   Input ~ 0
MOSI
Text GLabel 4100 1700 0    39   Input ~ 0
MISO
Text GLabel 4100 1800 0    39   Input ~ 0
SCK
Text GLabel 4100 1900 0    39   Input ~ 0
nRF_CSN
Text GLabel 4100 2200 0    39   Input ~ 0
nRF_IRQ
Text GLabel 3200 3100 2    39   Input ~ 0
nRF_CE
Text GLabel 4100 2100 0    39   Input ~ 0
nRF_CE
$Comp
L power:+3.3V #PWR0101
U 1 1 5EB0A403
P 4600 1150
F 0 "#PWR0101" H 4600 1000 50  0001 C CNN
F 1 "+3.3V" H 4615 1323 50  0000 C CNN
F 2 "" H 4600 1150 50  0001 C CNN
F 3 "" H 4600 1150 50  0001 C CNN
	1    4600 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5EB0ABF5
P 4850 3350
F 0 "#PWR0102" H 4850 3200 50  0001 C CNN
F 1 "+3.3V" H 4865 3523 50  0000 C CNN
F 2 "" H 4850 3350 50  0001 C CNN
F 3 "" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EB0BE84
P 4600 2600
F 0 "#PWR0103" H 4600 2350 50  0001 C CNN
F 1 "GND" H 4605 2427 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EB0C1E3
P 4700 4450
F 0 "#PWR0104" H 4700 4200 50  0001 C CNN
F 1 "GND" H 4705 4277 50  0000 C CNN
F 2 "" H 4700 4450 50  0001 C CNN
F 3 "" H 4700 4450 50  0001 C CNN
	1    4700 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5EB0D096
P 5650 3600
F 0 "C2" H 5768 3646 50  0000 L CNN
F 1 "CP" H 5768 3555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 5688 3450 50  0001 C CNN
F 3 "~" H 5650 3600 50  0001 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2500 4600 2600
Wire Wire Line
	4600 3350 4850 3350
Wire Wire Line
	4850 3350 5650 3350
Wire Wire Line
	5650 3350 5650 3450
Connection ~ 4850 3350
Wire Wire Line
	5650 3750 5650 4350
Wire Wire Line
	4700 4450 4700 4350
Connection ~ 4700 4350
$Comp
L power:+3.3V #PWR0105
U 1 1 5EB0E47B
P 2700 2100
F 0 "#PWR0105" H 2700 1950 50  0001 C CNN
F 1 "+3.3V" V 2715 2228 50  0000 L CNN
F 2 "" H 2700 2100 50  0001 C CNN
F 3 "" H 2700 2100 50  0001 C CNN
	1    2700 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EB0EEC5
P 2700 3300
F 0 "#PWR0106" H 2700 3050 50  0001 C CNN
F 1 "GND" V 2705 3172 50  0000 R CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0001 C CNN
	1    2700 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EB0FCAF
P 3200 3000
F 0 "#PWR0107" H 3200 2750 50  0001 C CNN
F 1 "GND" V 3205 2872 50  0000 R CNN
F 2 "" H 3200 3000 50  0001 C CNN
F 3 "" H 3200 3000 50  0001 C CNN
	1    3200 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EB10499
P 3200 2300
F 0 "#PWR0108" H 3200 2050 50  0001 C CNN
F 1 "GND" V 3205 2172 50  0000 R CNN
F 2 "" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
	1    3200 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EB10CEF
P 2700 2500
F 0 "#PWR0109" H 2700 2250 50  0001 C CNN
F 1 "GND" V 2705 2372 50  0000 R CNN
F 2 "" H 2700 2500 50  0001 C CNN
F 3 "" H 2700 2500 50  0001 C CNN
	1    2700 2500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5EB1233A
P 2700 2900
F 0 "#PWR0110" H 2700 2750 50  0001 C CNN
F 1 "+3.3V" V 2715 3028 50  0000 L CNN
F 2 "" H 2700 2900 50  0001 C CNN
F 3 "" H 2700 2900 50  0001 C CNN
	1    2700 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5EB12F8E
P 2900 4100
F 0 "J2" H 3008 4381 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3008 4290 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x03_P1.00mm_Vertical_SMD_Pin1Left" H 2900 4100 50  0001 C CNN
F 3 "~" H 2900 4100 50  0001 C CNN
	1    2900 4100
	1    0    0    -1  
$EndComp
$Comp
L PiGate-rescue:Ai-Thinker-Ra-01-RF_Module U3
U 1 1 5EB1E225
P 6800 3900
F 0 "U3" H 6800 4881 50  0000 C CNN
F 1 "Ai-Thinker-Ra-01" H 6800 4790 50  0000 C CNN
F 2 "RF_Module:Ai-Thinker-Ra-01-LoRa" H 7800 3500 50  0001 C CNN
F 3 "https://mikroelectron.com/Product/10KM-433M-LORA-LONG-RANGE-WIRELESS-MODULE-RA-01" H 6900 4600 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
Text GLabel 6300 4100 0    39   Input ~ 0
MOSI
Text GLabel 6300 4000 0    39   Input ~ 0
MISO
Text GLabel 6300 3900 0    39   Input ~ 0
SCK
Text GLabel 6300 3800 0    39   Input ~ 0
RFM_NSS
Text GLabel 7300 3500 2    39   Input ~ 0
RFM_IRQ
Wire Wire Line
	5650 3350 6050 3350
Wire Wire Line
	6050 3350 6050 3100
Wire Wire Line
	6050 3100 6800 3100
Connection ~ 5650 3350
Wire Wire Line
	6800 4600 5650 4600
Wire Wire Line
	5650 4600 5650 4350
Connection ~ 5650 4350
Wire Wire Line
	5650 4350 4700 4350
Wire Wire Line
	4600 1150 4600 1300
Text GLabel 6300 3600 0    39   Input ~ 0
RFM_RST
Text GLabel 4100 4050 0    39   Input ~ 0
RFM_RST
Text GLabel 3100 4100 2    39   Input ~ 0
RFM_RST
Text GLabel 2700 2400 0    39   Input ~ 0
pin7_gpio4
Text GLabel 3100 4000 2    39   Input ~ 0
pin7_gpio4
$Comp
L power:GND #PWR?
U 1 1 5FF3A668
P 3100 4200
F 0 "#PWR?" H 3100 3950 50  0001 C CNN
F 1 "GND" H 3105 4027 50  0000 C CNN
F 2 "" H 3100 4200 50  0001 C CNN
F 3 "" H 3100 4200 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
