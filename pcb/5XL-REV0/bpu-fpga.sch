EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
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
L FPGA_Lattice:ICE40HX4K-TQ144 U700
U 1 1 5F385825
P 4200 2850
F 0 "U700" H 4549 3078 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 4549 2987 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 5200 950 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 3200 5350 50  0001 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U700
U 2 1 5F3892BF
P 6450 6000
F 0 "U700" H 6799 6228 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 6799 6137 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 7450 4100 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 5450 8500 50  0001 C CNN
	2    6450 6000
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U700
U 3 1 5F38B228
P 8150 2400
F 0 "U700" H 8549 2628 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 8549 2537 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 9150 500 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 7150 4900 50  0001 C CNN
	3    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U700
U 4 1 5F38DE90
P 9900 4100
F 0 "U700" H 10249 4278 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 10249 4187 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 10900 2200 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 8900 6600 50  0001 C CNN
	4    9900 4100
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U700
U 5 1 5F38F963
P 2300 6400
F 0 "U700" H 3000 6200 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 3000 6100 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 3300 4500 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 1300 8900 50  0001 C CNN
	5    2300 6400
	1    0    0    -1  
$EndComp
Text GLabel 3700 1650 0    50   Input ~ 0
BUFOD1
Text GLabel 3700 1750 0    50   Input ~ 0
BUFIO1
Text GLabel 3700 1850 0    50   Input ~ 0
BUFDIR1
Text GLabel 3700 1950 0    50   Input ~ 0
MCU_INT2
Text GLabel 3700 2050 0    50   Input ~ 0
MCU_AUX0
Text GLabel 3700 2150 0    50   Input ~ 0
SRAM1_SIO0
Text GLabel 3700 2250 0    50   Input ~ 0
SRAM1_SIO2
Text GLabel 3700 2350 0    50   Input ~ 0
SRAM1_CLOCK
Text GLabel 3700 2450 0    50   Input ~ 0
SRAM1_SIO1
Text GLabel 3700 2550 0    50   Input ~ 0
SRAM1_SIO3
Text GLabel 3700 2650 0    50   Input ~ 0
SRAM1_CS
Text GLabel 3700 2750 0    50   Input ~ 0
MCU_INT1
Text GLabel 3700 2850 0    50   Input ~ 0
MCU_INT0
Text GLabel 3700 2950 0    50   Input ~ 0
MCU_AUX5
Text GLabel 3700 3050 0    50   Input ~ 0
MCU_MCO
Text GLabel 3700 3150 0    50   Input ~ 0
MCU_PWM0
Text GLabel 3700 3250 0    50   Input ~ 0
MCU_AUX4
Text GLabel 3700 3350 0    50   Input ~ 0
MCU_INT3
Text GLabel 3700 3450 0    50   Input ~ 0
MCU_AUX3
Text GLabel 3700 3550 0    50   Input ~ 0
MCU_AUX2
Text GLabel 3700 3650 0    50   Input ~ 0
MCU_AUX1
Text GLabel 3700 3750 0    50   Input ~ 0
SRAM0_SIO0
Text GLabel 3700 3850 0    50   Input ~ 0
SRAM0_SIO2
Text GLabel 3700 3950 0    50   Input ~ 0
SRAM0_CLOCK
Text GLabel 3700 4050 0    50   Input ~ 0
SRAM0_SIO1
Text GLabel 3700 4150 0    50   Input ~ 0
SRAM0_SIO3
Text GLabel 3700 4250 0    50   Input ~ 0
SRAM0_CS
$Comp
L power:+3V3 #PWR0155
U 1 1 5F3BCC07
P 4200 1050
F 0 "#PWR0155" H 4200 900 50  0001 C CNN
F 1 "+3V3" H 4215 1223 50  0000 C CNN
F 2 "" H 4200 1050 50  0001 C CNN
F 3 "" H 4200 1050 50  0001 C CNN
	1    4200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C701
