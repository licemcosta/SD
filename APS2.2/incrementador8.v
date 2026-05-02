`timescale 1ns/1ps

module incrementador8(
    output wire [7:0] result,
    output wire cout,
    input wire [7:0] A
);

    adder8 incremento(
        .soma(result),
        .cout(cout),
        .A(A),
        .B(8'b00000000),
        .cin(1'b1)
    );

endmodule