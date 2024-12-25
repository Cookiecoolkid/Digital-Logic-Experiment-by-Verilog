`timescale 1ns / 1ps

module mem8b(
   output reg [7:0] dataout,   //输出数据
   input cs,                   //片选信号，高电平有效。有效时，存储器正常工作
   input clk,                   //时钟信号
   input we,                   //存储器写使能信号，高电平时允许写入数据
   input [7:0] datain,        //下输入数据
   input [15:0] addr,          //16位存储器地址，存储容量64KB
   input BTNC
);
(* ram_style="block" *)  reg [7:0] ram [2**16-1:0];  //设置使用块RAM综合成存储器
// Add your code here
reg [7:0] intmp;
reg [7:0] outtmp; 
integer i;
always @(posedge clk)       //上升沿读取存储器数据，先读取地址中数据
begin
       outtmp <= ram[addr]; 
end
always @(negedge clk)// or posedge BTNC)     //下降沿写入存储器数据，写使能有效时，写入数据
begin
    if (we) begin ram[addr] = intmp; end
    //if (BTNC) begin for(i = 0; i < 16; i = i + 1) ram[i] = 0; end
end

always @(*)
begin
    if(cs)
    begin
     if (~we)   //读取操作
            dataout = outtmp;
     else    //写入操作
            intmp = datain;
    end
end
endmodule
