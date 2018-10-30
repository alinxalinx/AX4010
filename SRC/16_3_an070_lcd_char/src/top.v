//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
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
//2017/7/20                    1.0          Original
//*******************************************************************************/
module top(
	input                       clk,
	input                       rst_n,
	output                      lcd_dclk,
	output                      lcd_hs,      //lcd horizontal synchronization
	output                      lcd_vs,      //lcd vertical synchronization
	output                      lcd_de,      //lcd data valid
	output[7:0]                 lcd_r,       //lcd red
	output[7:0]                 lcd_g,       //lcd green
	output[7:0]                 lcd_b,       //lcd blue
	output                      lcd_pwm      //LCD PWM backlight control

);

wire                            video_clk;
wire                            video_hs;
wire                            video_vs;
wire                            video_de;
wire[7:0]                       video_r;
wire[7:0]                       video_g;
wire[7:0]                       video_b;

wire                            osd_hs;
wire                            osd_vs;
wire                            osd_de;
wire[7:0]                       osd_r;
wire[7:0]                       osd_g;
wire[7:0]                       osd_b;


assign lcd_hs       = osd_hs;
assign lcd_vs       = osd_vs;
assign lcd_de       = osd_de;
assign lcd_dclk     = ~video_clk; //to meet the timing requirements, the clock is inverting
assign lcd_r        = osd_r[7:0];
assign lcd_g        = osd_g[7:0];
assign lcd_b        = osd_b[7:0];


//generate video pixel clock
video_pll video_pll_m0(
	.inclk0                (clk                        ),
	.c0                    (video_clk                  )
);

ax_pwm#(.N(22)) //pass new parameters
ax_pwm_m0(
	.clk                        (clk                      ),
	.rst                        (~rst_n                   ),
	.period                     (22'd17                   ),
	.duty                       (22'd1258291              ),
	.pwm_out                    (lcd_pwm                  )
);

color_bar color_bar_m0(
	.clk                   (video_clk                  ),
	.rst                   (~rst_n                     ),
	.hs                    (video_hs                   ),
	.vs                    (video_vs                   ),
	.de                    (video_de                   ),
	.rgb_r                 (video_r                    ),
	.rgb_g                 (video_g                    ),
	.rgb_b                 (video_b                    )
);
osd_display  osd_display_m0(
	.rst_n                 (rst_n                      ),
	.pclk                  (video_clk                  ),
	.i_hs                  (video_hs                   ),
	.i_vs                  (video_vs                   ),
	.i_de                  (video_de                   ),
	.i_data                ({video_r,video_g,video_b}  ),
	.o_hs                  (osd_hs                     ),
	.o_vs                  (osd_vs                     ),
	.o_de                  (osd_de                     ),
	.o_data                ({osd_r,osd_g,osd_b}        )
);

endmodule