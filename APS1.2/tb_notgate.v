`timescale 1ns/1ps
module tb_notgate;
  
  reg a;
  wire out;
  not_gate uut (
  .a(a),
    .out(out));
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_notgate);
    $display("A|OUT");
    $monitor("%b|%b", a, out);
    a = 0; #10;
    a = 1; #10;
    $finish;
  end
endmodule