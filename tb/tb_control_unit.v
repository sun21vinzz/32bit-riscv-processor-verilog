`timescale 1ns/1ps

module tb_control_unit;

reg [6:0] opcode;

wire RegWrite;
wire MemRead;
wire MemWrite;
wire ALUSrc;
wire Branch;

wire [1:0] ALUOp;


control_unit uut (

    .opcode(opcode),

    .RegWrite(RegWrite),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .ALUSrc(ALUSrc),
    .Branch(Branch),

    .ALUOp(ALUOp)

);


initial begin

    $dumpfile("control_dump.vcd");
    $dumpvars(0, tb_control_unit);

    // R-TYPE
    opcode = 7'b0110011;

    #10;

    // I-TYPE
    opcode = 7'b0010011;

    #10;

    // LOAD
    opcode = 7'b0000011;

    #10;

    // STORE
    opcode = 7'b0100011;

    #10;

    // BRANCH
    opcode = 7'b1100011;

    #10;

    $finish;

end

endmodule