U 1 1 5F3C0332
P 4450 1050
F 0 "C701" V 4221 1050 50  0000 C CNN
F 1 "0.1uF" V 4312 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4450 1050 50  0001 C CNN
F 3 "~" H 4450 1050 50  0001 C CNN
	1    4450 1050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 5F3C372D
P 4550 1050
F 0 "#PWR0156" H 4550 800 50  0001 C CNN
F 1 "GND" H 4555 877 50  0000 C CNN
F 2 "" H 4550 1050 50  0001 C CNN
F 3 "" H 4550 1050 50  0001 C CNN
	1    4550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1050 4200 1050
Connection ~ 4200 1050
$Comp
L Device:C_Small C706
U 1 1 5F3CDC06
P 2900 5700
F 0 "C706" V 2671 5700 50  0000 C CNN
F 1 "0.1uF" V 2762 5700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2900 5700 50  0001 C CNN
F 3 "~" H 2900 5700 50  0001 C CNN
	1    2900 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 5F3CFD62
P 3000 5700
F 0 "#PWR0157" H 3000 5450 50  0001 C CNN
F 1 "GND" H 3005 5527 50  0000 C CNN
F 2 "" H 3000 5700 50  0001 C CNN
F 3 "" H 3000 5700 50  0001 C CNN
	1    3000 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5700 2700 5700
$Comp
L power:+1V2 #PWR0158
U 1 1 5F3D2BCB
P 2700 5550
F 0 "#PWR0158" H 2700 5400 50  0001 C CNN
F 1 "+1V2" H 2715 5723 50  0000 C CNN
F 2 "" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0001 C CNN
	1    2700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5550 2700 5700
Connection ~ 2700 5700
Text GLabel 5950 4700 0    50   Input ~ 0
BUFOD5
Text GLabel 5950 4800 0    50   Input ~ 0
BUFIO5
Text GLabel 5950 4900 0    50   Input ~ 0
BUFDIR5
Text GLabel 5950 5000 0    50   Input ~ 0
BUFOD4
Text GLabel 5950 5100 0    50   Input ~ 0
BUFIO4
Text GLabel 5950 5200 0    50   Input ~ 0
BUFDIR4
Text GLabel 5950 5300 0    50   Input ~ 0
ADC_MUX_S0
Text GLabel 5950 5400 0    50   Input ~ 0
ADC_MUX_S1
Text GLabel 5950 5500 0    50   Input ~ 0
ADC_MUX_S2
Text GLabel 5950 5600 0    50   Input ~ 0
ADC_MUX_S3
Text GLabel 5950 5700 0    50   Input ~ 0
LAT7
Text GLabel 5950 5800 0    50   Input ~ 0
LAT6
Text GLabel 5950 5900 0    50   Input ~ 0
LAT5
Text GLabel 5950 6000 0    50   Input ~ 0
LAT4
Text GLabel 5950 6100 0    50   Input ~ 0
LAT3
Text GLabel 5950 6200 0    50   Input ~ 0
LAT2
Text GLabel 5950 6300 0    50   Input ~ 0
LAT1
Text GLabel 5950 6400 0    50   Input ~ 0
LAT0
Text GLabel 5950 6500 0    50   Input ~ 0
CURRENT_RESET
Text GLabel 5950 6600 0    50   Input ~ 0
VREGEN
Text GLabel 5950 6700 0    50   Input ~ 0
BUFOD2
Text GLabel 5950 6800 0    50   Input ~ 0
BUFIO2
Text GLabel 5950 6900 0    50   Input ~ 0
BUFDIR2
Text GLabel 5950 7000 0    50   Input ~ 0
BUFOD3
Text GLabel 5950 7100 0    50   Input ~ 0
BUFIO3
Text GLabel 5950 7200 0    50   Input ~ 0
BUFDIR3
Text GLabel 5950 7300 0    50   Input ~ 0
BUFOD0
Text GLabel 5950 7400 0    50   Input ~ 0
BUFIO0
Text GLabel 5950 7500 0    50   Input ~ 0
BUFDIR0
$Comp
L Device:C_Small C704
U 1 1 5F3E42D4
P 6700 4100
F 0 "C704" V 6471 4100 50  0000 C CNN
F 1 "0.1uF" V 6562 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6700 4100 50  0001 C CNN
F 3 "~" H 6700 4100 50  0001 C CNN
	1    6700 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 5F3E55A3
