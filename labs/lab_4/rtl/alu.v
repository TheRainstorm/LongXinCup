module alu(
	input wire[31:0] a,b,
	input wire[2:0] op,
	output reg[31:0] y,
	output reg overflow,
	output wire zero
    );

	//op	作用
	
	//010	a + b
	//110	a - b
	//000	a & b
	//001	a | b
	//100	a & ~b
	//101	a | ~b
	//111	a < b (严格小于）
	//011	未定义

	wire[31:0] s,bout;
	assign bout = op[2] ? ~b : b;
	assign s = a + bout + op[2];
	always @(*) begin
		case (op[1:0])
			2'b00: y <= a & bout;
			2'b01: y <= a | bout;
			2'b10: y <= s;
			2'b11: y <= {31'b0,s[31]};
			default : y <= 32'b0;
		endcase	
	end
	assign zero = (y == 32'b0);

	always @(*) begin
		case (op[2:1])
			2'b01:overflow <= a[31] & b[31] & ~s[31] |
							~a[31] & ~b[31] & s[31];
			2'b11:overflow <= ~a[31] & b[31] & s[31] |
							a[31] & ~b[31] & ~s[31];
			default : overflow <= 1'b0;
		endcase	
	end
endmodule