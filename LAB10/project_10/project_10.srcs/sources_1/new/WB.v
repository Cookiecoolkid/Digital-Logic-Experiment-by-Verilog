`timescale 1ns / 1ps

module WB(
    input clk, rst, flush,
    input MemtoReg,
    input RegWr,
    input done,
    input [4:0] Rd,
    input [31:0] Do,
    input [31:0] ALUout,
    input [31:0] currentPC,
    output reg [31:0] Di,
    output reg WE,
    output reg [4:0] Rw,
    output reg wb,
    output reg done_o,
    output reg [31:0] PC_o
);
    
    always @(negedge clk or posedge rst) begin
        if (rst) begin 
            Di <= 0;
            WE <= 0;
            Rw <= 0;
            wb <= 0;
            done_o <= 0;
            PC_o <= 0;
            end
        else begin
            Di <= (MemtoReg) ? Do : ALUout;
            WE <= RegWr & (~done);
            Rw <= Rd;
            wb <= 1'b1;
            done_o <= done;
            PC_o <= currentPC;
        end
    end
endmodule