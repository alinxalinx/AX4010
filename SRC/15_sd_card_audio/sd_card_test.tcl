# Copyright (C) 2017  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition
# File: D:\intel_project\AX4010\demo\15_sd_card_audio\sd_card_test.tcl
# Generated on: Thu Mar 22 15:26:06 2018

package require ::quartus::project

set_location_assignment PIN_N13 -to rst_n
set_location_assignment PIN_R16 -to seg_data[7]
set_location_assignment PIN_N15 -to seg_data[6]
set_location_assignment PIN_N12 -to seg_data[5]
set_location_assignment PIN_P15 -to seg_data[4]
set_location_assignment PIN_T15 -to seg_data[3]
set_location_assignment PIN_P16 -to seg_data[2]
set_location_assignment PIN_N16 -to seg_data[1]
set_location_assignment PIN_R14 -to seg_data[0]
set_location_assignment PIN_M11 -to seg_sel[5]
set_location_assignment PIN_P11 -to seg_sel[4]
set_location_assignment PIN_N11 -to seg_sel[3]
set_location_assignment PIN_M10 -to seg_sel[2]
set_location_assignment PIN_P9 -to seg_sel[1]
set_location_assignment PIN_N9 -to seg_sel[0]
set_location_assignment PIN_M15 -to key1
set_location_assignment PIN_E1 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to key1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rst_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel[0]
set_location_assignment PIN_D12 -to sd_dclk
set_location_assignment PIN_E15 -to sd_miso
set_location_assignment PIN_F10 -to sd_mosi
set_location_assignment PIN_D11 -to sd_ncs
set_location_assignment PIN_B4 -to wm8731_adcdat
set_location_assignment PIN_B5 -to wm8731_adclrc
set_location_assignment PIN_A2 -to wm8731_bclk
set_location_assignment PIN_B3 -to wm8731_dacdat
set_location_assignment PIN_A3 -to wm8731_daclrc
set_location_assignment PIN_B1 -to wm8731_scl
set_location_assignment PIN_C2 -to wm8731_sda
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sd_dclk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sd_miso
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sd_mosi
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sd_ncs
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_data
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg_sel
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_adcdat
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_adclrc
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_bclk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_dacdat
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_daclrc
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_scl
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to wm8731_sda
