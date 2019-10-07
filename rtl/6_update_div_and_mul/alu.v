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

	output div_stall	//
    );
	wire [63:0] y_simple, div_result, mul_result;
	assign y = (alu_control == `ALU_SIGNED_DIV || alu_control == `ALU_UNSIGNED_DIV) ? div_result :
			   (alu_control == `ALU_UNSIGNED_MULT || alu_control == `ALU_SIGNED_MULT) ? mul_result:
				y_simple;
	
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
	wire sign;
	wire vaild;
	wire ready;

	assign sign = (alu_control == `ALU_SIGNED_DIV) ? 1'b1 : 1'b0;
	assign vaild = (alu_control == `ALU_SIGNED_DIV || alu_control == `ALU_UNSIGNED_DIV) ? 1'b1 : 1'b0;

	div_radix2 DIV(
		.clk(~clk),
		.rst(rst),
		.a(a),  //divident
		.b(b),  //divisor
		.valid(vaild),
		.sign(sign),   //1 signed

		// .ready(ready),
		.div_stall(div_stall),
		.result(div_result)
	);

	//multiply
	wire mul_sign;
	assign mul_sign = (alu_control == `ALU_SIGNED_MULT) ? 1'b1 : 1'b0;
	mul_booth2 MUL(
		.a(a),
		.b(b),
		.sign(mul_sign),   //1:signed

		.result(mul_result)
	);
	
endmodule

