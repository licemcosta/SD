`timescale 1ns/1ps

module or8(
    output wire [7:0] out,
    input wire [7:0] A,
    input wire [7:0] B
);

    or_gate or0(.a(A[0]), .b(B[0]), .out(out[0]));
    or_gate or1(.a(A[1]), .b(B[1]), .out(out[1]));
    or_gate or2(.a(A[2]), .b(B[2]), .out(out[2]));
    or_gate or3(.a(A[3]), .b(B[3]), .out(out[3]));
    or_gate or4(.a(A[4]), .b(B[4]), .out(out[4]));
    or_gate or5(.a(A[5]), .b(B[5]), .out(out[5]));
    or_gate or6(.a(A[6]), .b(B[6]), .out(out[6]));
    or_gate or7(.a(A[7]), .b(B[7]), .out(out[7]));

endmodule