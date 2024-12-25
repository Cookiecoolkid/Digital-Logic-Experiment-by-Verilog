module M(
    input clk,
    input rst,
    
    input MemWr,
    input [2:0] MemOp,

    input done, 
    input [31:0] Di,
    input [31:0] ALUout,
    input [31:0] currentPC,

    input MemtoReg,
    input RegWr,
    input [4:0] Rd,
   
    output reg MemtoReg_o,
    output reg RegWr_o,
    output reg [4:0] Rd_o,
    output reg [31:0] ALUout_o,
    output reg done_o,
    output reg [31:0] PC_o,

	output [31:0] dmemaddr,
	input [31:0] dmemdataout,
	output [31:0] dmemdatain,
	output dmemrdclk,
	output dmemwrclk,
	output [2:0] dmemop,
	output dmemwe,
    
    output [31:0] Do
);
    reg we;
    reg [2:0] MemOp_i;
    reg [31:0] Di_i;

    reg [31:0] addr;

    reg [31:0] currentPC_i;

    always@(negedge clk or posedge rst) begin
        if(rst) begin
            MemtoReg_o <= 0;
            RegWr_o <= 0;
            Rd_o <= 0;
            ALUout_o <= 0;
            we <= 0;
            MemOp_i <= 0;
            Di_i <= 0;
            addr <= 0;
            currentPC_i <= 0;
            done_o <= 0;
            PC_o <= 0;
            end
        else begin
            MemtoReg_o <= MemtoReg;
            RegWr_o <= RegWr;
            Rd_o <= Rd;
            ALUout_o <= ALUout;
            we <= MemWr;
            MemOp_i <= MemOp;
            Di_i <= Di;
            addr <= ALUout;
            currentPC_i <= currentPC;
            done_o <= done;
            PC_o <= currentPC;
        end

    end

	assign dmemaddr = addr;
	assign Do = dmemdataout;
	assign dmemdatain = Di_i;
	assign dmemrdclk = clk;
	assign dmemwrclk = clk;
	assign dmemop = MemOp_i;
	assign dmemwe = we & (~done);
    
endmodule