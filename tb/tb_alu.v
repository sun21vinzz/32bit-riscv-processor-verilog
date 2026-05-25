`timescale 1ns/1ps

module tb_alu;

reg [31:0] a;
reg [31:0] b;
reg [2:0] alu_sel;

wire [31:0] result;
wire zero;

alu uut (
    .a(a),
    .b(b),
    .alu_sel(alu_sel),
    .result(result),
    .zero(zero)
);

initial begin

    $dumpfile("alu_dump.vcd");
    $dumpvars(0, tb_alu);

    // ADD
    a = 32'd10;
    b = 32'd5;
    alu_sel = 3'b000;
    #10;

    // SUB
    alu_sel = 3'b001;
    #10;

    // AND
    alu_sel = 3'b010;
    #10;

    // OR
    alu_sel = 3'b011;
    #10;

    // XOR
    alu_sel = 3'b100;
    #10;

    $finish;
end

endmodule