`timescale 1ns/1ps

module decrementador8(
    output wire [7:0] result,
    output wire cout,
    input wire [7:0] A
);

    subtractor8 decremento(
        .result(result),
        .cout(cout),
        .A(A),
        .B(8'b00000001)
    );

endmodule