module or_gate (
  input a, b,
  output out);
  wire c
  wire d
  nand (c, a, a);
  nand (d, b, b);
  nand (out, c, d);
endmodule
