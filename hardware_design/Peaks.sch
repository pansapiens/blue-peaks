EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Blue Peaks"
Date "2021-04-04"
Rev "2"
Comp ""
Comment1 "Rearranged for less depth by Andrew Perry"
Comment2 "Converted to Blue Pill single-sided + PWM by Matias Levy"
Comment3 "Adapted from origial design be Emilie Gillet"
Comment4 ""
$EndDescr
$Comp
L bluepill_breakouts:BluePill_STM32F103C U2
U 1 1 6023F1D9
P 1950 2800
F 0 "U2" H 1975 1327 50  0000 C CNN
F 1 "Bluepill" H 1975 1236 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 2000 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1950 1300 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 60240F49
P 1000 7150
F 0 "J3" H 1050 6500 50  0000 C CNN
F 1 "Eurorack Power" H 1050 6600 50  0000 C CNN
F 2 "Personal:IDC-Header_2x05_P2.54mm_Vertical_Large_Pads" H 1000 7150 50  0001 C CNN
F 3 "~" H 1000 7150 50  0001 C CNN
	1    1000 7150
	1    0    0    1   
$EndComp
$Comp
L power:-12V #PWR0101
U 1 1 6024232E
P 2000 7350
F 0 "#PWR0101" H 2000 7450 50  0001 C CNN
F 1 "-12V" H 2015 7523 50  0000 C CNN
F 2 "" H 2000 7350 50  0001 C CNN
F 3 "" H 2000 7350 50  0001 C CNN
	1    2000 7350
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N5817 D9
U 1 1 60242E43
P 1700 7350
F 0 "D9" H 1700 7567 50  0000 C CNN
F 1 "1N5817" H 1700 7476 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1700 7175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1700 7350 50  0001 C CNN
	1    1700 7350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5817 D8
U 1 1 602449D9
P 1700 6950
F 0 "D8" H 1700 6733 50  0000 C CNN
F 1 "1N5817" H 1700 6824 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1700 6775 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1700 6950 50  0001 C CNN
	1    1700 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  6950 800  6800
Wire Wire Line
	800  6800 1300 6800
Wire Wire Line
	1300 6800 1300 6950
Wire Wire Line
	1300 6950 1550 6950
Connection ~ 1300 6950
Wire Wire Line
	800  7350 800  7450
Wire Wire Line
	800  7450 1300 7450
Wire Wire Line
	1300 7450 1300 7350
Wire Wire Line
	1300 7350 1550 7350
Connection ~ 1300 7350
Wire Wire Line
	1850 7350 2000 7350
$Comp
L power:+12V #PWR0102
U 1 1 60245F6F
P 2000 6950
F 0 "#PWR0102" H 2000 6800 50  0001 C CNN
F 1 "+12V" H 2015 7123 50  0000 C CNN
F 2 "" H 2000 6950 50  0001 C CNN
F 3 "" H 2000 6950 50  0001 C CNN
	1    2000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6950 1850 6950
Wire Wire Line
	1300 7050 1300 7150
Connection ~ 1300 7150
Wire Wire Line
	1300 7150 1300 7250
Wire Wire Line
	800  7050 800  7150
Connection ~ 800  7150
Wire Wire Line
	800  7150 800  7250
$Comp
L power:GND #PWR0103
U 1 1 60246E0A
P 700 7150
F 0 "#PWR0103" H 700 6900 50  0001 C CNN
F 1 "GND" H 705 6977 50  0000 C CNN
F 2 "" H 700 7150 50  0001 C CNN
F 3 "" H 700 7150 50  0001 C CNN
	1    700  7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7150 1300 7150
Wire Wire Line
	700  7150 800  7150
$Comp
L power:GND #PWR0104
U 1 1 602479AF
P 1400 7150
F 0 "#PWR0104" H 1400 6900 50  0001 C CNN
F 1 "GND" H 1405 6977 50  0000 C CNN
F 2 "" H 1400 7150 50  0001 C CNN
F 3 "" H 1400 7150 50  0001 C CNN
	1    1400 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 6024D487
P 2400 6950
F 0 "C1" H 2518 6996 50  0000 L CNN
F 1 "10u" H 2518 6905 50  0000 L CNN
F 2 "Personal:CP_Radial_D5.0mm_P2.50mm_Large_Pads" H 2438 6800 50  0001 C CNN
F 3 "~" H 2400 6950 50  0001 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 6024D84F
P 2400 7350
F 0 "C2" H 2518 7396 50  0000 L CNN
F 1 "10u" H 2518 7305 50  0000 L CNN
F 2 "Personal:CP_Radial_D5.0mm_P2.50mm_Large_Pads" H 2438 7200 50  0001 C CNN
F 3 "~" H 2400 7350 50  0001 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6024DD2D
P 2150 7150
F 0 "#PWR0105" H 2150 6900 50  0001 C CNN
F 1 "GND" H 2155 6977 50  0000 C CNN
F 2 "" H 2150 7150 50  0001 C CNN
F 3 "" H 2150 7150 50  0001 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7150 2400 7150
Wire Wire Line
	2400 7150 2400 7100
Wire Wire Line
	2400 7150 2400 7200
Connection ~ 2400 7150
$Comp
L power:-12V #PWR0106
U 1 1 6024EBE2
P 2400 7500
F 0 "#PWR0106" H 2400 7600 50  0001 C CNN
F 1 "-12V" H 2415 7673 50  0000 C CNN
F 2 "" H 2400 7500 50  0001 C CNN
F 3 "" H 2400 7500 50  0001 C CNN
	1    2400 7500
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 6024EE4C
P 2400 6800
F 0 "#PWR0107" H 2400 6650 50  0001 C CNN
F 1 "+12V" H 2415 6973 50  0000 C CNN
F 2 "" H 2400 6800 50  0001 C CNN
F 3 "" H 2400 6800 50  0001 C CNN
	1    2400 6800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L05_TO92 U3
U 1 1 60250788
P 3300 7050
F 0 "U3" H 3300 7292 50  0000 C CNN
F 1 "78L05" H 3300 7201 50  0000 C CNN
F 2 "Personal:TO-92_Inline_Wide_Large_Pads" H 3300 7275 50  0001 C CIN
F 3 "" H 3300 7000 50  0001 C CNN
	1    3300 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60252D7C
P 3300 7500
F 0 "#PWR0108" H 3300 7250 50  0001 C CNN
F 1 "GND" H 3305 7327 50  0000 C CNN
F 2 "" H 3300 7500 50  0001 C CNN
F 3 "" H 3300 7500 50  0001 C CNN
	1    3300 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 602535DB
P 2850 7300
F 0 "C3" H 2968 7346 50  0000 L CNN
F 1 "0,33u" H 2968 7255 50  0000 L CNN
F 2 "Personal:CP_Radial_D5.0mm_P2.50mm_Large_Pads" H 2888 7150 50  0001 C CNN
F 3 "~" H 2850 7300 50  0001 C CNN
	1    2850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7150 2850 7050
