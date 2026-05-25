`timescale 1ns/1ps

module tb_alu_control;

reg [1:0] ALUOp;
reg [2:0] funct3;
reg [6:0] funct7;

wire [2:0] alu_sel;


alu_control uut (

    .ALUOp(ALUOp),
    .funct3(funct3),
    .funct7(funct7),

    .alu_sel(alu_sel)

);


initial begin

    $dumpfile("alu_control_dump.vcd");
    $dumpvars(0, tb_alu_control);
     //ADD
    ALUOp = 2'b10;
    funct3 = 3'b000;
    funct7 = 7'b0000000;

    #10;
     //SUB
    funct7 = 7'b0100000;

    #10;

    // AND
    funct3 = 3'b111;
    funct7 = 7'b0000000;

    #10;

    // OR
    funct3 = 3'b110;

    #10;

    // XOR
    funct3 = 3'b100;

    #10;

    $finish;

end

endmodule