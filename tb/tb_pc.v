`timescale 1ns/1ps

module tb_pc;

reg clk;
reg reset;

reg [31:0] pc_next;

wire [31:0] pc_current;


pc uut (

    .clk(clk),
    .reset(reset),

    .pc_next(pc_next),

    .pc_current(pc_current)

);


// CLOCK
always #5 clk = ~clk;


initial begin

    $dumpfile("pc_dump.vcd");
    $dumpvars(0, tb_pc);

    clk = 0;

    reset = 1;
    pc_next = 0;

    #10;

    reset = 0;

    // PC = 4
    pc_next = 32'd4;

    #10;

    // PC = 8
    pc_next = 32'd8;

    #10;

    // PC = 12
    pc_next = 32'd12;

    #10;

    $finish;

end

endmodule