Wire Wire Line
	2850 7050 3000 7050
Wire Wire Line
	2850 7450 3300 7450
Wire Wire Line
	3300 7500 3300 7450
Wire Wire Line
	3300 7350 3300 7450
Connection ~ 3300 7450
$Comp
L power:+12V #PWR0109
U 1 1 60254B80
P 2850 7000
F 0 "#PWR0109" H 2850 6850 50  0001 C CNN
F 1 "+12V" H 2865 7173 50  0000 C CNN
F 2 "" H 2850 7000 50  0001 C CNN
F 3 "" H 2850 7000 50  0001 C CNN
	1    2850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7000 2850 7050
Connection ~ 2850 7050
$Comp
L Device:C C4
U 1 1 60255435
P 3700 7300
F 0 "C4" H 3815 7346 50  0000 L CNN
F 1 "100n" H 3815 7255 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 3738 7150 50  0001 C CNN
F 3 "~" H 3700 7300 50  0001 C CNN
	1    3700 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7450 3700 7450
Wire Wire Line
	3600 7050 3700 7050
Wire Wire Line
	3700 7050 3700 7150
$Comp
L power:+5V #PWR0110
U 1 1 60257082
P 3700 7000
F 0 "#PWR0110" H 3700 6850 50  0001 C CNN
F 1 "+5V" H 3715 7173 50  0000 C CNN
F 2 "" H 3700 7000 50  0001 C CNN
F 3 "" H 3700 7000 50  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7000 3700 7050
Connection ~ 3700 7050
$Comp
L Device:R_POT RV1
U 1 1 6025BE3E
P 1050 5900
F 0 "RV1" H 980 5854 50  0000 R CNN
F 1 "B10k" H 980 5945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 1050 5900 50  0001 C CNN
F 3 "~" H 1050 5900 50  0001 C CNN
	1    1050 5900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6025E221
P 1050 6050
F 0 "#PWR0113" H 1050 5800 50  0001 C CNN
F 1 "GND" H 1055 5877 50  0000 C CNN
F 2 "" H 1050 6050 50  0001 C CNN
F 3 "" H 1050 6050 50  0001 C CNN
	1    1050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 6025F5AA
P 1750 5900
F 0 "RV2" H 1680 5854 50  0000 R CNN
F 1 "B10k" H 1680 5945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 1750 5900 50  0001 C CNN
F 3 "~" H 1750 5900 50  0001 C CNN
	1    1750 5900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6025F5B6
P 1750 6050
F 0 "#PWR0115" H 1750 5800 50  0001 C CNN
F 1 "GND" H 1755 5877 50  0000 C CNN
F 2 "" H 1750 6050 50  0001 C CNN
F 3 "" H 1750 6050 50  0001 C CNN
	1    1750 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 60264601
P 2450 5900
F 0 "RV3" H 2380 5854 50  0000 R CNN
F 1 "B10k" H 2380 5945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 2450 5900 50  0001 C CNN
F 3 "~" H 2450 5900 50  0001 C CNN
	1    2450 5900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 6026460D
P 2450 6050
F 0 "#PWR0117" H 2450 5800 50  0001 C CNN
F 1 "GND" H 2455 5877 50  0000 C CNN
F 2 "" H 2450 6050 50  0001 C CNN
F 3 "" H 2450 6050 50  0001 C CNN
	1    2450 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 60264613
P 3150 5900
F 0 "RV4" H 3080 5854 50  0000 R CNN
F 1 "B10k" H 3080 5945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 3150 5900 50  0001 C CNN
F 3 "~" H 3150 5900 50  0001 C CNN
	1    3150 5900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6026461F
P 3150 6050
F 0 "#PWR0119" H 3150 5800 50  0001 C CNN
F 1 "GND" H 3155 5877 50  0000 C CNN
F 2 "" H 3150 6050 50  0001 C CNN
F 3 "" H 3150 6050 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
Text Label 950  2800 2    50   ~ 0
POT_1
Wire Wire Line
	950  2800 1100 2800
Text Label 950  2700 2    50   ~ 0
POT_2
Wire Wire Line
	950  2700 1100 2700
Text Label 950  2600 2    50   ~ 0
POT_3
Wire Wire Line
	950  2600 1100 2600
Text Label 950  2500 2    50   ~ 0
POT_4
Wire Wire Line
	950  2500 1100 2500
Text Label 1250 5900 0    50   ~ 0
POT_1
Wire Wire Line
	1250 5900 1200 5900
Text Label 1950 5900 0    50   ~ 0
POT_2
Wire Wire Line
	1950 5900 1900 5900
Text Label 2650 5900 0    50   ~ 0
POT_3
Wire Wire Line
	2650 5900 2600 5900
Text Label 3350 5900 0    50   ~ 0
POT_4
Wire Wire Line
	3350 5900 3300 5900
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 6026B029
P 4400 5650
F 0 "J1" H 4400 6000 50  0000 C CNN
F 1 "in1" H 4400 5900 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 4400 5650 50  0001 C CNN
F 3 "~" H 4400 5650 50  0001 C CNN
	1    4400 5650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 6026BB46
P 5900 5650
F 0 "Q1" H 6090 5696 50  0000 L CNN
F 1 "2N3904" H 6090 5605 50  0000 L CNN
F 2 "Personal:TO-92_Inline_Wide_Large_Pads" H 6100 5575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5900 5650 50  0001 L CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6026C671
P 5550 5650
F 0 "R8" V 5650 5650 50  0000 C CNN
F 1 "100k" V 5550 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5480 5650 50  0001 C CNN
F 3 "~" H 5550 5650 50  0001 C CNN
	1    5550 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6026FAD6
P 6000 5850
F 0 "#PWR0122" H 6000 5600 50  0001 C CNN
F 1 "GND" H 6005 5677 50  0000 C CNN
F 2 "" H 6000 5850 50  0001 C CNN
F 3 "" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 602703F1
P 6000 5250
F 0 "R10" V 6100 5250 50  0000 C CNN
F 1 "10k" V 6000 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5930 5250 50  0001 C CNN
F 3 "~" H 6000 5250 50  0001 C CNN
	1    6000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5400 6000 5450
Text Label 6150 5400 0    50   ~ 0
TRIG_1
Wire Wire Line
	6150 5400 6000 5400
Connection ~ 6000 5400
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 6027C233
P 4600 7200
F 0 "J2" H 4600 7550 50  0000 C CNN
F 1 "in2" H 4600 7450 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 4600 7200 50  0001 C CNN
F 3 "~" H 4600 7200 50  0001 C CNN
	1    4600 7200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 6027C239
P 5900 7200
F 0 "Q2" H 6090 7246 50  0000 L CNN
F 1 "2N3904" H 6090 7155 50  0000 L CNN
F 2 "Personal:TO-92_Inline_Wide_Large_Pads" H 6100 7125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5900 7200 50  0001 L CNN
	1    5900 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6027C23F
