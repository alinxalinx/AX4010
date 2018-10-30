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
# File: D:\intel_project\AX4010\11_sd_card_test\sd_card_test.tcl
# Generated on: Fri Jun 01 13:42:30 2018

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
set_location_assignment PIN_D12 -to SD_DCLK
set_location_assignment PIN_E15 -to SD_MISO
set_location_assignment PIN_F10 -to SD_MOSI
set_location_assignment PIN_D11 -to SD_nCS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_DCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_MOSI
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_nCS
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
