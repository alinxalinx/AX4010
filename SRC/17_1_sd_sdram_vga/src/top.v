//////////////////////////////////////////////////////////////////////////////////
//  sd bmp vga display                                                          //
//                                                                              //
//  Author: meisq                                                               //
//          msq@qq.com                                                          //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//          heijin                                                              //
//     WEB: http://www.alinx.cn/                                                //
//     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2017/6/21    meisq         1.0         Original
//*******************************************************************************/
module top(
	input                       clk,
	input                       rst_n,
	input                       key1,
	output [5:0]                seg_sel,
	output [7:0]                seg_data,	
	output                      vga_out_hs,        //vga horizontal synchronization
	output                      vga_out_vs,        //vga vertical synchronization
	output[4:0]                 vga_out_r,         //vga red
	output[5:0]                 vga_out_g,         //vga green
	output[4:0]                 vga_out_b,         //vga blue
	output                      sd_ncs,            //SD card chip select (SPI mode)
	output                      sd_dclk,           //SD card clock
	output                      sd_mosi,           //SD card controller data output
	input                       sd_miso,           //SD card controller data input
	output                      sdram_clk,         //sdram clock
	output                      sdram_cke,         //sdram clock enable
	output                      sdram_cs_n,        //sdram chip select
	output                      sdram_we_n,        //sdram write enable
	output                      sdram_cas_n,       //sdram column address strobe
	output                      sdram_ras_n,       //sdram row address strobe
	output[1:0]                 sdram_dqm,         //sdram data enable
	output[1:0]                 sdram_ba,          //sdram bank address
	output[12:0]                sdram_addr,        //sdram address
	inout[15:0]                 sdram_dq           //sdram data
);

parameter MEM_DATA_BITS         = 16  ;            //external memory user interface data width
parameter ADDR_BITS             = 24  ;            //external memory user interface address width
parameter BUSRT_BITS            = 10  ;            //external memory user interface burst width
wire                            wr_burst_data_req;
wire                            wr_burst_finish;
wire                            rd_burst_finish;
wire                            rd_burst_req;
wire                            wr_burst_req;
wire[BUSRT_BITS - 1:0]          rd_burst_len;
wire[BUSRT_BITS - 1:0]          wr_burst_len;
wire[ADDR_BITS - 1:0]           rd_burst_addr;
wire[ADDR_BITS - 1:0]           wr_burst_addr;
wire                            rd_burst_data_valid;
wire[MEM_DATA_BITS - 1 : 0]     rd_burst_data;
wire[MEM_DATA_BITS - 1 : 0]     wr_burst_data;
wire                            read_req;
wire                            read_req_ack;
wire                            read_en;
wire[15:0]                      read_data;
wire                            write_en;
wire[15:0]                      write_data;
wire                            write_req;
wire                            write_req_ack;
wire                            sd_card_clk;       //SD card controller clock
wire                            ext_mem_clk;       //external memory clock
wire                            video_clk;         //video pixel clock
wire                            hs;
wire                            vs;
wire[15:0]                      vout_data;
wire[3:0]                       state_code;
wire[6:0]                       seg_data_0;

assign vga_out_hs = hs;
assign vga_out_vs = vs;
assign vga_out_r  = vout_data[15:11];
assign vga_out_g  = vout_data[10:5];
assign vga_out_b  = vout_data[4:0];
assign sdram_clk = ext_mem_clk;
//generate SD card controller clock and  SDRAM controller clock
sys_pll sys_pll_m0(
	.inclk0                     (clk),
	.c0                         (sd_card_clk),
	.c1                         (ext_mem_clk)
	);
//generate video pixel clock	
video_pll video_pll_m0(
	.inclk0                     (clk),
	.c0                         (video_clk)
	);
