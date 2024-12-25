`timescale 1ns / 1ps

module PipelineCPU_top(
    input CLK100MHZ,
    input [11:0] a,
    input reset,
    output [6:0] seg,
    output [7:0] an,
    output [15:0] a_out                                                                                
);

wire [31:0] iaddr,idataout;
wire iclk;
wire [31:0] daddr,ddataout,ddatain;
wire drdclk, dwrclk, dwe;
wire [2:0]  dop;
wire [15:0] cpudbgdata;
wire done;
wire [31:0] aout;
/*
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
*/
rv32ip pipeline_cpu(
    .clk(CLK100MHZ),
    .rst(reset),
	.imemaddr(iaddr),		//imem的地址
	.imemdataout(idataout),	//imem读取到的数据
	.imemclk(iclk),			//imem的时钟
	.dmemaddr(daddr),		//dmem的地址
	.dmemdataout(ddataout),	//dmem读取到的数据
	.dmemdatain(ddatain),	//需要写入dmem的数据
	.dmemrdclk(drdclk),			//dmem读口时钟
	.dmemwrclk(dwrclk),			//dmem写口时钟
	.dmemop(dop),		//3'b000:sb 3'b001:sh 3'b010://sw
	.dmemwe(dwe),				//dmem写有效
	.dbg_data(cpudbgdata),	    //当前完成的指令的PC
	.a({20'h00000, a}),
	.done(done)				//读取到Instr为0xdead10cc时认为程序结束
	//.wb					//当前周期是否有指令完成
);
// instrucation memory
testmem instructions(.address(iaddr[17:2]),	.clock(iclk), .data(32'b0), .wren(1'b0), .q(idataout));

//data memory	
dmem mydatamem_top(.dataout(ddataout), .rdclk(drdclk), .wrclk(dwrclk),  .we(dwe),  .memop(dop), .datain(ddatain),.addr(daddr)); 


seg7decimal seg7decimal(.x({16'h0000, a_out}), .clk(CLK100MHZ), .seg(seg), .an(an), .dp(1'b0));
assign a_out = pipeline_cpu.ID.Regfiles.registers[10][15:0];
assign aout = pipeline_cpu.ID.Regfiles.registers[10];


endmodule
