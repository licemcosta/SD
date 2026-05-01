`timescale 1ns/1ps
module tb_andgate;
  
  reg a, b;
  wire out;
  and_gate uut (
  .a(a),
    .b(b),
    .out(out));
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_andgate);
    $display("A B|OUT");
    $monitor("%b %b|%b", a, b, out);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10
    $finish;
  end
endmodule