P 5550 7200
F 0 "R9" V 5650 7200 50  0000 C CNN
F 1 "100k" V 5550 7200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5480 7200 50  0001 C CNN
F 3 "~" H 5550 7200 50  0001 C CNN
	1    5550 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 7200 4900 7200
Wire Wire Line
	4800 7300 4850 7300
Wire Wire Line
	4800 7000 4800 7100
$Comp
L power:GND #PWR0126
U 1 1 6027C254
P 6000 7400
F 0 "#PWR0126" H 6000 7150 50  0001 C CNN
F 1 "GND" H 6005 7227 50  0000 C CNN
F 2 "" H 6000 7400 50  0001 C CNN
F 3 "" H 6000 7400 50  0001 C CNN
	1    6000 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 6027C25A
P 6000 6800
F 0 "R11" V 6100 6800 50  0000 C CNN
F 1 "10k" V 6000 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5930 6800 50  0001 C CNN
F 3 "~" H 6000 6800 50  0001 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6950 6000 7000
Text Label 6150 6950 0    50   ~ 0
TRIG_2
Wire Wire Line
	6150 6950 6000 6950
Connection ~ 6000 6950
Text Label 1050 3600 2    50   ~ 0
TRIG_1
Wire Wire Line
	1050 3600 1100 3600
Text Label 2950 3200 0    50   ~ 0
TRIG_2
$Comp
L Switch:SW_Push SW1
U 1 1 6027EBFB
P 10700 2600
F 0 "SW1" H 10700 2885 50  0000 C CNN
F 1 "SW_Dual" H 10700 2794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 10700 2800 50  0001 C CNN
F 3 "~" H 10700 2800 50  0001 C CNN
	1    10700 2600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 602807E4
P 10700 3200
F 0 "SW2" H 10700 3485 50  0000 C CNN
F 1 "SW_Mode" H 10700 3394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 10700 3400 50  0001 C CNN
F 3 "~" H 10700 3400 50  0001 C CNN
	1    10700 3200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 60281D14
P 10700 3750
F 0 "SW3" H 10700 4035 50  0000 C CNN
F 1 "SW_TRIG1" H 10700 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 10700 3950 50  0001 C CNN
F 3 "~" H 10700 3950 50  0001 C CNN
	1    10700 3750
	1    0    0    -1  
$EndComp
Text Label 9850 2650 2    50   ~ 0
SW_DUAL
Text Label 9800 3200 2    50   ~ 0
SW_MODE
$Comp
L Switch:SW_Push SW4
U 1 1 60285E5C
P 10750 4350
F 0 "SW4" H 10750 4635 50  0000 C CNN
F 1 "SW_TRIG2" H 10750 4544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 10750 4550 50  0001 C CNN
F 3 "~" H 10750 4550 50  0001 C CNN
	1    10750 4350
	1    0    0    -1  
$EndComp
Text Label 9800 3750 2    50   ~ 0
SW_TRIG1
Text Label 9850 4350 2    50   ~ 0
SW_TRIG2
Text Label 1100 2200 2    50   ~ 0
SW_DUAL
Text Label 1100 2300 2    50   ~ 0
SW_MODE
Text Label 2900 3600 0    50   ~ 0
SW_TRIG1
Text Label 2900 2900 0    50   ~ 0
SW_TRIG2
$Comp
L power:GND #PWR0132
U 1 1 6028D473
P 1100 4100
F 0 "#PWR0132" H 1100 3850 50  0001 C CNN
F 1 "GND" H 1105 3927 50  0000 C CNN
F 2 "" H 1100 4100 50  0001 C CNN
F 3 "" H 1100 4100 50  0001 C CNN
	1    1100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4100 1100 4000
Connection ~ 1100 4000
Wire Wire Line
	1100 4000 1100 3900
$Comp
L power:GND #PWR0133
U 1 1 6028F1F3
P 3000 2200
F 0 "#PWR0133" H 3000 1950 50  0001 C CNN
F 1 "GND" V 3005 2072 50  0000 R CNN
F 2 "" H 3000 2200 50  0001 C CNN
F 3 "" H 3000 2200 50  0001 C CNN
	1    3000 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2200 3000 2200
$Comp
L power:+5V #PWR0134
U 1 1 60290934
P 3350 2300
F 0 "#PWR0134" H 3350 2150 50  0001 C CNN
F 1 "+5V" V 3365 2428 50  0000 L CNN
F 2 "" H 3350 2300 50  0001 C CNN
F 3 "" H 3350 2300 50  0001 C CNN
	1    3350 2300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60292979
P 7300 6050
F 0 "D1" V 7339 5932 50  0000 R CNN
F 1 "LED" V 7248 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7300 6050 50  0001 C CNN
F 3 "~" H 7300 6050 50  0001 C CNN
	1    7300 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 60293872
P 7850 6050
F 0 "D2" V 7889 5932 50  0000 R CNN
F 1 "LED" V 7798 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7850 6050 50  0001 C CNN
F 3 "~" H 7850 6050 50  0001 C CNN
	1    7850 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 60293DD7
P 8350 6050
F 0 "D3" V 8389 5932 50  0000 R CNN
F 1 "LED" V 8298 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8350 6050 50  0001 C CNN
F 3 "~" H 8350 6050 50  0001 C CNN
	1    8350 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 6029432E
P 8800 6050
F 0 "D4" V 8839 5932 50  0000 R CNN
F 1 "LED" V 8748 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8800 6050 50  0001 C CNN
F 3 "~" H 8800 6050 50  0001 C CNN
	1    8800 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 60294679
P 9250 6050
F 0 "D5" V 9289 5932 50  0000 R CNN
F 1 "LED" V 9198 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 9250 6050 50  0001 C CNN
F 3 "~" H 9250 6050 50  0001 C CNN
	1    9250 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 60294B28
P 7300 5100
F 0 "R18" H 7370 5146 50  0000 L CNN
F 1 "2k" H 7370 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7230 5100 50  0001 C CNN
F 3 "~" H 7300 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 60295251
P 7850 5100
F 0 "R21" H 7920 5146 50  0000 L CNN
F 1 "2k" H 7920 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7780 5100 50  0001 C CNN
F 3 "~" H 7850 5100 50  0001 C CNN
	1    7850 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 60295514
P 8350 5100
F 0 "R24" H 8420 5146 50  0000 L CNN
F 1 "2k" H 8420 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8280 5100 50  0001 C CNN
F 3 "~" H 8350 5100 50  0001 C CNN
	1    8350 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 6029575F
P 8800 5100
F 0 "R25" H 8870 5146 50  0000 L CNN
F 1 "2k" H 8870 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8730 5100 50  0001 C CNN
F 3 "~" H 8800 5100 50  0001 C CNN
	1    8800 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 60295A4B
