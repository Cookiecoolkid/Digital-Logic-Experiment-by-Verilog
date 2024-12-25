`timescale 1ns / 1ps

module VGADraw(
    input   wire            pix_clk  ,
    input   wire    [11:0]   pix_x  ,
    input   wire    [11:0]   pix_y  ,
    input   wire            pix_valid,    
    output  wire     [11:0]  pix_data,    
    
    input [2:0] mode,
    input [127:0] asciiarray
);
    
wire[18:0] ram_addr;
reg [11:0] tmp_pix_data;
wire [11:0] graph_pix_data;
reg [27:0] cntdyn;
reg [7:0] temp_r, temp_g, temp_b, temp_d;

assign ram_addr = pix_y * 640 + pix_x;
vga_mem my_pic(.clka(pix_clk),.ena(1'b1),.wea(1'b0),.addra({ram_addr}),.dina(12'd0),.douta(graph_pix_data));

always @(posedge pix_clk) // ¸ºÔð»æÍ¼
begin
    cntdyn <= cntdyn + 1;
    temp_d <= cntdyn >> 20;
    temp_r <= pix_x - pix_y -temp_d;
    temp_g <= pix_x - temp_d;
    temp_b <= pix_y - temp_d;
end
assign  pix_data = (mode == 0 ?(asciiarray[127 - ((pix_y % 16) * 8 + pix_x % 8)] == 1'b1 ?
                    12'b111111111111 : 12'b000000000000): (mode == 1 ? graph_pix_data : 
                    (mode == 2 ? {temp_r[7:4], temp_g[7:4], temp_b[7:4]}:(asciiarray[127 - ((pix_y % 16) * 8 + pix_x % 8)] == 1'b1 ?
                    12'b111111111111 : 12'b000000000000))));
//assign  pix_data = (asciiarray[127 - ((pix_y % 16) * 8 + pix_x % 8)] == 1'b1 ?
//                    12'b111111111111 : 12'b000000000000);
                    
endmodule