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
# File: D:\intel_project\AX4010\demo\22_ad7606_vga_test\ad7606_vga_test.tcl
# Generated on: Thu Mar 22 15:55:14 2018

package require ::quartus::project

set_location_assignment PIN_C3 -to vga_out_b[0]
set_location_assignment PIN_D4 -to vga_out_b[1]
set_location_assignment PIN_D3 -to vga_out_b[2]
set_location_assignment PIN_E5 -to vga_out_b[3]
set_location_assignment PIN_F6 -to vga_out_b[4]
set_location_assignment PIN_F5 -to vga_out_g[0]
set_location_assignment PIN_G5 -to vga_out_g[1]
set_location_assignment PIN_F7 -to vga_out_g[2]
set_location_assignment PIN_K8 -to vga_out_g[3]
set_location_assignment PIN_L8 -to vga_out_g[4]
set_location_assignment PIN_J6 -to vga_out_g[5]
set_location_assignment PIN_L6 -to vga_out_hs
set_location_assignment PIN_K6 -to vga_out_r[0]
set_location_assignment PIN_K5 -to vga_out_r[1]
set_location_assignment PIN_L7 -to vga_out_r[2]
set_location_assignment PIN_L3 -to vga_out_r[3]
set_location_assignment PIN_L4 -to vga_out_r[4]
set_location_assignment PIN_N3 -to vga_out_vs
set_location_assignment PIN_E1 -to clk
set_location_assignment PIN_N13 -to rst_n
set_location_assignment PIN_T11 -to ad7606_busy
set_location_assignment PIN_T13 -to ad7606_convstab
set_location_assignment PIN_R10 -to ad7606_cs
set_location_assignment PIN_T8 -to ad7606_data[0]
set_location_assignment PIN_R7 -to ad7606_data[1]
set_location_assignment PIN_T7 -to ad7606_data[2]
set_location_assignment PIN_R6 -to ad7606_data[3]
set_location_assignment PIN_T6 -to ad7606_data[4]
set_location_assignment PIN_R5 -to ad7606_data[5]
set_location_assignment PIN_T5 -to ad7606_data[6]
set_location_assignment PIN_R4 -to ad7606_data[7]
set_location_assignment PIN_T4 -to ad7606_data[8]
set_location_assignment PIN_R3 -to ad7606_data[9]
set_location_assignment PIN_T3 -to ad7606_data[10]
set_location_assignment PIN_P3 -to ad7606_data[11]
set_location_assignment PIN_T2 -to ad7606_data[12]
set_location_assignment PIN_M9 -to ad7606_data[13]
set_location_assignment PIN_L10 -to ad7606_data[14]
set_location_assignment PIN_L9 -to ad7606_data[15]
set_location_assignment PIN_R13 -to ad7606_os[0]
set_location_assignment PIN_T14 -to ad7606_os[1]
set_location_assignment PIN_R12 -to ad7606_os[2]
set_location_assignment PIN_T12 -to ad7606_rd
set_location_assignment PIN_R11 -to ad7606_reset
set_location_assignment PIN_R9 -to ad7606_first_data
