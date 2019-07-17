module top(
	input clk,rst,

	output [31:0] Write_data,
	output [31:0] Mem_addr,
	output [3:0] Mem_write_en
	);
	
    wire [31:0] PC;
	wire Mem_en;
	wire stallD;

	wire [31:0] Read_data;
	wire [31:0] Instr;
	
	mips MIPS(
		.clk(clk),.rst(rst),

		.Read_data(Read_data),
		.Instr(Instr),
		//IM
        .PC(PC),
	    .stallD(stallD),
        //DM
        .Mem_addr(Mem_addr),
        .Write_data(Write_data),
        .Mem_en(Mem_en),
        .Mem_write_en(Mem_write_en),
	);
	
//指令存储器
	inst_ram Inst_RAM (
		.clka(clk),    //时钟取反
		.ena(~stallD),      // 使能
		.wea(4'b0),      // 写使能
		.addra(PC),  // 读地址
		.dina(32'b0),    //  写数据

		.douta(Instr)  // 读数据
	);
	
//数据存储器
	data_ram Data_RAM (
		.clka(~clk),   
		.ena(Mem_en),      // 使能
		.wea(Mem_write_en),      //写使能
		.addra(Mem_addr),  // 读地址
		.dina(Write_data),    // 写数据

		.douta(Read_data)  // 读数据
	);

endmodule