P 6800 4100
F 0 "#PWR0159" H 6800 3850 50  0001 C CNN
F 1 "GND" H 6805 3927 50  0000 C CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "" H 6800 4100 50  0001 C CNN
	1    6800 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0160
U 1 1 5F3E67C1
P 6450 4100
F 0 "#PWR0160" H 6450 3950 50  0001 C CNN
F 1 "+3V3" H 6465 4273 50  0000 C CNN
F 2 "" H 6450 4100 50  0001 C CNN
F 3 "" H 6450 4100 50  0001 C CNN
	1    6450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4100 6450 4100
Connection ~ 6450 4100
Text GLabel 7650 1600 0    50   Input ~ 0
FSMC_A7
Text GLabel 7650 1700 0    50   Input ~ 0
FSMC_A10
Text GLabel 7650 1800 0    50   Input ~ 0
FSMC_A8
Text GLabel 7650 1900 0    50   Input ~ 0
FSMC_A9
Text GLabel 7650 2000 0    50   Input ~ 0
FSMC_A6
Text GLabel 7650 2100 0    50   Input ~ 0
DAC_DATA
Text GLabel 7650 2200 0    50   Input ~ 0
VPU
Text GLabel 7650 2300 0    50   Input ~ 0
ADC_CS
Text GLabel 7650 2400 0    50   Input ~ 0
ADC_DATA
Text GLabel 7650 2500 0    50   Input ~ 0
ADC_CLOCK
Text GLabel 7650 2600 0    50   Input ~ 0
MCU_PWM1
Text GLabel 7650 2700 0    50   Input ~ 0
DAC_SYNC
Text GLabel 7650 2800 0    50   Input ~ 0
ADC_MUX_EN
Text GLabel 7650 2900 0    50   Input ~ 0
BUFOD7
Text GLabel 7650 3000 0    50   Input ~ 0
BUFIO7
Text GLabel 7650 3100 0    50   Input ~ 0
BUFDIR7
Text GLabel 7650 3200 0    50   Input ~ 0
BUFOD6
Text GLabel 7650 3300 0    50   Input ~ 0
BUFIO6
Text GLabel 7650 3400 0    50   Input ~ 0
BUFDIR6
$Comp
L Device:C_Small C712
U 1 1 5F335BFE
P 8450 1000
F 0 "C712" V 8221 1000 50  0000 C CNN
F 1 "0.1uF" V 8312 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8450 1000 50  0001 C CNN
F 3 "~" H 8450 1000 50  0001 C CNN
	1    8450 1000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0161
U 1 1 5F336B60
P 8550 1000
F 0 "#PWR0161" H 8550 750 50  0001 C CNN
F 1 "GND" H 8555 827 50  0000 C CNN
F 2 "" H 8550 1000 50  0001 C CNN
F 3 "" H 8550 1000 50  0001 C CNN
	1    8550 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0162
U 1 1 5F3371F7
P 8150 1000
F 0 "#PWR0162" H 8150 850 50  0001 C CNN
F 1 "+3V3" H 8165 1173 50  0000 C CNN
F 2 "" H 8150 1000 50  0001 C CNN
F 3 "" H 8150 1000 50  0001 C CNN
	1    8150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1000 8150 1000
Connection ~ 8150 1000
Text GLabel 3150 6400 2    50   Input ~ 0
FPGA_CDONE
Wire Wire Line
	3150 6400 3100 6400
$Comp
L Device:R_Small R700
U 1 1 5F33ECB8
P 3100 6200
F 0 "R700" H 3159 6246 50  0000 L CNN
F 1 "10K" H 3159 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3100 6200 50  0001 C CNN
F 3 "~" H 3100 6200 50  0001 C CNN
	1    3100 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0163
