`timescale 1ns/1ps

module xor8(
    output wire [7:0] out,
    input wire [7:0] A,
    input wire [7:0] B
);

    xor_gate xor0(.a(A[0]), .b(B[0]), .out(out[0]));
    xor_gate xor1(.a(A[1]), .b(B[1]), .out(out[1]));
    xor_gate xor2(.a(A[2]), .b(B[2]), .out(out[2]));
    xor_gate xor3(.a(A[3]), .b(B[3]), .out(out[3]));
    xor_gate xor4(.a(A[4]), .b(B[4]), .out(out[4]));
    xor_gate xor5(.a(A[5]), .b(B[5]), .out(out[5]));
    xor_gate xor6(.a(A[6]), .b(B[6]), .out(out[6]));
    xor_gate xor7(.a(A[7]), .b(B[7]), .out(out[7]));

endmodule