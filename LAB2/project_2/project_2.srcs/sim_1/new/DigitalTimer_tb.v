`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 16:01:48
// Design Name: 
// Module Name: DigitalTimer_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module DigitalTimer_tb( );

  reg clk;
  reg rst;
  reg [1:0] s;
  reg [3:0] data_h;
  reg [3:0] data_l;
  wire [6:0] segs;
  wire [7:0] an;
  wire [2:0] ledout;

  DigitalTimer dut(
    .clk(clk),
    .rst(rst),
    .s(s),
    .data_h(data_h),
    .data_l(data_l),
    .segs(segs),
    .an(an),
    .ledout(ledout)
  );
 
  initial begin
    clk = 0;
    forever #1 clk = ~clk;
  end

  initial begin
    rst = 0;
    // 进入计时模式
    #1 s = 2'b00;
    data_h = 4'b0000;
    data_l = 4'b0000;
    // 模拟时间
    #40;
    
    // 设置小时
    #20 s = 2'b01;
    data_h = 4'b0001;
    data_l = 4'b0010;

    // 设置分钟
    #20 s = 2'b10;
    data_h = 4'b0010;
    data_l = 4'b0100;

    // 设置秒
    #20 s = 2'b11;
    data_h = 4'b0011;
    data_l = 4'b0110;
    
    rst = 1;
    s = 2'b00;
    data_h = 4'b0000;
    data_l = 4'b0000;
    #10 rst = 0;

    $finish;
  end

endmodule