P 9250 5100
F 0 "R26" H 9320 5146 50  0000 L CNN
F 1 "2k" H 9320 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 9180 5100 50  0001 C CNN
F 3 "~" H 9250 5100 50  0001 C CNN
	1    9250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 6200 7300 6300
Wire Wire Line
	7300 6300 7850 6300
Wire Wire Line
	9250 6300 9250 6200
Connection ~ 8350 6300
Wire Wire Line
	8350 6300 8800 6300
Wire Wire Line
	8800 6200 8800 6300
Connection ~ 8800 6300
Wire Wire Line
	8800 6300 9250 6300
Wire Wire Line
	8350 6200 8350 6300
Wire Wire Line
	7850 6200 7850 6300
Connection ~ 7850 6300
Wire Wire Line
	7850 6300 8350 6300
Text Label 7300 4950 0    50   ~ 0
LED1
Text Label 7850 4950 0    50   ~ 0
LED2
Text Label 8350 4950 0    50   ~ 0
LED3
Text Label 8800 4950 0    50   ~ 0
LED4
Text Label 9250 4950 0    50   ~ 0
LED5
Text Label 1100 3500 2    50   ~ 0
LED1
Text Label 1100 2900 2    50   ~ 0
LED2
Text Label 1100 3000 2    50   ~ 0
LED3
Text Label 1100 3100 2    50   ~ 0
LED4
Text Label 1100 3200 2    50   ~ 0
LED5
Text Label 10400 4950 0    50   ~ 0
LED_SALIDA_2
Text Label 1100 3300 2    50   ~ 0
LED_SALIDA_2
Text Label 1100 3400 2    50   ~ 0
LED_SALIDA_1
Text Label 9750 4950 0    50   ~ 0
LED_SALIDA_1
$Comp
L Device:R R27
U 1 1 602A6F47
P 9750 5100
F 0 "R27" H 9820 5146 50  0000 L CNN
F 1 "2k" H 9820 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 9680 5100 50  0001 C CNN
F 3 "~" H 9750 5100 50  0001 C CNN
	1    9750 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 602A73CE
P 9750 6050
F 0 "D6" V 9789 5932 50  0000 R CNN
F 1 "LED" V 9698 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 9750 6050 50  0001 C CNN
F 3 "~" H 9750 6050 50  0001 C CNN
	1    9750 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R28
U 1 1 602A9F02
P 10400 5100
F 0 "R28" H 10470 5146 50  0000 L CNN
F 1 "2k" H 10470 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 10330 5100 50  0001 C CNN
F 3 "~" H 10400 5100 50  0001 C CNN
	1    10400 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 602A9F08
P 10400 6050
F 0 "D7" V 10439 5932 50  0000 R CNN
F 1 "LED" V 10348 5932 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 10400 6050 50  0001 C CNN
F 3 "~" H 10400 6050 50  0001 C CNN
	1    10400 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 6300 9750 6300
Wire Wire Line
	10400 6300 10400 6200
Connection ~ 9250 6300
Wire Wire Line
	9750 6200 9750 6300
Connection ~ 9750 6300
Wire Wire Line
	9750 6300 10400 6300
Text Label 2900 2700 0    50   ~ 0
CH1_PWM1
Wire Wire Line
	2900 2700 2850 2700
Text Label 2900 2600 0    50   ~ 0
CH1_PWM2
Text Label 2900 2500 0    50   ~ 0
CH2_PWM1
Text Label 2900 2400 0    50   ~ 0
CH2_PWM2
Wire Wire Line
	2900 2400 2850 2400
Wire Wire Line
	2850 2500 2900 2500
Wire Wire Line
	2850 2600 2900 2600
Wire Wire Line
	2850 2300 3350 2300
Text Label 3850 1300 2    50   ~ 0
CH1_PWM1
$Comp
L Device:R R1
U 1 1 602BA8ED
P 4000 1300
F 0 "R1" V 3900 1300 50  0000 C CNN
F 1 "1k5" V 4000 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3930 1300 50  0001 C CNN
F 3 "~" H 4000 1300 50  0001 C CNN
	1    4000 1300
	0    1    1    0   
$EndComp
Text Label 3850 1550 2    50   ~ 0
CH1_PWM2
$Comp
L Device:R R2
U 1 1 602BB50A
P 4000 1550
F 0 "R2" V 3900 1550 50  0000 C CNN
F 1 "180k" V 4000 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3930 1550 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
	1    4000 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 602BB881
P 4300 1550
F 0 "R6" V 4200 1550 50  0000 C CNN
F 1 "12k" V 4300 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 4230 1550 50  0001 C CNN
F 3 "~" H 4300 1550 50  0001 C CNN
	1    4300 1550
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 602BBC36
P 4650 1700
F 0 "C6" H 4765 1746 50  0000 L CNN
F 1 "4.7n" H 4765 1655 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 4688 1550 50  0001 C CNN
F 3 "~" H 4650 1700 50  0001 C CNN
	1    4650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1550 4650 1550
Wire Wire Line
	4150 1300 4650 1300
Wire Wire Line
	4650 1300 4650 1550
Connection ~ 4650 1550
$Comp
L Device:R R12
U 1 1 602BFCB2
P 4950 1550
F 0 "R12" V 4850 1550 50  0000 C CNN
F 1 "1k5" V 4950 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4880 1550 50  0001 C CNN
F 3 "~" H 4950 1550 50  0001 C CNN
	1    4950 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 1550 4800 1550
$Comp
L Device:C C8
U 1 1 602C1D3E
P 5150 1700
F 0 "C8" H 5265 1746 50  0000 L CNN
F 1 "4.7n" H 5265 1655 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 5188 1550 50  0001 C CNN
F 3 "~" H 5150 1700 50  0001 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1550 5150 1550
$Comp
L power:GND #PWR0136
U 1 1 602C3D05
P 4650 1900
F 0 "#PWR0136" H 4650 1650 50  0001 C CNN
F 1 "GND" H 4655 1727 50  0000 C CNN
F 2 "" H 4650 1900 50  0001 C CNN
F 3 "" H 4650 1900 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1850 4650 1900
$Comp
L power:GND #PWR0137
U 1 1 602C5FD8
P 5150 1900
F 0 "#PWR0137" H 5150 1650 50  0001 C CNN
F 1 "GND" H 5155 1727 50  0000 C CNN
F 2 "" H 5150 1900 50  0001 C CNN
F 3 "" H 5150 1900 50  0001 C CNN
	1    5150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1850 5150 1900
Wire Wire Line
	5150 1550 5650 1550
Connection ~ 5150 1550
Wire Wire Line
	5650 1750 5650 1950
Wire Wire Line
	5650 1950 6250 1950
Wire Wire Line
	6250 1950 6250 1650
$Comp
L Device:R R15
U 1 1 602CE170
P 6450 1650
F 0 "R15" V 6350 1650 50  0000 C CNN
F 1 "6k8" V 6450 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6380 1650 50  0001 C CNN
F 3 "~" H 6450 1650 50  0001 C CNN
	1    6450 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 1650 6300 1650
