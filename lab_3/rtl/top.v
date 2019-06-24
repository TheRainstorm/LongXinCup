module top(
	input clk,rst,

	output [31:0] Write_data,
	output [31:0] ALU_out,
	output mem_write_en
	);
	
	// wire [31:0] ALU_out;
 //    // wire [31:0] Write_data;
    wire [31:0] PC;
	// wire mem_en,mem_write_en;


	wire [31:0] Read_data;
	wire [31:0] Instr;
	
	mips MIPS(
		.clk(clk),.rst(rst),

		.Read_data(Read_data),
		.Instr(Instr),

		.ALU_out(ALU_out),
		.Write_data(Write_data),
		.PC(PC),
		.mem_en(mem_en),
		.mem_write_en(mem_write_en)
	);
	
//指令存储器
	inst_ram Inst_RAM (
		.clka(clk),    // input wire clka  
		.ena(1'b1),      // input wire ena  使能
		.wea(1'b0),      // input wire [3 : 0] wea  写使能
		.addra(PC),  // input wire [4 : 0] addra   读地址
		.dina(32'b0),    // input wire [31 : 0] dina    写数据

		.douta(Instr)  // output wire [31 : 0] douta    读数据
	);
	
//数据存储器
	data_ram Data_RAM (
		.clka(clk),    // input wire clka
		.ena(mem_en),      // input wire ena  使能
		.wea(mem_write_en),      // input wire [3 : 0] wea   写使能
		.addra(ALU_out),  // input wire [9 : 0] addra  读地址
		.dina(Write_data),    // input wire [31 : 0] dina    写数据

		.douta(Read_data)  // output wire [31 : 0] douta  读数据
	);

endmodule