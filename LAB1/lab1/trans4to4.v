`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/09 20:14:55
// Design Name: 
// Module Name: trans4to4
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

module trans4to4(
    output reg [2:0] Y0,Y1,Y2,Y3,
    input   [2:0] D0,D1,D2,D3,
    input   [1:0] S
); 
// add your code here
always @(*)begin
        Y0 = 3'b000;
        Y1 = 3'b000;
        Y2 = 3'b000;
        Y3 = 3'b000;
        case(S)
        2'b00: Y0 = D0;
        2'b01: Y1 = D1;
        2'b10: Y2 = D2;
        2'b11: Y3 = D3;
        endcase
    end

endmodule
