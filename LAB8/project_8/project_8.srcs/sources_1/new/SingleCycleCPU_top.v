`timescale 1ns / 1ps


module SingleCycleCPU_top(
input CLK100MHZ,
input [8:0] a0,
input reset,
output [15:0] a0_out
);
    
wire [31:0] iaddr,idataout;
wire iclk;
wire [31:0] daddr,ddataout,ddatain;
wire drdclk, dwrclk, dwe;
wire [2:0]  dop;
wire [15:0] cpudbgdata;
reg clk;reg [2:0]couter;
   always @(posedge CLK100MHZ)begin
    if(couter == 3)begin
        couter <= 0;
        clk <= ~clk;
    end
    else begin
        couter <= couter + 1;
        clk <= clk;
    end
   end
   
   SingleCycleCPU  mycpu_top(
   .a0({24'h000000, a0}),
.clock(clk), .reset(reset), 
				 .InstrMemaddr(iaddr), .InstrMemdataout(idataout), .InstrMemclk(iclk), 
				 .DataMemaddr(daddr), .DataMemdataout(ddataout), .DataMemdatain(ddatain), .DataMemrdclk(drdclk),
				  .DataMemwrclk(dwrclk), .DataMemop(dop), .DataMemwe(dwe),  .dbgdata(cpudbgdata)); 
// instrucation memory
 InstrMem myinstrmem_top(.instr(idataout),.addr(iaddr),.InstrMemEn(1'b1),.clk(iclk)	);
//data memory	
DataMem mydatamem_top(.dataout(ddataout), .clk(dwrclk),  .we(dwe),  .MemOp(dop), .datain(ddatain),.addr(daddr[15:0])); 
    
    assign a0_out = mycpu_top.myregfile.regfiles[10][15:0];
    wire [31:0]a0out;
    assign a0out = mycpu_top.myregfile.regfiles[10];
    
endmodule
