`timescale 1ns/1ps

module not8(
    output wire [7:0] out,
    input wire [7:0] A
);

    not_gate not0(.a(A[0]), .out(out[0]));
    not_gate not1(.a(A[1]), .out(out[1]));
    not_gate not2(.a(A[2]), .out(out[2]));
    not_gate not3(.a(A[3]), .out(out[3]));
    not_gate not4(.a(A[4]), .out(out[4]));
    not_gate not5(.a(A[5]), .out(out[5]));
    not_gate not6(.a(A[6]), .out(out[6]));
    not_gate not7(.a(A[7]), .out(out[7]));

endmodule