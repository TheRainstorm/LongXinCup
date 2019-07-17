module alu_helper(
	input [31:0] a,b,
    input [63:0] hilo,
    input [4:0] sa,
	input [4:0] alu_control,
	output reg [63:0] y,
	
	output overflow,
	output zero
    );

    always @(*) begin
        case(alu_control)
            `ALU_AND:       y <= a & b;
            `ALU_ANDN:      y <= a & ~ b;
            `ALU_OR:        y <= a | b;
            `ALU_ORN:       y <= a | ~ b;
            `ALU_NOR:       y <= ~(a | b);
            `ALU_XOR:       y <= a ^ b;

            `ALU_ADD:       y <= {32{a[31]}, a[31:0]} + {32{b[31]}, b[31:0]};
            `ALU_ADDU:      y <= a + b;
            `ALU_SUB:       y <= {32{a[31]}, a[31:0]} - {32{b[31]}, b[31:0]};
            `ALU_SUBU:      y <= a - b;

            `ALU_SLT:       y <= $signed(a) < $signed(b);
            `ALU_SLTU:      y <= a < b;

            `ALU_SLL:       y <= b << a;
            `ALU_SRL:       y <= b >> a;
            `ALU_SRA:       y <= $signed(b) >>> a;
            `ALU_SLL_SA:    y <= b << sa;
            `ALU_SRL_SA:    y <= b >> sa;
            `ALU_SRA_SA:    y <= $signed(b) >>> sa;

            `ALU_UNSIGNED_MULT: y <= a * b;
            `ALU_SIGNED_MULT:   y <= $signed(a) * $signed(b);

            `ALU_MFHI:      y <= {32'd0, hilo[63:32]};
            `ALU_MFLO:      y <= {32'd0, hilo[31:0]};
            `ALU_MTHI:      y <= {a[31:0], hilo[31:0]};
            `ALU_MTLO:      y <= {hilo[63:32], a[31:0]};

            `ALU_PLUS8:     y <= a + 32'b4;
            default:    y <= 64'd0;
        endcase
    end

    assign overflow = y[32] != y[31];   //有符号数加法的情况下正确
    assign zero = ~|y;
endmodule