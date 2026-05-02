`timescale 1ns/1ps

module mux2(
    output wire out,
    input wire in0,
    input wire in1,
    input wire sel
);

    wire sel_not;
    wire and0_out;
    wire and1_out;

    // ~sel
    not_gate not0(
        .a(sel),
        .out(sel_not)
    );

    // in0 & ~sel
    and_gate and0(
        .a(in0),
        .b(sel_not),
        .out(and0_out)
    );

    // in1 & sel
    and_gate and1(
        .a(in1),
        .b(sel),
        .out(and1_out)
    );

    // saída final
    or_gate or0(
        .a(and0_out),
        .b(and1_out),
        .out(out)
    );

endmodule