$Comp
L Device:R R14
U 1 1 602D2757
P 6450 1400
F 0 "R14" V 6350 1400 50  0000 C CNN
F 1 "21k" V 6450 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6380 1400 50  0001 C CNN
F 3 "~" H 6450 1400 50  0001 C CNN
	1    6450 1400
	0    1    1    0   
$EndComp
Text Label 6300 1150 2    50   ~ 0
REF_-5V
Wire Wire Line
	6300 1150 6300 1400
Wire Wire Line
	6600 1650 6750 1650
Wire Wire Line
	6600 1400 6750 1400
Wire Wire Line
	6750 1400 6750 1650
Connection ~ 6750 1650
Wire Wire Line
	6750 1650 6900 1650
$Comp
L Device:R R19
U 1 1 602DA33E
P 7150 1200
F 0 "R19" V 7050 1200 50  0000 C CNN
F 1 "33k" V 7150 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 1200 50  0001 C CNN
F 3 "~" H 7150 1200 50  0001 C CNN
	1    7150 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1400 6750 1200
Wire Wire Line
	6750 1200 7000 1200
Connection ~ 6750 1400
Wire Wire Line
	7300 1200 7500 1200
Wire Wire Line
	7500 1200 7500 1750
$Comp
L power:GND #PWR0138
U 1 1 602DFDAE
P 6800 1900
F 0 "#PWR0138" H 6800 1650 50  0001 C CNN
F 1 "GND" H 6805 1727 50  0000 C CNN
F 2 "" H 6800 1900 50  0001 C CNN
F 3 "" H 6800 1900 50  0001 C CNN
	1    6800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1900 6800 1850
Wire Wire Line
	6800 1850 6900 1850
$Comp
L Device:R R22
U 1 1 602E2BEA
P 7700 1750
F 0 "R22" V 7600 1750 50  0000 C CNN
F 1 "1k" V 7700 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7630 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 1750 7550 1750
Connection ~ 7500 1750
Wire Wire Line
	8700 1750 8800 1750
$Comp
L Device:R R3
U 1 1 602F9778
P 4050 2600
F 0 "R3" V 3950 2600 50  0000 C CNN
F 1 "1k5" V 4050 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3980 2600 50  0001 C CNN
F 3 "~" H 4050 2600 50  0001 C CNN
	1    4050 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 602F977F
P 4050 2850
F 0 "R4" V 3950 2850 50  0000 C CNN
F 1 "180k" V 4050 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3980 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    4050 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 602F9785
P 4350 2850
F 0 "R7" V 4250 2850 50  0000 C CNN
F 1 "12k" V 4350 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4280 2850 50  0001 C CNN
F 3 "~" H 4350 2850 50  0001 C CNN
	1    4350 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 602F978B
P 4700 3000
F 0 "C7" H 4815 3046 50  0000 L CNN
F 1 "4.7n" H 4815 2955 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 4738 2850 50  0001 C CNN
F 3 "~" H 4700 3000 50  0001 C CNN
	1    4700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2850 4700 2850
Wire Wire Line
	4200 2600 4700 2600
Wire Wire Line
	4700 2600 4700 2850
Connection ~ 4700 2850
$Comp
L Device:R R13
U 1 1 602F9795
P 5000 2850
F 0 "R13" V 4900 2850 50  0000 C CNN
F 1 "1k5" V 5000 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4930 2850 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    5000 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2850 4850 2850
$Comp
L Device:C C9
U 1 1 602F979C
P 5200 3000
F 0 "C9" H 5315 3046 50  0000 L CNN
F 1 "4.7n" H 5315 2955 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 5238 2850 50  0001 C CNN
F 3 "~" H 5200 3000 50  0001 C CNN
	1    5200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2850 5200 2850
$Comp
L power:GND #PWR0140
U 1 1 602F97A3
P 4700 3200
F 0 "#PWR0140" H 4700 2950 50  0001 C CNN
F 1 "GND" H 4705 3027 50  0000 C CNN
F 2 "" H 4700 3200 50  0001 C CNN
F 3 "" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3150 4700 3200
$Comp
L power:GND #PWR0141
U 1 1 602F97AA
P 5200 3200
F 0 "#PWR0141" H 5200 2950 50  0001 C CNN
F 1 "GND" H 5205 3027 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3150 5200 3200
Wire Wire Line
	5200 2850 5700 2850
Connection ~ 5200 2850
Wire Wire Line
	5700 3050 5700 3250
Wire Wire Line
	5700 3250 6300 3250
Wire Wire Line
	6300 3250 6300 2950
$Comp
L Device:R R17
U 1 1 602F97BC
P 6500 2950
F 0 "R17" V 6400 2950 50  0000 C CNN
F 1 "6k8" V 6500 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6430 2950 50  0001 C CNN
F 3 "~" H 6500 2950 50  0001 C CNN
	1    6500 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2950 6350 2950
Connection ~ 6300 2950
$Comp
L Device:R R16
U 1 1 602F97CA
P 6500 2700
F 0 "R16" V 6400 2700 50  0000 C CNN
F 1 "21k" V 6500 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6430 2700 50  0001 C CNN
F 3 "~" H 6500 2700 50  0001 C CNN
	1    6500 2700
	0    1    1    0   
$EndComp
Text Label 6350 2450 2    50   ~ 0
REF_-5V
Wire Wire Line
	6350 2450 6350 2700
Wire Wire Line
	6650 2950 6800 2950
Wire Wire Line
	6650 2700 6800 2700
Wire Wire Line
	6800 2700 6800 2950
Connection ~ 6800 2950
Wire Wire Line
	6800 2950 6950 2950
$Comp
L Device:R R20
U 1 1 602F97D7
P 7200 2500
F 0 "R20" V 7100 2500 50  0000 C CNN
F 1 "33k" V 7200 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7130 2500 50  0001 C CNN
F 3 "~" H 7200 2500 50  0001 C CNN
	1    7200 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 2700 6800 2500
Wire Wire Line
	6800 2500 7050 2500
Connection ~ 6800 2700
Wire Wire Line
	7350 2500 7550 2500
Wire Wire Line
	7550 2500 7550 3050
$Comp
L power:GND #PWR0142
U 1 1 602F97E2
P 6850 3200
F 0 "#PWR0142" H 6850 2950 50  0001 C CNN
F 1 "GND" H 6855 3027 50  0000 C CNN
F 2 "" H 6850 3200 50  0001 C CNN
F 3 "" H 6850 3200 50  0001 C CNN
	1    6850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3200 6850 3150
Wire Wire Line
	6850 3150 6950 3150
$Comp
L Device:R R23
U 1 1 602F97EA
P 7750 3050
F 0 "R23" V 7650 3050 50  0000 C CNN
F 1 "1k" V 7750 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7680 3050 50  0001 C CNN
F 3 "~" H 7750 3050 50  0001 C CNN
	1    7750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3050 7600 3050
