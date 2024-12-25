`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 10:13:11
// Design Name: 
// Module Name: rv32m_top
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


module rv32m_top(
    output  [15:0] rd_l,        //运算结果的低16位
    output out_valid,         //运算结束时，输出为1
    output in_error,          //运算出错时，输出为1
    output reg [6:0] segs,        // 7段数值
    output reg [7:0] AN,         //数码管选择
    input clk,               //时钟 
    input rst,               //复位信号，低有效
    input [3:0] x,           //操作数1，重复8次后作为rs1
    input [3:0] y,           //操作数2，重复8次后作为rs2
    input [2:0] funct3,        //3位功能选择码
    input in_valid          //输入为1时，表示数据就绪，开始运算
    );
    //add your code here
reg [27:0] counter0;
reg [27:0] counter1;
reg [3:0] number;
wire [31:0] result;

rv32m rv32mtop(.rd(result),.out_valid(out_valid),.in_error(in_error),.clk(clk),.rst(rst),
               .rs1({8{x}}),.rs2({8{y}}),.funct3(funct3),.in_valid(in_valid));
assign rd_l = result[15:0];

always @ (posedge clk) begin
  // 分频出 500 Hz
  if (counter0 == 200000) begin
      counter1 <= counter1 + 1; 
      counter0 <= 0;
      end      
  else begin 
      counter0 <= counter0 + 1;
  end
  if (counter1 == 8) counter1 <= 0;
  
   case (counter1)
      3'b000: AN <= ~(8'b00000001); 
      3'b001: AN <= ~(8'b00000010);
      3'b010: AN <= ~(8'b00000100);
      3'b011: AN <= ~(8'b00001000);
      3'b100: AN <= ~(8'b00010000);
      3'b101: AN <= ~(8'b00100000);
      3'b110: AN <= ~(8'b01000000);
      3'b111: AN <= ~(8'b10000000); 
  endcase
  case (counter1)
      3'b000: number <= result[3:0]; 
      3'b001: number <= result[7:4];
      3'b010: number <= result[11:8];
      3'b011: number <= result[15:12];
      3'b100: number <= result[19:16];
      3'b101: number <= result[23:20];
      3'b110: number <= result[27:24];
      3'b111: number <= result[31:28];
  endcase
  case(number)
            4'b0000:segs <= 7'b1000000;
            4'b0001:segs <= 7'b1111001;
            4'b0010:segs <= 7'b0100100;
            4'b0011:segs <= 7'b0110000; 
            4'b0100:segs <= 7'b0011001;
            4'b0101:segs <= 7'b0010010;
            4'b0110:segs <= 7'b0000010;
            4'b0111:segs <= 7'b1111000;
            4'b1000:segs <= 7'b0000000;
            4'b1001:segs <= 7'b0010000;
            4'b1010:segs <= 7'b0001000;
            4'b1011:segs <= 7'b0000011;
            4'b1100:segs <= 7'b1000110;
            4'b1101:segs <= 7'b0100001;
            4'b1110:segs <= 7'b0000110;
            4'b1111:segs <= 7'b0001110;
   endcase
end
endmodule
