module alu_control(

    input [1:0] ALUOp,
    input [2:0] funct3,
    input [6:0] funct7,

    output reg [2:0] alu_sel

);

always @(*) begin

    case(ALUOp)

        // LOAD / STORE / ADDI
        2'b00:
            alu_sel = 3'b000; // ADD


        // BRANCH
        2'b01:
            alu_sel = 3'b001; // SUB


        // R-TYPE
        2'b10: begin

            case({funct7, funct3})

                // ADD
                10'b0000000000:
                    alu_sel = 3'b000;

                // SUB
                10'b0100000000:
                    alu_sel = 3'b001;

                // AND
                10'b0000000111:
                    alu_sel = 3'b010;

                // OR
                10'b0000000110:
                    alu_sel = 3'b011;

                // XOR
                10'b0000000100:
                    alu_sel = 3'b100;

                default:
                    alu_sel = 3'b000;

            endcase

        end

        default:
            alu_sel = 3'b000;

    endcase

end

endmodule