Connection ~ 7550 3050
Wire Wire Line
	8750 3050 8850 3050
Text Label 3900 2600 2    50   ~ 0
CH2_PWM1
Text Label 3900 2850 2    50   ~ 0
CH2_PWM2
$Comp
L power:-12V #PWR0144
U 1 1 602FD665
P 4800 3950
F 0 "#PWR0144" H 4800 4050 50  0001 C CNN
F 1 "-12V" H 4815 4123 50  0000 C CNN
F 2 "" H 4800 3950 50  0001 C CNN
F 3 "" H 4800 3950 50  0001 C CNN
	1    4800 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 602FDE9B
P 4800 4100
F 0 "R5" V 4700 4100 50  0000 C CNN
F 1 "10k" V 4800 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4730 4100 50  0001 C CNN
F 3 "~" H 4800 4100 50  0001 C CNN
	1    4800 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D10
U 1 1 602FE498
P 4800 4400
F 0 "D10" V 4846 4320 50  0000 R CNN
F 1 "5.1" V 4755 4320 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 4800 4400 50  0001 C CNN
F 3 "~" H 4800 4400 50  0001 C CNN
	1    4800 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 602FF452
P 4800 4550
F 0 "#PWR0145" H 4800 4300 50  0001 C CNN
F 1 "GND" H 4805 4377 50  0000 C CNN
F 2 "" H 4800 4550 50  0001 C CNN
F 3 "" H 4800 4550 50  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 602FF7DA
P 7150 950
F 0 "C11" V 7402 950 50  0000 C CNN
F 1 "150pf" V 7311 950 50  0000 C CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 7188 800 50  0001 C CNN
F 3 "~" H 7150 950 50  0001 C CNN
	1    7150 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 950  6750 950 
Wire Wire Line
	6750 950  6750 1200
Connection ~ 6750 1200
Wire Wire Line
	7300 950  7500 950 
Wire Wire Line
	7500 950  7500 1200
Connection ~ 7500 1200
$Comp
L Device:C C12
U 1 1 60308F68
P 7200 2250
F 0 "C12" V 7452 2250 50  0000 C CNN
F 1 "150pf" V 7361 2250 50  0000 C CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 7238 2100 50  0001 C CNN
F 3 "~" H 7200 2250 50  0001 C CNN
	1    7200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 2250 6800 2250
Wire Wire Line
	6800 2250 6800 2500
Connection ~ 6800 2500
Wire Wire Line
	7350 2250 7550 2250
Wire Wire Line
	7550 2250 7550 2500
Connection ~ 7550 2500
Text Label 5300 4250 0    50   ~ 0
REF_-5V
Connection ~ 4800 4250
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 603179E7
P 7200 4150
F 0 "U1" H 7012 4196 50  0000 R CNN
F 1 "TL074" H 7012 4105 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7150 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7250 4350 50  0001 C CNN
	5    7200 4150
	-1   0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0146
U 1 1 6032051C
P 7300 4450
F 0 "#PWR0146" H 7300 4550 50  0001 C CNN
F 1 "-12V" H 7315 4623 50  0000 C CNN
F 2 "" H 7300 4450 50  0001 C CNN
F 3 "" H 7300 4450 50  0001 C CNN
	1    7300 4450
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0147
U 1 1 60320E41
P 7300 3850
F 0 "#PWR0147" H 7300 3700 50  0001 C CNN
F 1 "+12V" H 7315 4023 50  0000 C CNN
F 2 "" H 7300 3850 50  0001 C CNN
F 3 "" H 7300 3850 50  0001 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 603217AB
P 6950 4150
F 0 "C10" H 7065 4196 50  0000 L CNN
F 1 "100n" H 7065 4105 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 6988 4000 50  0001 C CNN
F 3 "~" H 6950 4150 50  0001 C CNN
	1    6950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3850 7300 3850
Wire Wire Line
	6950 3850 6950 4000
Connection ~ 7300 3850
Wire Wire Line
	6950 4450 7300 4450
Wire Wire Line
	6950 4300 6950 4450
Connection ~ 7300 4450
$Comp
L Device:C C5
U 1 1 6032C786
P 5150 4400
F 0 "C5" H 5265 4446 50  0000 L CNN
F 1 "100n" H 5265 4355 50  0000 L CNN
F 2 "Personal:C_Disc_D3.4mm_W2.1mm_P2.50mm_Large_Pads" H 5188 4250 50  0001 C CNN
F 3 "~" H 5150 4400 50  0001 C CNN
	1    5150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4250 5150 4250
Connection ~ 5150 4250
Wire Wire Line
	5150 4250 5300 4250
Wire Wire Line
	4800 4550 5150 4550
Connection ~ 4800 4550
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 602F97F2
P 9050 3050
F 0 "J5" H 9050 2700 50  0000 C CNN
F 1 "out2" H 9050 2600 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 9050 3050 50  0001 C CNN
F 3 "~" H 9050 3050 50  0001 C CNN
	1    9050 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 602E5AA5
P 9000 1750
F 0 "J4" H 9000 1400 50  0000 C CNN
F 1 "out1" H 9000 1300 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 9000 1750 50  0001 C CNN
F 3 "~" H 9000 1750 50  0001 C CNN
	1    9000 1750
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 602D08BE
P 7250 3050
F 0 "U1" H 7250 2683 50  0000 C CNN
F 1 "TL074" H 7250 2774 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7200 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7300 3250 50  0001 C CNN
	1    7250 3050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 602F97C4
P 7200 1750
F 0 "U1" H 7200 1383 50  0000 C CNN
F 1 "TL074" H 7200 1474 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7150 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7250 1950 50  0001 C CNN
	4    7200 1750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 602C7FCE
P 6000 2950
F 0 "U1" H 6000 3317 50  0000 C CNN
F 1 "TL074" H 6000 3226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5950 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6050 3150 50  0001 C CNN
	2    6000 2950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 602F97B1
P 5950 1650
F 0 "U1" H 5950 2017 50  0000 C CNN
F 1 "TL074" H 5950 1926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5900 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 1850 50  0001 C CNN
	3    5950 1650
	1    0    0    -1  
$EndComp
Text GLabel 7300 5250 3    50   Input ~ 0
TO_D1
Text GLabel 7850 5250 3    50   Input ~ 0
TO_D2
Text GLabel 8350 5250 3    50   Input ~ 0
TO_D3
Text GLabel 8800 5250 3    50   Input ~ 0
TO_D4
Text GLabel 9250 5250 3    50   Input ~ 0
TO_D5
Text GLabel 9750 5250 3    50   Input ~ 0
TO_D6
Text GLabel 10400 5250 3    50   Input ~ 0
TO_D7
Text GLabel 7300 5900 1    50   Input ~ 0
FROM_D1
Text GLabel 7850 5900 1    50   Input ~ 0
FROM_D2
Text GLabel 8350 5900 1    50   Input ~ 0
FROM_D3
Text GLabel 8800 5900 1    50   Input ~ 0
FROM_D4
Text GLabel 9250 5900 1    50   Input ~ 0
FROM_D5
Text GLabel 9750 5900 1    50   Input ~ 0
FROM_D6
Text GLabel 10400 5900 1    50   Input ~ 0
FROM_D7
Text GLabel 5400 5650 0    50   Input ~ 0
TO_IN1
Text GLabel 4600 5650 2    50   Input ~ 0
FROM_IN1
Wire Wire Line
	4600 5550 4650 5550