U 1 1 5F33FC7E
P 3100 6100
F 0 "#PWR0163" H 3100 5950 50  0001 C CNN
F 1 "+3V3" H 3115 6273 50  0000 C CNN
F 2 "" H 3100 6100 50  0001 C CNN
F 3 "" H 3100 6100 50  0001 C CNN
	1    3100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6300 3100 6400
Connection ~ 3100 6400
Wire Wire Line
	3100 6400 3000 6400
Text GLabel 1350 6800 0    50   Input ~ 0
FPGA_CRESET
$Comp
L Device:R_Small R701
U 1 1 5F3436ED
P 1500 5650
F 0 "R701" H 1559 5696 50  0000 L CNN
F 1 "10K" H 1559 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1500 5650 50  0001 C CNN
F 3 "~" H 1500 5650 50  0001 C CNN
	1    1500 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0164
U 1 1 5F344A5D
P 1500 5550
F 0 "#PWR0164" H 1500 5400 50  0001 C CNN
F 1 "+3V3" H 1515 5723 50  0000 C CNN
F 2 "" H 1500 5550 50  0001 C CNN
F 3 "" H 1500 5550 50  0001 C CNN
	1    1500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6800 1500 6800
Wire Wire Line
	1500 5750 1500 6800
Connection ~ 1500 6800
Wire Wire Line
	1500 6800 1350 6800
$Comp
L power:GND #PWR0165
U 1 1 5F348878
P 2300 7100
F 0 "#PWR0165" H 2300 6850 50  0001 C CNN
F 1 "GND" H 2300 6950 50  0000 C CNN
F 2 "" H 2300 7100 50  0001 C CNN
F 3 "" H 2300 7100 50  0001 C CNN
	1    2300 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0166
U 1 1 5F349A38
P 2600 7100
F 0 "#PWR0166" H 2600 6850 50  0001 C CNN
F 1 "GND" H 2550 6950 50  0000 C CNN
F 2 "" H 2600 7100 50  0001 C CNN
F 3 "" H 2600 7100 50  0001 C CNN
	1    2600 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5F34A0E1
P 2700 7100
F 0 "#PWR0167" H 2700 6850 50  0001 C CNN
F 1 "GND" H 2750 6950 50  0000 C CNN
F 2 "" H 2700 7100 50  0001 C CNN
F 3 "" H 2700 7100 50  0001 C CNN
	1    2700 7100
	1    0    0    -1  
$EndComp
Text GLabel 9400 2900 0    50   Input ~ 0
FSMC_D2
Text GLabel 9400 3000 0    50   Input ~ 0
FSMC_D3
Text GLabel 9400 3100 0    50   Input ~ 0
FSMC_A0
Text GLabel 9400 3200 0    50   Input ~ 0
FSMC_A1
Text GLabel 9400 3300 0    50   Input ~ 0
FSMC_A2
Text GLabel 9400 3400 0    50   Input ~ 0
FSMC_A3
Text GLabel 9400 3500 0    50   Input ~ 0
FSMC_A4
Text GLabel 9400 3600 0    50   Input ~ 0
FSMC_A5
Text GLabel 9400 3700 0    50   Input ~ 0
FSMC_NOE_OE
Text GLabel 9400 3800 0    50   Input ~ 0
FSMC_NWE_WE
Text GLabel 9400 3900 0    50   Input ~ 0
FSMC_D4
Text GLabel 9400 4000 0    50   Input ~ 0
FSMC_D5
Text GLabel 9400 4100 0    50   Input ~ 0
FSMC_D6
Text GLabel 9400 4200 0    50   Input ~ 0
FSMC_D7
Text GLabel 9400 4300 0    50   Input ~ 0
FSMC_D8
Text GLabel 8300 4400 0    50   Input ~ 0
FPGA_VREGEN
$Comp
L Device:R_Small R703
U 1 1 5F354B08
P 8450 4550
F 0 "R703" H 8509 4596 50  0000 L CNN
F 1 "10K" H 8509 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8450 4550 50  0001 C CNN
F 3 "~" H 8450 4550 50  0001 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0168
U 1 1 5F3564BA
P 8450 4650
F 0 "#PWR0168" H 8450 4400 50  0001 C CNN
F 1 "GND" H 8455 4477 50  0000 C CNN
F 2 "" H 8450 4650 50  0001 C CNN
F 3 "" H 8450 4650 50  0001 C CNN
	1    8450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4400 8450 4400
