`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 11:14:03
// Design Name: 
// Module Name: mul_32b
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


module mul_32b(
    output [63:0] p,         //乘积
    output out_valid,        //高电平有效时，表示乘法器结束工作
    input clk,              //时钟 
    input rst_n,             //复位信号，低有效
    input [31:0] x,           //被乘数
    input [31:0] y,           //乘数
    input in_valid           //高电平有效，表示乘法器开始工作
); 
//add your code here
 reg sub;
 reg [5:0] cn; //移位次数寄存器
 always @(posedge clk or posedge rst_n) begin
     if (rst_n) cn <= 0;
     else if (in_valid) cn <= 33;
     else if (cn != 0) cn <= cn - 1;
 end
 reg signed [31:0] rx, ry, rp; //加法器操作数和部分积
 wire signed [31:0] Add_result; //加法运算结果
 wire cout; //进位
 reg signed [31:0] numberb;

 //reg sub;
 // adder32 是 32 位加法器模块的实例化，参见实验 3 的设计
 Adder32 my_adder(.f(Add_result),.cout(cout),.x(rp),.y(numberb),.sub(sub));
//always @ (posedge clk or posedge rst_n) begin

//end
always @(posedge clk or posedge rst_n) begin
    if (cn >= 33) begin
        if (y[0]) begin
            numberb <= rx;
            sub <= 1;
        end
        else begin numberb <= 0; sub <= 0; end
    end else begin
        case (ry[1:0])
            2'b01: begin
                numberb <= rx;
                sub <= 0;
            end
            2'b10: begin
                numberb <= rx;
                sub <= 1;
            end
            default: begin numberb <= 0; sub <= 0; end 
        endcase
    end

        if (rst_n) begin
            {rp, ry, rx} <= 0;
        end else if (in_valid) begin
            {rp, ry, rx} <= {32'b0, y, x};
        end else if (cn <= 32 && cn >= 1) begin
            {rp, ry} <= $signed({Add_result, ry}) >>> 1;
        end
    end
    
    assign out_valid = (cn == 0);
    assign p = {rp, ry};
endmodule
