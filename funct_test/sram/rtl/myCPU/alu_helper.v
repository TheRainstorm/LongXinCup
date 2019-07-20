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
            `ALU_AND:       y <= {{32{a[31]}}, a[31:0]} & {{32{b[31]}}, b[31:0]};
            `ALU_ANDN:      y <= {{32{a[31]}}, a[31:0]} &~{{32{b[31]}}, b[31:0]};
            `ALU_OR:        y <= {{32{a[31]}}, a[31:0]} | {{32{b[31]}}, b[31:0]};
            `ALU_ORN:       y <= {{32{a[31]}}, a[31:0]} |~{{32{b[31]}}, b[31:0]};
            `ALU_NOR:       y <=~({{32{a[31]}}, a[31:0]} | {{32{b[31]}}, b[31:0]});
            `ALU_XOR:       y <= {{32{a[31]}}, a[31:0]} ^ {{32{b[31]}}, b[31:0]};

            `ALU_ADD:       y <= {{32{a[31]}}, a[31:0]} + {{32{b[31]}}, b[31:0]};
            `ALU_ADDU:      y <= {32'b0, a }+ {32'b0, b}; 
            `ALU_SUB:       y <= {{32{a[31]}}, a[31:0]} - {{32{b[31]}}, b[31:0]};
            `ALU_SUBU:      y <= {32'b0, a} - {32'b0, b};

            `ALU_SLT:       y <= $signed(a) < $signed(b);
            `ALU_SLTU:      y <= {32'b0, a }< {32'b0, b};

            `ALU_SLL:       y <= {32'b0, b }<< a;
            `ALU_SRL:       y <= {32'b0, b }>> a;
            `ALU_SRA:       y <= $signed(b) >>> a;
            `ALU_SLL_SA:    y <= {32'b0, b }<< sa;
            `ALU_SRL_SA:    y <= {32'b0, b }>> sa;
            `ALU_SRA_SA:    y <= $signed(b) >>> sa;

            `ALU_UNSIGNED_MULT: y <= {32'b0, a }* {32'b0, b};
            `ALU_SIGNED_MULT:   y <= $signed(a) * $signed(b);

            `ALU_LUI:       y <= {32'b0, b[15:0], 16'b0};
            `ALU_MFHI:      y <= {32'd0, hilo[63:32]};
            `ALU_MFLO:      y <= {32'd0, hilo[31:0]};
            `ALU_MTHI:      y <= {a[31:0], hilo[31:0]};
            `ALU_MTLO:      y <= {hilo[63:32], a[31:0]};

            `ALU_PC_PLUS8:     y <= {32'b0, a }+ 64'd4;
            default:    y <= 64'd0;
        endcase
    end

    assign overflow = (alu_control==`ALU_ADD || alu_control==`ALU_SUB) ? (y[32] != y[31]): 1'b0;//仅对于有符号数加减法需要判断溢出
     
    assign zero = ~|y;
endmodule