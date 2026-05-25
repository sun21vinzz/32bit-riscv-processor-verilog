`timescale 1ns/1ps

module tb_reg_file;

reg clk;
reg reg_write;

reg [4:0] rs1;
reg [4:0] rs2;
reg [4:0] rd;

reg [31:0] write_data;

wire [31:0] read_data1;
wire [31:0] read_data2;


// Instantiate Register File
reg_file uut (

    .clk(clk),
    .reg_write(reg_write),

    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),

    .write_data(write_data),

    .read_data1(read_data1),
    .read_data2(read_data2)

);


// Clock Generation
always #5 clk = ~clk;


initial begin

    $dumpfile("regfile_dump.vcd");
    $dumpvars(0, tb_reg_file);

    // INITIALIZE SIGNALS
    clk = 0;

    reg_write = 0;

    rs1 = 0;
    rs2 = 0;
    rd  = 0;

    write_data = 0;


    // -----------------------------------
    // WRITE 100 INTO x5
    // -----------------------------------

    #10;

    reg_write = 1;
    rd = 5;
    write_data = 32'd100;

    #10;


    // -----------------------------------
    // READ x5
    // -----------------------------------

    reg_write = 0;

    rs1 = 5;

    #10;


    // -----------------------------------
    // TRY WRITING INTO x0
    // x0 MUST STAY ZERO
    // -----------------------------------

    reg_write = 1;

    rd = 0;
    write_data = 32'd999;

    #10;


    // READ x0
    rs2 = 0;

    #10;


    $finish;

end

endmodule