Wire Wire Line
	8450 4450 8450 4400
Connection ~ 8450 4400
Wire Wire Line
	8450 4400 8300 4400
Text GLabel 9400 4500 0    50   Input ~ 0
MASTER_RESET
Text GLabel 9400 4600 0    50   Input ~ 0
FSMC_NE3_CE
Text GLabel 9400 4700 0    50   Input ~ 0
FSMC_D1
Text GLabel 9400 4800 0    50   Input ~ 0
FSMC_D0
Text GLabel 9400 4900 0    50   Input ~ 0
FSMC_D9
Text GLabel 9400 5000 0    50   Input ~ 0
FSMC_D10
Text GLabel 9400 5100 0    50   Input ~ 0
FSMC_D11
Text GLabel 9400 5200 0    50   Input ~ 0
FSMC_D12
Text GLabel 9400 5300 0    50   Input ~ 0
FSMC_D15
Text GLabel 9400 5400 0    50   Input ~ 0
FSMC_D14
Text GLabel 9400 5500 0    50   Input ~ 0
FSMC_D13
Text GLabel 9400 5600 0    50   Input ~ 0
DAC_CLOCK
$Comp
L Device:C_Small C709
U 1 1 5F36218C
P 10150 2300
F 0 "C709" V 9921 2300 50  0000 C CNN
F 1 "0.1uF" V 10012 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10150 2300 50  0001 C CNN
F 3 "~" H 10150 2300 50  0001 C CNN
	1    10150 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 5F362E40
P 10250 2300
F 0 "#PWR0169" H 10250 2050 50  0001 C CNN
F 1 "GND" H 10255 2127 50  0000 C CNN
F 2 "" H 10250 2300 50  0001 C CNN
F 3 "" H 10250 2300 50  0001 C CNN
	1    10250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2300 9900 2300
$Comp
L power:+3V3 #PWR0170
U 1 1 5F364C05
P 9900 2300
F 0 "#PWR0170" H 9900 2150 50  0001 C CNN
F 1 "+3V3" H 9915 2473 50  0000 C CNN
F 2 "" H 9900 2300 50  0001 C CNN
F 3 "" H 9900 2300 50  0001 C CNN
	1    9900 2300
	1    0    0    -1  
$EndComp
Connection ~ 9900 2300
Text GLabel 1350 6300 0    50   Input ~ 0
FPGA_PROG_MISO
Wire Wire Line
	1700 6300 1350 6300
Text GLabel 1350 6400 0    50   Input ~ 0
FPGA_PROG_MOSI
Wire Wire Line
	1700 6400 1350 6400
Text GLabel 1350 6500 0    50   Input ~ 0
FPGA_PROG_CLOCK
Wire Wire Line
	1700 6500 1350 6500
Text GLabel 1350 6600 0    50   Input ~ 0
FPGA_PROG_CS
$Comp
L Device:R_Small R702
U 1 1 5F374942
P 1600 7000
F 0 "R702" H 1659 7046 50  0000 L CNN
F 1 "10K" H 1659 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1600 7000 50  0001 C CNN
F 3 "~" H 1600 7000 50  0001 C CNN
	1    1600 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0171
U 1 1 5F376F35
P 1600 7100
F 0 "#PWR0171" H 1600 6850 50  0001 C CNN
F 1 "GND" H 1600 6950 50  0000 C CNN
F 2 "" H 1600 7100 50  0001 C CNN
F 3 "" H 1600 7100 50  0001 C CNN
	1    1600 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0172