Wire Wire Line
	4650 5400 4650 5550
Wire Wire Line
	4600 5750 4700 5750
Wire Wire Line
	4700 5750 4700 5800
Text GLabel 4900 7200 2    50   Input ~ 0
FROM_IN2
Text GLabel 5400 7000 0    50   Input ~ 0
TO_IN2
Wire Wire Line
	5400 7000 5400 7200
Connection ~ 6250 1650
Text GLabel 7850 1750 2    50   Input ~ 0
TO_OUT1
Text GLabel 7900 3050 2    50   Input ~ 0
TO_OUT2
Text GLabel 8700 1750 0    50   Input ~ 0
FROM_OUT1
Text GLabel 8750 3050 0    50   Input ~ 0
FROM_OUT2
Text GLabel 10500 3200 0    50   Input ~ 0
FROM_SW_MODE
Text GLabel 10500 3750 0    50   Input ~ 0
FROM_SW_TRIG1
Text GLabel 10500 2600 0    50   Input ~ 0
FROM_SW_DUAL
Text GLabel 10550 4350 0    50   Input ~ 0
FROM_SW_TRIG2
$Comp
L power:GND1 #PWR0128
U 1 1 60426EF3
P 8800 6300
F 0 "#PWR0128" H 8800 6050 50  0001 C CNN
F 1 "GND1" H 8805 6127 50  0000 C CNN
F 2 "" H 8800 6300 50  0001 C CNN
F 3 "" H 8800 6300 50  0001 C CNN
	1    8800 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0129
U 1 1 60427349
P 11100 4350
F 0 "#PWR0129" H 11100 4100 50  0001 C CNN
F 1 "GND1" H 11105 4177 50  0000 C CNN
F 2 "" H 11100 4350 50  0001 C CNN
F 3 "" H 11100 4350 50  0001 C CNN
	1    11100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 4350 11100 3750
Connection ~ 11100 4350
Wire Wire Line
	10900 2600 11100 2600
Wire Wire Line
	10900 3200 11100 3200
Connection ~ 11100 3200
Wire Wire Line
	11100 3200 11100 2600
Wire Wire Line
	10900 3750 11100 3750
Connection ~ 11100 3750
Wire Wire Line
	11100 3750 11100 3200
Wire Wire Line
	10950 4350 11100 4350
$Comp
L power:GND1 #PWR0120
U 1 1 60443EA3
P 8850 3150
F 0 "#PWR0120" H 8850 2900 50  0001 C CNN
F 1 "GND1" H 8855 2977 50  0000 C CNN
F 2 "" H 8850 3150 50  0001 C CNN
F 3 "" H 8850 3150 50  0001 C CNN
	1    8850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0121
U 1 1 6044449E
P 8800 1850
F 0 "#PWR0121" H 8800 1600 50  0001 C CNN
F 1 "GND1" H 8805 1677 50  0000 C CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0124
U 1 1 60444CA7
P 4700 5800
F 0 "#PWR0124" H 4700 5550 50  0001 C CNN
F 1 "GND1" H 4705 5627 50  0000 C CNN
F 2 "" H 4700 5800 50  0001 C CNN
F 3 "" H 4700 5800 50  0001 C CNN
	1    4700 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0125
U 1 1 60445A28
P 4650 5400
F 0 "#PWR0125" H 4650 5150 50  0001 C CNN
F 1 "GND1" H 4655 5227 50  0000 C CNN
F 2 "" H 4650 5400 50  0001 C CNN
F 3 "" H 4650 5400 50  0001 C CNN
	1    4650 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GND1 #PWR0130
U 1 1 60445E4D
P 4800 7000
F 0 "#PWR0130" H 4800 6750 50  0001 C CNN
F 1 "GND1" H 4805 6827 50  0000 C CNN
F 2 "" H 4800 7000 50  0001 C CNN
F 3 "" H 4800 7000 50  0001 C CNN
	1    4800 7000
	-1   0    0    1   
$EndComp
$Comp
L power:GND1 #PWR0131
U 1 1 60446437
P 4850 7300
F 0 "#PWR0131" H 4850 7050 50  0001 C CNN
F 1 "GND1" H 4855 7127 50  0000 C CNN
F 2 "" H 4850 7300 50  0001 C CNN
F 3 "" H 4850 7300 50  0001 C CNN
	1    4850 7300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J8
U 1 1 604A9EB6
P 8300 4550
F 0 "J8" V 8172 4930 50  0000 L CNN
F 1 "Conn_01x07" V 8263 4930 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 8300 4550 50  0001 C CNN
F 3 "~" H 8300 4550 50  0001 C CNN
	1    8300 4550
	0    1    1    0   
$EndComp
Text GLabel 8000 4350 1    50   Input ~ 0
TO_D2
Text GLabel 8100 4350 1    50   Input ~ 0
TO_D3
Text GLabel 8200 4350 1    50   Input ~ 0
TO_D4
Text GLabel 8300 4350 1    50   Input ~ 0
TO_D5
Text GLabel 8400 4350 1    50   Input ~ 0
TO_D7
Text GLabel 8500 4350 1    50   Input ~ 0
TO_D6
Text GLabel 8600 4350 1    50   Input ~ 0
TO_D1
Text Notes 4500 1100 0    50   ~ 0
*If you want to recalculate these resistors \nbecause of a different zener value use this ecuation:\n0.1 = 33(-Vzener/R + 1.65/6.8)\n\nFor 5.1V Zener, R14 = 21k\nFor 3.3V Zener, R14 = 14k\nFon 3.6V Zener, R14 = 15k
Text Notes 6550 1350 0    50   ~ 0
*
Text Notes 6600 2650 0    50   ~ 0
*
Text GLabel 3050 1950 2    50   Output ~ 0
3.3V
Wire Wire Line
	2950 2100 2950 1950
Wire Wire Line
	2950 1950 3050 1950
Wire Wire Line
	2850 2100 2950 2100
Text GLabel 900  3800 0    50   Output ~ 0
3.3V
Wire Wire Line
	900  3800 1100 3800
Text GLabel 1050 5600 1    50   Output ~ 0
3.3V
Wire Wire Line
	1050 5600 1050 5750
Text GLabel 1750 5600 1    50   Output ~ 0
3.3V
Wire Wire Line
	1750 5600 1750 5750
