`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 10:12:50
// Design Name: 
// Module Name: rv32m
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


module rv32m(
    output reg [31:0] rd,        //运算结果
    output reg out_valid,         //运算结束时，输出为1
    output in_error,          //运算出错时，输出为1
    input clk,               //时钟 
    input rst,               //复位信号，低有效
    input [31:0] rs1,          //操作数rs1
    input [31:0] rs2,          //操作数rs2
    input [2:0] funct3,        //3位功能选择码
    input in_valid           //输入为1时，表示数据就绪，开始除法运算
    );
    //add your code here
    wire [63:0]result0;
    wire [63:0]result1;
    wire [31:0]result2;
    wire [31:0]result3;
    wire [31:0]result4;
    wire [31:0]result5;
    wire [63:0]result6;

    wire out_valid0, out_valid1, out_valid2, out_valid3, out_valid6;
    wire in_error0, in_error1, in_error2;
    reg [63:0] tmp;
    mul_32u rv_mul32u(.clk(clk), .rst(rst),.x(rs1),.y(rs2),.in_valid(in_valid), .p(result0),.out_valid(out_valid0));
    mul_32b rv_mul32b(.clk(clk), .rst_n(rst),.x(rs1),.y(rs2),.in_valid(in_valid), .p(result1),.out_valid(out_valid1));
    mul_32b rv_mul32b1(.clk(clk), .rst_n(rst),.x(rs1),.y({0,rs2[30:0]}),.in_valid(in_valid), .p(result6),.out_valid(out_valid6));
    div_32u rv_div32u(.Q(result2),.R(result3),.out_valid(out_valid2),.in_error(in_error0),.clk(clk),
    .rst(rst), .X(rs1),.Y(rs2),.in_valid(in_valid));
    div_32b rv_div32b(.Q(result4),.R(result5),.out_valid(out_valid3),.in_error(in_error1),.clk(clk),.rst(rst), .X(rs1),.Y(rs2),.in_valid(in_valid));
    assign in_error = in_error0 | in_error1;
    always @ (*) begin
       case(funct3) 
          3'b000: begin rd = result0[31:0]; out_valid = out_valid0; end
          3'b001: begin rd = result1[63:32]; out_valid = out_valid1;end
          3'b010: begin tmp = (result6 + (rs2[31]? ($signed(rs1) <<< 31):0)); rd = tmp[63:32]; out_valid = out_valid6;end
          3'b011: begin rd = result0[63:32]; out_valid = out_valid0;end
          3'b100: begin rd = result4; out_valid = out_valid3;end
          3'b101: begin rd = result2; out_valid = out_valid2;end
          3'b110: begin rd = result5; out_valid = out_valid3;end
          3'b111: begin rd = result3; out_valid = out_valid2;end
       endcase
    end
endmodule