//SD card BMP file read
sd_card_bmp  sd_card_bmp_m0(
	.clk                        (sd_card_clk              ),
	.rst                        (~rst_n                   ),
	.key                        (key1                     ),
	.state_code                 (state_code               ),
	.bmp_width                  (16'd1024                 ),  //image width
	.write_req                  (write_req                ),
	.write_req_ack              (write_req_ack            ),
	.write_en                   (write_en                 ),
	.write_data                 (write_data               ),
	.SD_nCS                     (sd_ncs                   ),
	.SD_DCLK                    (sd_dclk                  ),
	.SD_MOSI                    (sd_mosi                  ),
	.SD_MISO                    (sd_miso                  )
);
//with a digital display of state_code
// 0:SD card is initializing
// 1:wait for the button to press
// 2:looking for the BMP file
// 3:reading
seg_decoder seg_decoder_m0(
	.bin_data                   (state_code               ),
	.seg_data                   (seg_data_0               )
);

seg_scan seg_scan_m0(
	.clk                        (clk                      ),
	.rst_n                      (rst_n                    ),
	.seg_sel                    (seg_sel                  ),
	.seg_data                   (seg_data                 ),
	.seg_data_0                 ({1'b1,7'b1111_111}       ),
	.seg_data_1                 ({1'b1,7'b1111_111}       ),
	.seg_data_2                 ({1'b1,7'b1111_111}       ),
	.seg_data_3                 ({1'b1,7'b1111_111}       ),
	.seg_data_4                 ({1'b1,7'b1111_111}       ),
	.seg_data_5                 ({1'b1,seg_data_0}        )
);

video_timing_data video_timing_data_m0
(
	.video_clk                  (video_clk                ),
	.rst                        (~rst_n                   ),
	.read_req                   (read_req                 ),
	.read_req_ack               (read_req_ack             ),
	.read_en                    (read_en                  ),
	.read_data                  (read_data                ),
	.hs                         (hs                       ),
	.vs                         (vs                       ),
	.de                         (                         ),
	.vout_data                  (vout_data                )
);
//video frame data read-write control
frame_read_write frame_read_write_m0
(
	.rst                        (~rst_n                   ),
	.mem_clk                    (ext_mem_clk              ),
	.rd_burst_req               (rd_burst_req             ),
	.rd_burst_len               (rd_burst_len             ),
	.rd_burst_addr              (rd_burst_addr            ),
	.rd_burst_data_valid        (rd_burst_data_valid      ),
	.rd_burst_data              (rd_burst_data            ),
	.rd_burst_finish            (rd_burst_finish          ),
	.read_clk                   (video_clk                ),
	.read_req                   (read_req                 ),
	.read_req_ack               (read_req_ack             ),
	.read_finish                (                         ),
	.read_addr_0                (24'd0                    ), //first frame base address is 0
	.read_addr_1                (24'd0                    ),
	.read_addr_2                (24'd0                    ),
	.read_addr_3                (24'd0                    ),
	.read_addr_index            (2'd0                     ), //use only read_addr_0
	.read_len                   (24'd786432               ), //frame size
	.read_en                    (read_en                  ),
	.read_data                  (read_data                ),

	.wr_burst_req               (wr_burst_req             ),
	.wr_burst_len               (wr_burst_len             ),
	.wr_burst_addr              (wr_burst_addr            ),
	.wr_burst_data_req          (wr_burst_data_req        ),
	.wr_burst_data              (wr_burst_data            ),
	.wr_burst_finish            (wr_burst_finish          ),
	.write_clk                  (sd_card_clk              ),
	.write_req                  (write_req                ),
	.write_req_ack              (write_req_ack            ),
	.write_finish               (                         ),
	.write_addr_0               (24'd0                    ),
	.write_addr_1               (24'd0                    ),
	.write_addr_2               (24'd0                    ),
	.write_addr_3               (24'd0                    ),
	.write_addr_index           (2'd0                     ), //use only write_addr_0
	.write_len                  (24'd786432               ), //frame size
	.write_en                   (write_en                 ),
	.write_data                 (write_data               )
);
//sdram controller
sdram_core sdram_core_m0
(
	.rst                        (~rst_n                   ),
	.clk                        (ext_mem_clk              ),
	.rd_burst_req               (rd_burst_req             ),
	.rd_burst_len               (rd_burst_len             ),
	.rd_burst_addr              (rd_burst_addr            ),
	.rd_burst_data_valid        (rd_burst_data_valid      ),
	.rd_burst_data              (rd_burst_data            ),
	.rd_burst_finish            (rd_burst_finish          ),
	.wr_burst_req               (wr_burst_req             ),
	.wr_burst_len               (wr_burst_len             ),
	.wr_burst_addr              (wr_burst_addr            ),
	.wr_burst_data_req          (wr_burst_data_req        ),
	.wr_burst_data              (wr_burst_data            ),
	.wr_burst_finish            (wr_burst_finish          ),
	.sdram_cke                  (sdram_cke                ),
	.sdram_cs_n                 (sdram_cs_n               ),
	.sdram_ras_n                (sdram_ras_n              ),
	.sdram_cas_n                (sdram_cas_n              ),
	.sdram_we_n                 (sdram_we_n               ),
	.sdram_dqm                  (sdram_dqm                ),
	.sdram_ba                   (sdram_ba                 ),
	.sdram_addr                 (sdram_addr               ),
	.sdram_dq                   (sdram_dq                 )
);
endmodule