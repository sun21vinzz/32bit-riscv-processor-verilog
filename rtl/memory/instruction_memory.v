module instruction_memory(

    input [31:0] address,

    output [31:0] instruction

);

reg [31:0] memory [0:255];


// LOAD MACHINE CODE FILE
initial begin

    $readmemh("programs/machine_code/add_test.mem", memory);

end


// WORD ALIGNED ACCESS
assign instruction = memory[address[31:2]];

endmodule