U 1 1 5F378745
P 2000 5550
F 0 "#PWR0172" H 2000 5400 50  0001 C CNN
F 1 "+3V3" H 2015 5723 50  0000 C CNN
F 2 "" H 2000 5550 50  0001 C CNN
F 3 "" H 2000 5550 50  0001 C CNN
	1    2000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C715
U 1 1 5F3790CD
P 1850 5650
F 0 "C715" V 1621 5650 50  0000 C CNN
F 1 "0.1uF" V 1712 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1850 5650 50  0001 C CNN
F 3 "~" H 1850 5650 50  0001 C CNN
	1    1850 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0173
U 1 1 5F379AE6
P 1750 5650
F 0 "#PWR0173" H 1750 5400 50  0001 C CNN
F 1 "GND" H 1755 5477 50  0000 C CNN
F 2 "" H 1750 5650 50  0001 C CNN
F 3 "" H 1750 5650 50  0001 C CNN
	1    1750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5550 2000 5650
Wire Wire Line
	1950 5650 2000 5650
Connection ~ 2000 5650
Wire Wire Line
	2000 5650 2000 5700
Wire Wire Line
	1600 6600 1350 6600
Connection ~ 1600 6600
Wire Wire Line
	1600 6900 1600 6600
Wire Wire Line
	1700 6600 1600 6600
NoConn ~ 2200 5700
$Comp
L Device:C_Small C707
U 1 1 5F3AE937
P 2500 4500
F 0 "C707" V 2300 4600 50  0000 C CNN
F 1 "0.1uF" V 2400 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2500 4500 50  0001 C CNN
F 3 "~" H 2500 4500 50  0001 C CNN
	1    2500 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0174
U 1 1 5F3AEFC6
P 2600 4500
F 0 "#PWR0174" H 2600 4250 50  0001 C CNN
F 1 "GND" H 2605 4327 50  0000 C CNN
F 2 "" H 2600 4500 50  0001 C CNN
F 3 "" H 2600 4500 50  0001 C CNN
	1    2600 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0175
U 1 1 5F3AFD22
P 2400 4400
F 0 "#PWR0175" H 2400 4250 50  0001 C CNN
F 1 "+3V3" V 2400 4650 50  0000 C CNN
F 2 "" H 2400 4400 50  0001 C CNN
F 3 "" H 2400 4400 50  0001 C CNN
	1    2400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4400 2400 4500
Connection ~ 2400 4500
$Comp
L Device:C_Small C710
U 1 1 5F3B3A71
P 2200 4500
F 0 "C710" V 1950 4400 50  0000 C CNN
F 1 "0.1uF" V 2050 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2200 4500 50  0001 C CNN
F 3 "~" H 2200 4500 50  0001 C CNN
	1    2200 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0176
U 1 1 5F3B4267
P 2100 4500
F 0 "#PWR0176" H 2100 4250 50  0001 C CNN
F 1 "GND" H 2105 4327 50  0000 C CNN
F 2 "" H 2100 4500 50  0001 C CNN
F 3 "" H 2100 4500 50  0001 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR0177
U 1 1 5F3B4845
P 2300 4400
F 0 "#PWR0177" H 2300 4250 50  0001 C CNN
F 1 "+1V2" V 2300 4650 50  0000 C CNN
F 2 "" H 2300 4400 50  0001 C CNN
F 3 "" H 2300 4400 50  0001 C CNN
	1    2300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4400 2300 4500
Connection ~ 2300 4500
$Comp
L Device:C_Small C714
U 1 1 5F3BD76D
P 2700 5150
F 0 "C714" V 2450 5250 50  0000 C CNN
F 1 "0.1uF" V 2550 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2700 5150 50  0001 C CNN
F 3 "~" H 2700 5150 50  0001 C CNN
	1    2700 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 4500 2300 5700
