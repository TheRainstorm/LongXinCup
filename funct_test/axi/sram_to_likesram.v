`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/24 16:51:45
// Design Name: 
// Module Name: sram_to_likesram
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


module sram_to_likesram(
	input  wire        clk,
	input  wire        resetn,
	input  wire [5 :0] tlb_exce,

	output wire        stall,

	input  wire        inst_sram_en,
	input  wire [ 3:0] inst_sram_wen,
	input  wire [31:0] inst_sram_addr,
	input  wire [31:0] inst_sram_wdata,
	output wire [31:0] inst_sram_rdata,

	input  wire        data_sram_en,
	input  wire [ 3:0] data_sram_wen,
	input  wire [31:0] data_sram_addr,
	input  wire [31:0] data_sram_wdata,
	output wire [31:0] data_sram_rdata,

	output wire        inst_req,
	output wire        inst_wr,
	output wire [1 :0] inst_size,
	output wire [31:0] inst_addr,
	output wire [31:0] inst_wdata,
    input  wire [31:0] inst_rdata,
    input  wire        inst_addr_ok,
    input  wire        inst_data_ok,

    output wire        data_req,
    output wire        data_wr,
    output wire [1 :0] data_size,
    output wire [31:0] data_addr,
	output wire [31:0] data_wdata,  
    input  wire [31:0] data_rdata,
    input  wire        data_addr_ok,
    input  wire        data_data_ok 
);

assign inst_wr = |inst_sram_wen;
assign inst_size = 2'b10;
assign inst_wdata = inst_sram_wdata;

reg         inst_en, data_en;
reg         data_wen;
reg         inst_aok, data_aok;
reg  [31:0] inst_areg, data_areg;
reg  [31:0] inst_dreg, data_dreg;
reg  [31:0] data_data_reg;
reg  [ 1:0] data_size_reg;
reg  [ 1:0] data_addr_reg;
wire [ 2:0] wnum;

always @(posedge clk)
begin
	if (resetn)
	begin
		inst_en <= (inst_data_ok && inst_aok && inst_en)?1'b0 : 
				   (inst_sram_en)? 1'b1 : inst_en; //inst_sram_en;
		inst_areg <= (inst_data_ok && inst_aok && inst_en)?32'd0 : 
					 (inst_sram_en)?inst_sram_addr : inst_areg; //inst_sram_addr;
		inst_dreg <= (inst_data_ok && inst_en)?inst_sram_rdata : inst_dreg;
		data_en <= (data_data_ok && data_en)?1'b0 : data_sram_en;
		data_areg <= (data_data_ok && data_en)?32'd0 : data_sram_addr;
		data_dreg <= (data_data_ok && data_en)?data_rdata : data_dreg;
		data_wen <= (data_data_ok && data_wen && data_en)?1'b0: |data_sram_wen;
		data_size_reg <= (2'b00 & {2{wnum == 3'd1}}) |
						 (2'b01 & {2{wnum == 3'd2}} ) |
						 (2'b10 & {2{wnum == 3'd3 || wnum == 3'd4}});
		data_addr_reg <= (2'b00 & {2{(wnum == 3'd1 && data_sram_wen[0]) || (wnum == 3'd2 && data_sram_wen[0]) || (wnum == 3'd4)}}) |
						 (2'b01 & {2{(wnum == 3'd1 && data_sram_wen[1]) || (wnum == 3'd3 && data_sram_wen[3])}}) |
						 (2'b11 & {2{wnum == 3'd1 && data_sram_wen[3]}});
		data_data_reg <= (data_data_ok && data_wen) ? 32'd0 : data_sram_wdata;
		inst_aok <= (inst_aok && inst_data_ok)? 1'b0 :
					(inst_en && inst_addr_ok)? 1'b1 : inst_aok;
		data_aok <= (data_aok && data_data_ok)? 1'b0 :
					(data_en && data_addr_ok)? 1'b1 : data_aok;
	end
	else 
	begin
		inst_en <= 1'b0;
		inst_areg <= 32'd0;
		data_en <= 1'b0;
		data_areg <= 32'd0;
		data_wen <= 1'b0;
		data_size_reg <= 2'b00;
		data_addr_reg <= 2'b00;
		data_data_reg <= 32'd0;
		inst_aok <= 1'b0;
		data_aok <= 1'b0;
	end
end

assign inst_req  = inst_en;
assign inst_addr = inst_areg;
assign inst_sram_rdata = (inst_en && inst_data_ok && inst_aok)?inst_rdata : 32'd0;

assign wnum = data_sram_wen[0] + data_sram_wen[1] + data_sram_wen[2] + data_sram_wen[3];
assign data_req = data_en;
assign data_wr = data_wen;
assign data_size = data_size_reg;
assign data_addr = {data_areg[31:2], data_addr_reg};
assign data_wdata = data_data_reg;
assign data_sram_rdata = (data_data_ok && data_sram_en && data_aok) ?data_rdata : data_dreg; 

assign stall = (~|tlb_exce && ((~(inst_aok && inst_data_ok) && inst_sram_en) || (~data_data_ok && data_sram_en)))? 1'b1 : 1'b0;
endmodule