Wire Wire Line
	2450 5600 2450 5750
Text GLabel 3150 5600 1    50   Output ~ 0
3.3V
Wire Wire Line
	3150 5600 3150 5750
Text GLabel 6000 6550 1    50   Output ~ 0
3.3V
Wire Wire Line
	6000 6550 6000 6650
Text GLabel 6000 5000 1    50   Output ~ 0
3.3V
Wire Wire Line
	6000 5000 6000 5100
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 607BE4CB
P 3800 3850
F 0 "J9" H 3880 3892 50  0000 L CNN
F 1 "Conn_01x03" H 3880 3801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3800 3850 50  0001 C CNN
F 3 "~" H 3800 3850 50  0001 C CNN
	1    3800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2900 3600 3750
Wire Wire Line
	2850 2900 3600 2900
Wire Wire Line
	3450 3850 3600 3850
Wire Wire Line
	3300 3600 3300 3950
Wire Wire Line
	3300 3950 3600 3950
Wire Wire Line
	2850 3600 3300 3600
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 60811A8A
P 3800 4300
F 0 "J10" H 3880 4342 50  0000 L CNN
F 1 "Conn_01x03" H 3880 4251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3800 4300 50  0001 C CNN
F 3 "~" H 3800 4300 50  0001 C CNN
	1    3800 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 60812F15
P 3500 4200
F 0 "#PWR0111" H 3500 3950 50  0001 C CNN
F 1 "GND" H 3505 4027 50  0000 C CNN
F 2 "" H 3500 4200 50  0001 C CNN
F 3 "" H 3500 4200 50  0001 C CNN
	1    3500 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 608196F4
P 3500 4300
F 0 "#PWR0112" H 3500 4050 50  0001 C CNN
F 1 "GND" H 3505 4127 50  0000 C CNN
F 2 "" H 3500 4300 50  0001 C CNN
F 3 "" H 3500 4300 50  0001 C CNN
	1    3500 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6081FCEA
P 3500 4400
F 0 "#PWR0114" H 3500 4150 50  0001 C CNN
F 1 "GND" H 3505 4227 50  0000 C CNN
F 2 "" H 3500 4400 50  0001 C CNN
F 3 "" H 3500 4400 50  0001 C CNN
	1    3500 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4300 3500 4300
Wire Wire Line
	3600 4200 3500 4200
Wire Wire Line
	3600 4400 3500 4400
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 60978712
P 3800 4750
F 0 "J13" H 3880 4742 50  0000 L CNN
F 1 "Conn_01x02" H 3880 4651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3800 4750 50  0001 C CNN
F 3 "~" H 3800 4750 50  0001 C CNN
	1    3800 4750
	1    0    0    -1  
$EndComp
Text GLabel 3500 4850 0    50   Input ~ 0
TO_OUT1
Wire Wire Line
	3500 4850 3600 4850
$Comp
L power:GND #PWR0116
U 1 1 6099861C
P 3500 4700
F 0 "#PWR0116" H 3500 4450 50  0001 C CNN
F 1 "GND" H 3505 4527 50  0000 C CNN
F 2 "" H 3500 4700 50  0001 C CNN
F 3 "" H 3500 4700 50  0001 C CNN
	1    3500 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 4700 3600 4700
Wire Wire Line
	3600 4700 3600 4750
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 609AEBE9
P 3800 5050
F 0 "J12" H 3880 5042 50  0000 L CNN
F 1 "Conn_01x02" H 3880 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3800 5050 50  0001 C CNN
F 3 "~" H 3800 5050 50  0001 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5150 3600 5150
$Comp
L power:GND #PWR0118
U 1 1 609AEBF1
P 3500 5000
F 0 "#PWR0118" H 3500 4750 50  0001 C CNN
F 1 "GND" H 3505 4827 50  0000 C CNN
F 2 "" H 3500 5000 50  0001 C CNN
F 3 "" H 3500 5000 50  0001 C CNN
	1    3500 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5000 3600 5000
Wire Wire Line
	3600 5000 3600 5050
Text GLabel 3500 5150 0    50   Input ~ 0
TO_OUT2
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 609BEFD8
P 2500 4750
F 0 "J11" H 2580 4742 50  0000 L CNN
F 1 "Conn_01x02" H 2580 4651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2500 4750 50  0001 C CNN
F 3 "~" H 2500 4750 50  0001 C CNN
	1    2500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4850 2300 4850
$Comp
L power:GND #PWR0123
U 1 1 609BEFDF
P 2200 4700
F 0 "#PWR0123" H 2200 4450 50  0001 C CNN
F 1 "GND" H 2205 4527 50  0000 C CNN
F 2 "" H 2200 4700 50  0001 C CNN
F 3 "" H 2200 4700 50  0001 C CNN
	1    2200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4700 2300 4700
Wire Wire Line
	2300 4700 2300 4750
Wire Wire Line
	2850 3200 2950 3200
Text GLabel 3450 3750 1    50   Input ~ 0
TO_IN2
Wire Wire Line
	3450 3750 3450 3850
Text GLabel 2200 4850 0    50   Input ~ 0
TO_IN1
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 60A369F7
P 1250 4950
F 0 "J15" H 1330 4942 50  0000 L CNN
F 1 "Conn_01x02" H 1330 4851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1250 4950 50  0001 C CNN
F 3 "~" H 1250 4950 50  0001 C CNN
	1    1250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5050 1050 5050
$Comp
L power:GND #PWR0127
U 1 1 60A369FE
P 950 4900
F 0 "#PWR0127" H 950 4650 50  0001 C CNN
F 1 "GND" H 955 4727 50  0000 C CNN
F 2 "" H 950 4900 50  0001 C CNN
F 3 "" H 950 4900 50  0001 C CNN
	1    950  4900
	0    1    1    0   
$EndComp
Wire Wire Line
	950  4900 1050 4900
Wire Wire Line
	1050 4900 1050 4950
$Comp
L power:GND #PWR0135
U 1 1 60A46DEA
P 950 5050
F 0 "#PWR0135" H 950 4800 50  0001 C CNN
F 1 "GND" H 955 4877 50  0000 C CNN
F 2 "" H 950 5050 50  0001 C CNN
F 3 "" H 950 5050 50  0001 C CNN
	1    950  5050
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 60A50A06
P 1250 4650
F 0 "J14" H 1330 4642 50  0000 L CNN
F 1 "Conn_01x02" H 1330 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1250 4650 50  0001 C CNN
F 3 "~" H 1250 4650 50  0001 C CNN
	1    1250 4650
	1    0    0    -1  
$EndComp
Text Label 900  4650 2    50   ~ 0
SW_DUAL
Text Label 900  4750 2    50   ~ 0
SW_MODE
Wire Wire Line
	900  4650 1050 4650
Wire Wire Line
	900  4750 1050 4750
NoConn ~ 8800 1650
NoConn ~ 8850 2950
$EndSCHEMATC
