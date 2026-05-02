`timescale 1ns/1ps

module subtractor8(
    output wire [7:0] result,
    output wire cout,
    input wire [7:0] A,
    input wire [7:0] B
);

    wire [7:0] B_invertido;

    // Inverte B
    not_gate not0(.a(B[0]), .out(B_invertido[0]));
    not_gate not1(.a(B[1]), .out(B_invertido[1]));
    not_gate not2(.a(B[2]), .out(B_invertido[2]));
    not_gate not3(.a(B[3]), .out(B_invertido[3]));
    not_gate not4(.a(B[4]), .out(B_invertido[4]));
    not_gate not5(.a(B[5]), .out(B_invertido[5]));
    not_gate not6(.a(B[6]), .out(B_invertido[6]));
    not_gate not7(.a(B[7]), .out(B_invertido[7]));

    // A + (~B) + 1
    adder8 soma_sub(
        .soma(result),
        .cout(cout),
        .A(A),
        .B(B_invertido),
        .cin(1'b1)
    );

endmodule