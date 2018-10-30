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
# File: D:\intel_project\AX4010\demo\18_1_sdram_ov5640_vga\sdram_ov5640_vga.tcl
# Generated on: Thu Mar 22 15:45:57 2018

package require ::quartus::project

set_location_assignment PIN_E1 -to clk
set_location_assignment PIN_M15 -to key1
set_location_assignment PIN_N13 -to rst_n
set_location_assignment PIN_F15 -to sdram_addr[12]
set_location_assignment PIN_D16 -to sdram_addr[11]
set_location_assignment PIN_F14 -to sdram_addr[10]
set_location_assignment PIN_D15 -to sdram_addr[9]
set_location_assignment PIN_C16 -to sdram_addr[8]
set_location_assignment PIN_C15 -to sdram_addr[7]
set_location_assignment PIN_B16 -to sdram_addr[6]
set_location_assignment PIN_A15 -to sdram_addr[5]
set_location_assignment PIN_A14 -to sdram_addr[4]
set_location_assignment PIN_C14 -to sdram_addr[3]
set_location_assignment PIN_D14 -to sdram_addr[2]
set_location_assignment PIN_E11 -to sdram_addr[1]
set_location_assignment PIN_F11 -to sdram_addr[0]
set_location_assignment PIN_F13 -to sdram_ba[1]
set_location_assignment PIN_G11 -to sdram_ba[0]
set_location_assignment PIN_J12 -to sdram_cas_n
set_location_assignment PIN_F16 -to sdram_cke
set_location_assignment PIN_B14 -to sdram_clk
set_location_assignment PIN_K10 -to sdram_cs_n
set_location_assignment PIN_L15 -to sdram_dq[15]
set_location_assignment PIN_L16 -to sdram_dq[14]
set_location_assignment PIN_K15 -to sdram_dq[13]
set_location_assignment PIN_K16 -to sdram_dq[12]
set_location_assignment PIN_J15 -to sdram_dq[11]
set_location_assignment PIN_J16 -to sdram_dq[10]
set_location_assignment PIN_J11 -to sdram_dq[9]
set_location_assignment PIN_G16 -to sdram_dq[8]
set_location_assignment PIN_K12 -to sdram_dq[7]
set_location_assignment PIN_L11 -to sdram_dq[6]
set_location_assignment PIN_L14 -to sdram_dq[5]
set_location_assignment PIN_L13 -to sdram_dq[4]
set_location_assignment PIN_L12 -to sdram_dq[3]
set_location_assignment PIN_N14 -to sdram_dq[2]
set_location_assignment PIN_M12 -to sdram_dq[1]
set_location_assignment PIN_P14 -to sdram_dq[0]
set_location_assignment PIN_G15 -to sdram_dqm[1]
set_location_assignment PIN_J14 -to sdram_dqm[0]
set_location_assignment PIN_K11 -to sdram_ras_n
set_location_assignment PIN_J13 -to sdram_we_n
set_location_assignment PIN_F6 -to vga_out_b[4]
set_location_assignment PIN_E5 -to vga_out_b[3]
set_location_assignment PIN_D3 -to vga_out_b[2]
set_location_assignment PIN_D4 -to vga_out_b[1]
set_location_assignment PIN_C3 -to vga_out_b[0]
set_location_assignment PIN_J6 -to vga_out_g[5]
set_location_assignment PIN_L8 -to vga_out_g[4]
set_location_assignment PIN_K8 -to vga_out_g[3]
set_location_assignment PIN_F7 -to vga_out_g[2]
set_location_assignment PIN_G5 -to vga_out_g[1]
set_location_assignment PIN_F5 -to vga_out_g[0]
set_location_assignment PIN_L6 -to vga_out_hs
set_location_assignment PIN_L4 -to vga_out_r[4]
set_location_assignment PIN_L3 -to vga_out_r[3]
set_location_assignment PIN_L7 -to vga_out_r[2]
set_location_assignment PIN_K5 -to vga_out_r[1]
set_location_assignment PIN_K6 -to vga_out_r[0]
set_location_assignment PIN_N3 -to vga_out_vs
set_location_assignment PIN_J2 -to cmos_db[7]
set_location_assignment PIN_J1 -to cmos_db[6]
set_location_assignment PIN_N5 -to cmos_db[5]
set_location_assignment PIN_L1 -to cmos_db[4]
set_location_assignment PIN_M1 -to cmos_db[3]
set_location_assignment PIN_G2 -to cmos_db[2]
set_location_assignment PIN_M6 -to cmos_db[1]
set_location_assignment PIN_L2 -to cmos_db[0]
set_location_assignment PIN_K1 -to cmos_href
set_location_assignment PIN_G1 -to cmos_pclk
set_location_assignment PIN_F1 -to cmos_scl
set_location_assignment PIN_F3 -to cmos_sda
set_location_assignment PIN_F2 -to cmos_vsync
set_location_assignment PIN_K2 -to cmos_xclk
set_location_assignment PIN_N6 -to cmos_rst_n
set_location_assignment PIN_M7 -to cmos_pwdn
