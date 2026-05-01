`timescale 1ns/1ps

module adder8(
    output wire [7:0] soma,
    output wire cout,
    input wire [7:0] A,
    input wire [7:0] B,
    input wire cin
);

    wire c1;
    wire c2;
    wire c3;
    wire c4;
    wire c5;
    wire c6;
    wire c7;

    // Bit 0
    fulladder fa0(
        .soma(soma[0]),
        .cout(c1),
        .a(A[0]),
        .b(B[0]),
        .cin(cin)
    );

    // Bit 1
    fulladder fa1(
        .soma(soma[1]),
        .cout(c2),
        .a(A[1]),
        .b(B[1]),
        .cin(c1)
    );

    // Bit 2
    fulladder fa2(
        .soma(soma[2]),
        .cout(c3),
        .a(A[2]),
        .b(B[2]),
        .cin(c2)
    );

    // Bit 3
    fulladder fa3(
        .soma(soma[3]),
        .cout(c4),
        .a(A[3]),
        .b(B[3]),
        .cin(c3)
    );

    // Bit 4
    fulladder fa4(
        .soma(soma[4]),
        .cout(c5),
        .a(A[4]),
        .b(B[4]),
        .cin(c4)
    );

    // Bit 5
    fulladder fa5(
        .soma(soma[5]),
        .cout(c6),
        .a(A[5]),
        .b(B[5]),
        .cin(c5)
    );

    // Bit 6
    fulladder fa6(
        .soma(soma[6]),
        .cout(c7),
        .a(A[6]),
        .b(B[6]),
        .cin(c6)
    );

    // Bit 7
    fulladder fa7(
        .soma(soma[7]),
        .cout(cout),
        .a(A[7]),
        .b(B[7]),
        .cin(c7)
    );

endmodule