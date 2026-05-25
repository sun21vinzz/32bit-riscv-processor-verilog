`timescale 1ns/1ps

module tb_instruction_memory;

reg [31:0] address;

wire [31:0] instruction;


instruction_memory uut (

    .address(address),
    .instruction(instruction)

);


initial begin

    $dumpfile("instr_mem_dump.vcd");
    $dumpvars(0, tb_instruction_memory);

    // FETCH INSTRUCTION 0
    address = 0;

    #10;

    // FETCH INSTRUCTION 1
    address = 4;

    #10;

    // FETCH INSTRUCTION 2
    address = 8;

    #10;

    $finish;

end

endmodule