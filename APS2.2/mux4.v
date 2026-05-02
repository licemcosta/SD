`timescale 1ns/1ps

module mux4(
    output wire out,

    input wire in0,
    input wire in1,
    input wire in2,
    input wire in3,

    input wire [1:0] sel
);

    wire mux_esquerda;
    wire mux_direita;

    // Primeiro nível
    mux2 mux0(
        .out(mux_esquerda),
        .in0(in0),
        .in1(in1),
        .sel(sel[0])
    );

    mux2 mux1(
        .out(mux_direita),
        .in0(in2),
        .in1(in3),
        .sel(sel[0])
    );

    // Segundo nível
    mux2 mux2_final(
        .out(out),
        .in0(mux_esquerda),
        .in1(mux_direita),
        .sel(sel[1])
    );

endmodule