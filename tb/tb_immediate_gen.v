`timescale 1ns/1ps

module tb_immediate_gen;

reg [31:0] instruction;

wire [31:0] imm_out;


immediate_gen uut (

    .instruction(instruction),
    .imm_out(imm_out)

);


initial begin

    $dumpfile("imm_gen_dump.vcd");
    $dumpvars(0, tb_immediate_gen);

    // ADDI x1, x0, 5
    instruction = 32'h00500093;

    #10;

    // SW x2, 8(x0)
    instruction = 32'h00202423;

    #10;

    // BEQ example
    instruction = 32'h00208663;

    #10;

    $finish;

end

endmodule