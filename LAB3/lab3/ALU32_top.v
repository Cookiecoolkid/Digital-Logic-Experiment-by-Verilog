`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 22:03:44
// Design Name: 
// Module Name: ALU32_top
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


module ALU32_top(
output reg [6:0] segs,           //七段数码管字形输出
output reg [7:0] AN,            //七段数码管显示32位运算结果 
output  [15:0] result_l,       //32位运算结果
output  zero,             //结果为0标志位
input   [3:0] data_a,           //4位数据输入，重复8次后送到ALU端口A   
input   [3:0] data_b,           //4位数据输入，重复8次后送到ALU端口B  
input   [3:0] aluctr,        //4位ALU操作控制信号
input   clk
); 
//add your code here
reg [27:0] counter0;
reg [27:0] counter1;
reg [3:0] number;
wire [31:0] result;
ALU32 alu(.dataa({8{data_a}}),.datab({8{data_b}}),.aluctr(aluctr),.zero(zero),.result(result));
assign result_l = result[15:0];

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