`include "aludefines.vh"

module alu(
	input clk,rst,
	input [31:0] a,b,
	input [63:0] hilo,
	input [4:0] alu_control,
    input [4:0] sa,

	output [63:0] y,
	output overflow,
	output zero,

	output reg div_stall	//
    );
	wire [63:0] y_simple, div_result;
	assign y = (alu_control == `ALU_SIGNED_DIV || alu_control == `ALU_UNSIGNED_DIV) ?
				div_result : y_simple;
	
	alu_helper Alu_Helper(
		.a(a),.b(b),
    	.hilo(hilo),
		.sa(sa),
		.alu_control(alu_control),

		.y(y_simple),
		.overflow(overflow),
		.zero(zero)
	);


	//divide
	reg start_div, signed_div;
	wire div_ready;

	always @(*)
		if (rst) begin
		div_stall = 0;
		start_div = 0;
		signed_div = 0;
		end else if (alu_control == `ALU_SIGNED_DIV || alu_control == `ALU_UNSIGNED_DIV)
		if (div_ready == 1'b0) begin
			start_div = 1'b1;
			signed_div = (alu_control == `ALU_SIGNED_DIV);
			div_stall = 1'b1;
		end else if (div_ready == 1'b1) begin
			start_div = 1'b0;
			signed_div = (alu_control == `ALU_SIGNED_DIV);
			div_stall = 1'b0;
		end else begin
			start_div = 1'b0; 
			signed_div = (alu_control == `ALU_SIGNED_DIV);
			div_stall = 1'b0;
		end
		else begin
		start_div = 1'b0; 
		signed_div = 1'b0;
		div_stall = 1'b0;
		end

	div divE(// Outputs
			.result_o                     (div_result),
			.ready_o                      (div_ready),
			// Inputs
			.clk                        (clk),
			.rst                        (rst),
			.signed_div_i                 (signed_div),
			.opdata1_i                          (a),
			.opdata2_i                          (b),
			.start_i                      (start_div),
			.annul_i                      (1'b0));
	
endmodule

