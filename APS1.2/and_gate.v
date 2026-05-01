module and_gate (
  input a, b,
  output out);
  wire c;
  nand (c, a, b);
  nand (out, c, c);
 
endmodule