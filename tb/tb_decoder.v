`timescale 1ns/1ps

module tb_decoder;

reg [31:0] instruction;

wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] funct3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;


decoder uut (

    .instruction(instruction),

    .opcode(opcode),
    .rd(rd),
    .funct3(funct3),
    .rs1(rs1),
    .rs2(rs2),
    .funct7(funct7)

);


initial begin

    $dumpfile("decoder_dump.vcd");
    $dumpvars(0, tb_decoder);

    // ADD x3, x1, x2
    instruction = 32'h002081B3;

    #10;

    $finish;

end

endmodule