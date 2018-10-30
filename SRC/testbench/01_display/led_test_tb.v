`timescale 1ns/1ns 
module led_test_tb; 
reg clk; 
reg rst_n; 
wire[3:0] led; 
 
initial 
begin 
  $display("hello alinx") ; 
  clk = 1'b0; 
  rst_n = 1'b0; 
  #100 rst_n = 1'b1; 
  $display("rst_n = %d", rst_n) ;   
end 
 
always#10 clk = ~clk;//50Mhz 
led_test dut 
( 
  .clk           (clk), 
  .rst_n         (rst_n), 
  .led           (led) 
); 
endmodule 