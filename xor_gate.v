module xor_gate (
  input a, b,
  output out);
  wire c, d, e, f;
  nand (c, a, a);
  nand (d, b, b);
  nand (e, c, b);
  nand (f, d, a);
  nand (out, e, f);
endmodule