Wire Wire Line
	2400 4500 2400 5700
$Comp
L power:+1V2 #PWR0178
U 1 1 5F3C12FE
P 2600 5000
F 0 "#PWR0178" H 2600 4850 50  0001 C CNN
F 1 "+1V2" H 2615 5173 50  0000 C CNN
F 2 "" H 2600 5000 50  0001 C CNN
F 3 "" H 2600 5000 50  0001 C CNN
	1    2600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5000 2600 5150
Wire Wire Line
	2600 5150 2600 5700
Connection ~ 2600 5150
$Comp
L power:GND #PWR0179
U 1 1 5F3C4A30
P 2800 5150
F 0 "#PWR0179" H 2800 4900 50  0001 C CNN
F 1 "GND" H 2805 4977 50  0000 C CNN
F 2 "" H 2800 5150 50  0001 C CNN
F 3 "" H 2800 5150 50  0001 C CNN
	1    2800 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C708
U 1 1 5F57F648
P 9500 2300
F 0 "C708" V 9271 2300 50  0000 C CNN
F 1 "0.1uF" V 9362 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9500 2300 50  0001 C CNN
F 3 "~" H 9500 2300 50  0001 C CNN
	1    9500 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0345
U 1 1 5F580128
P 9400 2300
F 0 "#PWR0345" H 9400 2050 50  0001 C CNN
F 1 "GND" H 9405 2127 50  0000 C CNN
F 2 "" H 9400 2300 50  0001 C CNN
F 3 "" H 9400 2300 50  0001 C CNN
	1    9400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2300 9900 2300
$Comp
L Device:C_Small C713
U 1 1 5F4FBDFD
P 4000 7250
F 0 "C713" V 3771 7250 50  0000 C CNN
F 1 "0.1uF" V 3862 7250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4000 7250 50  0001 C CNN
F 3 "~" H 4000 7250 50  0001 C CNN
	1    4000 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0346
U 1 1 5F4FCA04
P 4000 7350
F 0 "#PWR0346" H 4000 7100 50  0001 C CNN
F 1 "GND" H 4050 7200 50  0000 C CNN
F 2 "" H 4000 7350 50  0001 C CNN
F 3 "" H 4000 7350 50  0001 C CNN
	1    4000 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR0347
U 1 1 5F4FD033
P 4000 7150
F 0 "#PWR0347" H 4000 7000 50  0001 C CNN
F 1 "+1V2" H 4015 7323 50  0000 C CNN
F 2 "" H 4000 7150 50  0001 C CNN
F 3 "" H 4000 7150 50  0001 C CNN
	1    4000 7150
	1    0    0    -1  
$EndComp
Text Notes 3450 7700 0    50   ~ 0
caps on missing power fpga pins\npin 40, 92
$Comp
L Device:C_Small C705
U 1 1 5F506A24
P 4200 7250
F 0 "C705" V 3971 7250 50  0000 C CNN
F 1 "0.1uF" V 4062 7250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4200 7250 50  0001 C CNN
F 3 "~" H 4200 7250 50  0001 C CNN
	1    4200 7250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0348
U 1 1 5F506F0C
P 4200 7350
F 0 "#PWR0348" H 4200 7100 50  0001 C CNN
F 1 "GND" H 4250 7200 50  0000 C CNN
F 2 "" H 4200 7350 50  0001 C CNN
F 3 "" H 4200 7350 50  0001 C CNN
	1    4200 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR0349
U 1 1 5F50720D
P 4200 7150
F 0 "#PWR0349" H 4200 7000 50  0001 C CNN
F 1 "+1V2" H 4215 7323 50  0000 C CNN
F 2 "" H 4200 7150 50  0001 C CNN
F 3 "" H 4200 7150 50  0001 C CNN
	1    4200 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C703
U 1 1 5F50C0CC
P 4200 6500
F 0 "C703" V 3971 6500 50  0000 C CNN
F 1 "0.1uF" V 4062 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4200 6500 50  0001 C CNN
F 3 "~" H 4200 6500 50  0001 C CNN
	1    4200 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0350
