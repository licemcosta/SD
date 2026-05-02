module not_gate (
    input a,
    output out
);

    nand(out, a, a);

endmodule