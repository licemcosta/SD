`timescale 1ns/1ps

module and8(
    output wire [7:0] out,
    input wire [7:0] A,
    input wire [7:0] B
);

    and_gate and0(.a(A[0]), .b(B[0]), .out(out[0]));
    and_gate and1(.a(A[1]), .b(B[1]), .out(out[1]));
    and_gate and2(.a(A[2]), .b(B[2]), .out(out[2]));
    and_gate and3(.a(A[3]), .b(B[3]), .out(out[3]));
    and_gate and4(.a(A[4]), .b(B[4]), .out(out[4]));
    and_gate and5(.a(A[5]), .b(B[5]), .out(out[5]));
    and_gate and6(.a(A[6]), .b(B[6]), .out(out[6]));
    and_gate and7(.a(A[7]), .b(B[7]), .out(out[7]));

endmodule