U 1 1 5F50CC75
P 4200 6600
F 0 "#PWR0350" H 4200 6350 50  0001 C CNN
F 1 "GND" H 4250 6450 50  0000 C CNN
F 2 "" H 4200 6600 50  0001 C CNN
F 3 "" H 4200 6600 50  0001 C CNN
	1    4200 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0351
U 1 1 5F50E753
P 4200 6400
F 0 "#PWR0351" H 4200 6250 50  0001 C CNN
F 1 "+3V3" H 4215 6573 50  0000 C CNN
F 2 "" H 4200 6400 50  0001 C CNN
F 3 "" H 4200 6400 50  0001 C CNN
	1    4200 6400
	1    0    0    -1  
$EndComp
Text Notes 3850 6900 0    50   ~ 0
caps on missing power fpga pins\npin 100, 131, 57
$Comp
L Device:C_Small C702
U 1 1 5F51333B
P 4400 7250
F 0 "C702" V 4171 7250 50  0000 C CNN
F 1 "0.1uF" V 4262 7250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4400 7250 50  0001 C CNN
F 3 "~" H 4400 7250 50  0001 C CNN
	1    4400 7250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0352
U 1 1 5F513AC3
P 4400 7350
F 0 "#PWR0352" H 4400 7100 50  0001 C CNN
F 1 "GND" H 4450 7200 50  0000 C CNN
F 2 "" H 4400 7350 50  0001 C CNN
F 3 "" H 4400 7350 50  0001 C CNN
	1    4400 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+1V2 #PWR0353
U 1 1 5F513D03
P 4400 7150
F 0 "#PWR0353" H 4400 7000 50  0001 C CNN
F 1 "+1V2" H 4415 7323 50  0000 C CNN
F 2 "" H 4400 7150 50  0001 C CNN
F 3 "" H 4400 7150 50  0001 C CNN
	1    4400 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C700
U 1 1 5F76B4FF
P 4500 6500
F 0 "C700" V 4271 6500 50  0000 C CNN
F 1 "0.1uF" V 4362 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4500 6500 50  0001 C CNN
F 3 "~" H 4500 6500 50  0001 C CNN
	1    4500 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0358
U 1 1 5F76BA29
P 4500 6600
F 0 "#PWR0358" H 4500 6350 50  0001 C CNN
F 1 "GND" H 4550 6450 50  0000 C CNN
F 2 "" H 4500 6600 50  0001 C CNN
F 3 "" H 4500 6600 50  0001 C CNN
	1    4500 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0359
U 1 1 5F76BE14
P 4500 6400
F 0 "#PWR0359" H 4500 6250 50  0001 C CNN
F 1 "+3V3" H 4515 6573 50  0000 C CNN
F 2 "" H 4500 6400 50  0001 C CNN
F 3 "" H 4500 6400 50  0001 C CNN
	1    4500 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C711
U 1 1 5F627CB6
P 4850 6500
F 0 "C711" V 4621 6500 50  0000 C CNN
F 1 "0.1uF" V 4712 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 6500 50  0001 C CNN
F 3 "~" H 4850 6500 50  0001 C CNN
	1    4850 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0360
U 1 1 5F6281B0
P 4850 6600
F 0 "#PWR0360" H 4850 6350 50  0001 C CNN
F 1 "GND" H 4900 6450 50  0000 C CNN
F 2 "" H 4850 6600 50  0001 C CNN
F 3 "" H 4850 6600 50  0001 C CNN
	1    4850 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0361
U 1 1 5F6284B5
P 4850 6400
F 0 "#PWR0361" H 4850 6250 50  0001 C CNN
F 1 "+3V3" H 4865 6573 50  0000 C CNN
F 2 "" H 4850 6400 50  0001 C CNN
F 3 "" H 4850 6400 50  0001 C CNN
	1    4850 6400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
