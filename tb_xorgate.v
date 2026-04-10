`timescale 1ns/1ps
module tb_xorgate;
  
  reg a, b;
  wire out;
  xor_gate uut (
  .a(a),
    .b(b),
    .out(out));
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_xorgate);
    $display("A B|OUT");
    $monitor("%b %b|%b", a, b, out);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10
    $finish;
  end
endmodule

