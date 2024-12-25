`timescale 1ns / 1ps

module xterm(
    input CLK100MHZ,   //系统时钟信号
    input PS2_CLK,    //来自键盘的时钟信号
    input PS2_DATA,  //来自键盘的串行数据位
    input BTNC,      //Reset
    output [6:0]SEG,
    output [7:0]AN,     //显示扫描码和ASCII码
    output [15:0] LED,   //显示键盘状态
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output  VGA_HS,
    output  VGA_VS
);
wire [31:0] keycode;
wire [7:0] count;
wire [7:0] asciicode;
wire ready;
// Add your code here
KeyboardSim(.CLK100MHZ(CLK100MHZ),.PS2_CLK(PS2_CLK),.PS2_DATA(PS2_DATA),.BTNC(BTNC),.SEG(SEG),.AN(AN),.LED(LED),.keycode(keycode),
            .count(count),.tmp_ascii(asciicode),.ready(ready));
VGASim(.CLK100MHZ(CLK100MHZ),.BTNC(BTNC),.VGA_R(VGA_R),.VGA_G(VGA_G),.VGA_B(VGA_B),.VGA_HS(VGA_HS),.VGA_VS(VGA_VS),
       .count(count),.asciicode(asciicode),.ready(ready));
endmodule

