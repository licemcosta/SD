`timescale 1ns/1ps

module fulladder(
    output wire soma,
    output wire cout,
    input wire a,
    input wire b,
    input wire cin
);

    wire xor1_saida;
    wire and1_saida;
    wire and2_saida;

    // soma parcial
    xor_gate xor1(
        .a(a),
        .b(b),
        .out(xor1_saida)
    );

    // soma final
    xor_gate xor2(
        .a(xor1_saida),
        .b(cin),
        .out(soma)
    );

    // carry 1
    and_gate and1(
        .a(a),
        .b(b),
        .out(and1_saida)
    );

    // carry 2
    AND and2(
        .a(cin),
        .b(xor1_saida),
        .out(and2_saida)
    );

    // carry final
    OR or1(
        .a(and1_saida),
        .b(and2_saida),
        .out(cout)
    );

endmodule