`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 22:03:26
// Design Name: 
// Module Name: ALU32
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
module control_sign(
  input [3:0] aluctr,
  output reg SUBctr,
  output reg SIGctr,
  output reg ALctr,
  output reg SFTctr,
  output reg [3:0] OPctr
);
always @ (*) begin
  case (aluctr) 
  4'b0000: begin SUBctr = 1'b0; OPctr = 3'b000; end
  4'b0001: begin ALctr = 1'b0; SFTctr = 1'b1; OPctr = 3'b100; end
  4'b0010: begin SUBctr = 1'b1; SIGctr = 1'b1; OPctr = 3'b110; end
  4'b0011: begin SUBctr = 1'b1; SIGctr = 1'b0; OPctr = 3'b110; end
  4'b0100: begin OPctr = 3'b011; end
  4'b0101: begin ALctr = 1'b0; SFTctr = 1'b0; OPctr = 3'b100; end
  4'b0110: begin OPctr = 3'b010; end
  4'b0111: begin OPctr = 3'b001; end
  4'b1000: begin SUBctr = 1'b1; OPctr = 3'b000; end
  4'b1101: begin ALctr = 1'b1; SFTctr = 1'b0; OPctr = 3'b100; end
  4'b1111: begin OPctr = 3'b101; end
  endcase
end
endmodule

module ALU32(
//output  SUBctr,
//output [31:0] exSUBctr,
output  reg [31:0] result,      //32位运算结果
output  zero,               //结果为0标志位
input   [31:0] dataa,       //32位数据输入，送到ALU端口A   
input   [31:0] datab,       //32位数据输入，送到ALU端口B  
input   [3:0] aluctr        //4位ALU操作控制信号
); 
//add your code here
wire SUBctr;
wire SIGctr;
wire ALctr;
wire SFTctr;
wire [3:0] OPctr;
wire CF;
wire OF;
wire SF;
wire ZF;
wire cout;

wire [31:0] exSUBctr;
wire [31:0] numb;
wire [31:0] result0;
wire [31:0] result1;
wire [31:0] result2;
wire [31:0] result3;
wire [31:0] result4;
wire [31:0] result5;
wire [31:0] result6;
wire SIGa;
wire SIGb;
wire cmp;
wire [4:0] shamt;
assign result1 = dataa & datab;
assign result2 = dataa | datab;
assign result3 = dataa ^ datab;
assign result5 = datab;
assign exSUBctr = {32{SUBctr}};
assign numb = datab ^ exSUBctr;
assign zero = ZF;
assign SIGa = SUBctr ^ cout;
assign SIGb = OF ^ SF;
assign cmp = SIGctr? SIGb:SIGa;
assign result6 = {31'b0, cmp};
assign shamt = datab[4:0];
control_sign ctr_sign(.aluctr(aluctr),.SUBctr(SUBctr),.SIGctr(SIGctr),.ALctr(ALctr),.SFTctr(SFTctr),.OPctr(OPctr));
Adder32 my_adder(.f(result0),.OF(OF),.SF(SF),.ZF(ZF),.CF(CF),.cout(cout),.x(dataa),.y(numb),.sub(SUBctr));
barrelsft32 my_barrel(.dout(result4),.din(dataa),.shamt(shamt),.LR(SFTctr),.AL(ALctr));

always @ (*) begin
   case (OPctr)
   3'b000: result = result0;
   3'b001: result = result1;
   3'b010: result = result2;
   3'b011: result = result3;
   3'b100: result = result4;
   3'b101: result = result5;
   3'b110: result = result6;
   endcase
end
endmodule
