`timescale 1ns / 1ps

module ForwardUnit(
    // input clk, rst,
    input [4: 0]EX_rs1,
    input [4: 0]EX_rs2,
    input [4: 0]WB_rd,
    input [4: 0]M_rd,
    input WB_RegWr,
    input WB_MemtoReg,
    input M_RegWr,
    input M_MemtoReg,
    
    input [31:0]WB_Memout,
    input [31:0]WB_ALUResult,
    input [31:0]M_ALUResult,
    input [31:0]M_Memout,
    
    
    output reg Forwardrs1, Forwardrs2,
    output reg [31:0]ForwardData1, ForwardData2,
    output reg stallIF,
    output reg stallID,
    output reg stallEX,
    output reg flushEX
    );    

always @ (*) begin
    if (M_MemtoReg && M_rd != 5'b00000 && (EX_rs1 == M_rd || EX_rs2 == M_rd)) begin stallIF = 1; stallID = 1; stallEX = 1; flushEX = 1; end
    else begin stallIF = 0; stallID = 0; stallEX = 0; flushEX = 0; end
    
    ForwardData1 = 32'h00000000;
    ForwardData2 = 32'h00000000;
    Forwardrs1 = 0;
    Forwardrs2 = 0;
    if(WB_RegWr && WB_rd != 5'b00000 && (EX_rs1 == WB_rd || EX_rs2 == WB_rd)) begin
        if(EX_rs1 == WB_rd) begin ForwardData1 =(WB_MemtoReg == 1 ? WB_Memout : WB_ALUResult); Forwardrs1 = 1; end 
        if(EX_rs2 == WB_rd) begin ForwardData2 =(WB_MemtoReg == 1 ? WB_Memout : WB_ALUResult); Forwardrs2 = 1; end
    end
    if(M_RegWr && M_rd != 5'b00000 && (EX_rs1 == M_rd || EX_rs2 == M_rd)) begin
        if(EX_rs1 == M_rd) begin ForwardData1 = (M_MemtoReg == 1 ? M_Memout : M_ALUResult); Forwardrs1 = 1; end 
        if(EX_rs2 == M_rd) begin ForwardData2 = (M_MemtoReg == 1 ? M_Memout : M_ALUResult); Forwardrs2 = 1; end
    end
end 
endmodule
