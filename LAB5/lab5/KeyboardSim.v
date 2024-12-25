`timescale 1ns / 1ps

module KeyboardSim(
    input CLK100MHZ,   //系统时钟信号
    input PS2_CLK,    //来自键盘的时钟信号
    input PS2_DATA,  //来自键盘的串行数据位
    input BTNC,      //Reset
    output [6:0]SEG,
    output [7:0]AN,
    output reg [15:0] LED,   //显示
    output [31:0] keycode,
    output [7:0] count,
    output reg [7:0]tmp_ascii,
    output ready
    );
// Add your code here
reg CLK50MHZ=0;    
//wire [31:0]keycode;
wire [31:0]seg7_data;
//wire [7:0]count;
wire [7:0]ascii;
//reg [7:0] tmp_ascii;
wire flag;
reg [1:0] onetap;
wire capslock;
wire numlock;

always @(posedge(CLK100MHZ))begin
    CLK50MHZ <= ~CLK50MHZ;
end

KeyBoardReceiver keyboard_uut(.reset(BTNC), .keycodeout(keycode[31:0]),.ready(ready),.clk(CLK50MHZ),.kb_clk(PS2_CLK),
.kb_data(PS2_DATA),.count(count),.capslock(capslock),.numlock(numlock));

seg7decimal sevenSeg (.x(seg7_data[31:0]), .clk(CLK100MHZ), .seg(SEG[6:0]), .an(AN[7:0]), .dp(0));
 
kbcode2ascii(.asciicode(ascii), .kbcode(keycode[7:0]));

always @ (posedge CLK50MHZ or posedge BTNC)
begin 
    if(keycode[15:8] != 240)
    begin
        case(keycode[7:0])
        31: begin LED[7:0] = ascii; LED[15] = 1; end
        13: begin LED[7:0] = ascii; LED[14] = 1; end
        88: begin LED[7:0] = ascii; end
        18: begin LED[7:0] = ascii; LED[12] = 1; end
        89: begin LED[7:0] = ascii; LED[12] = 1; end
        20: begin LED[7:0] = ascii; LED[11] = 1; end
        90: begin LED[7:0] = ascii; LED[10] = 1; end
        119: begin LED[7:0] = ascii;end
        102: begin LED[7:0] = ascii; LED[8] = 1; end
        default: begin LED[8:0] = 0; LED[12:10] = 0; LED[15:14] = 0; end
        endcase
    end
    LED[13] = capslock;
    LED[9] = numlock;
    if((capslock == 1'b1 || (keycode[15:8] != 240 && keycode[15:8] == 18)) && ascii >= 97 && ascii <= 122) tmp_ascii  = ascii - 32;
    else tmp_ascii = ascii;
    if (BTNC) tmp_ascii = 0;
end
assign seg7_data[31:24] = count; 
assign seg7_data[23:16] = keycode[15:8];
assign seg7_data[15:8] = keycode[7:0];
assign seg7_data[7:0] = tmp_ascii;
endmodule
