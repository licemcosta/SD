`timescale 1ns/1ps

module ula(
    output wire [7:0] Result,
    output wire [3:0] NZVC,

    input wire [7:0] A,
    input wire [7:0] B,
    input wire [2:0] ALU_Sel
);

    // Resultados das operações
    wire [7:0] soma_out;
    wire [7:0] inc_out;
    wire [7:0] sub_out;
    wire [7:0] dec_out;

    wire [7:0] and_out;
    wire [7:0] or_out;
    wire [7:0] xor_out;
    wire [7:0] not_out;


    // Carries
    wire carry_soma;
    wire carry_inc;
    wire carry_sub;
    wire carry_dec;

 
    // Operações aritméticas
    adder8 soma(
        .soma(soma_out),
        .cout(carry_soma),
        .A(A),
        .B(B),
        .cin(1'b0)
    );

    incrementador8 incremento(
        .result(inc_out),
        .cout(carry_inc),
        .A(A)
    );

    subtractor8 subtracao(
        .result(sub_out),
        .cout(carry_sub),
        .A(A),
        .B(B)
    );

    decrementador8 decremento(
        .result(dec_out),
        .cout(carry_dec),
        .A(A)
    );

    // Operações lógicas
    and8 op_and(
        .out(and_out),
        .A(A),
        .B(B)
    );

    or8 op_or(
        .out(or_out),
        .A(A),
        .B(B)
    );

    xor8 op_xor(
        .out(xor_out),
        .A(A),
        .B(B)
    );

    not8 op_not(
        .out(not_out),
        .A(A)
    );

    // Saídas das MUX4
    wire [7:0] mux_arit;
    wire [7:0] mux_log;


    // MUX4 aritmética
    mux4 ma0(.out(mux_arit[0]), .in0(soma_out[0]), .in1(inc_out[0]), .in2(sub_out[0]), .in3(dec_out[0]), .sel(ALU_Sel[1:0]));
    mux4 ma1(.out(mux_arit[1]), .in0(soma_out[1]), .in1(inc_out[1]), .in2(sub_out[1]), .in3(dec_out[1]), .sel(ALU_Sel[1:0]));
    mux4 ma2(.out(mux_arit[2]), .in0(soma_out[2]), .in1(inc_out[2]), .in2(sub_out[2]), .in3(dec_out[2]), .sel(ALU_Sel[1:0]));
    mux4 ma3(.out(mux_arit[3]), .in0(soma_out[3]), .in1(inc_out[3]), .in2(sub_out[3]), .in3(dec_out[3]), .sel(ALU_Sel[1:0]));
    mux4 ma4(.out(mux_arit[4]), .in0(soma_out[4]), .in1(inc_out[4]), .in2(sub_out[4]), .in3(dec_out[4]), .sel(ALU_Sel[1:0]));
    mux4 ma5(.out(mux_arit[5]), .in0(soma_out[5]), .in1(inc_out[5]), .in2(sub_out[5]), .in3(dec_out[5]), .sel(ALU_Sel[1:0]));
    mux4 ma6(.out(mux_arit[6]), .in0(soma_out[6]), .in1(inc_out[6]), .in2(sub_out[6]), .in3(dec_out[6]), .sel(ALU_Sel[1:0]));
    mux4 ma7(.out(mux_arit[7]), .in0(soma_out[7]), .in1(inc_out[7]), .in2(sub_out[7]), .in3(dec_out[7]), .sel(ALU_Sel[1:0]));

    // MUX4 lógica
    mux4 ml0(.out(mux_log[0]), .in0(and_out[0]), .in1(or_out[0]), .in2(xor_out[0]), .in3(not_out[0]), .sel(ALU_Sel[1:0]));
    mux4 ml1(.out(mux_log[1]), .in0(and_out[1]), .in1(or_out[1]), .in2(xor_out[1]), .in3(not_out[1]), .sel(ALU_Sel[1:0]));
    mux4 ml2(.out(mux_log[2]), .in0(and_out[2]), .in1(or_out[2]), .in2(xor_out[2]), .in3(not_out[2]), .sel(ALU_Sel[1:0]));
    mux4 ml3(.out(mux_log[3]), .in0(and_out[3]), .in1(or_out[3]), .in2(xor_out[3]), .in3(not_out[3]), .sel(ALU_Sel[1:0]));
    mux4 ml4(.out(mux_log[4]), .in0(and_out[4]), .in1(or_out[4]), .in2(xor_out[4]), .in3(not_out[4]), .sel(ALU_Sel[1:0]));
    mux4 ml5(.out(mux_log[5]), .in0(and_out[5]), .in1(or_out[5]), .in2(xor_out[5]), .in3(not_out[5]), .sel(ALU_Sel[1:0]));
    mux4 ml6(.out(mux_log[6]), .in0(and_out[6]), .in1(or_out[6]), .in2(xor_out[6]), .in3(not_out[6]), .sel(ALU_Sel[1:0]));
    mux4 ml7(.out(mux_log[7]), .in0(and_out[7]), .in1(or_out[7]), .in2(xor_out[7]), .in3(not_out[7]), .sel(ALU_Sel[1:0]));


    // MUX2 final
    mux2 mf0(.out(Result[0]), .in0(mux_arit[0]), .in1(mux_log[0]), .sel(ALU_Sel[2]));
    mux2 mf1(.out(Result[1]), .in0(mux_arit[1]), .in1(mux_log[1]), .sel(ALU_Sel[2]));
    mux2 mf2(.out(Result[2]), .in0(mux_arit[2]), .in1(mux_log[2]), .sel(ALU_Sel[2]));
    mux2 mf3(.out(Result[3]), .in0(mux_arit[3]), .in1(mux_log[3]), .sel(ALU_Sel[2]));
    mux2 mf4(.out(Result[4]), .in0(mux_arit[4]), .in1(mux_log[4]), .sel(ALU_Sel[2]));
    mux2 mf5(.out(Result[5]), .in0(mux_arit[5]), .in1(mux_log[5]), .sel(ALU_Sel[2]));
    mux2 mf6(.out(Result[6]), .in0(mux_arit[6]), .in1(mux_log[6]), .sel(ALU_Sel[2]));
    mux2 mf7(.out(Result[7]), .in0(mux_arit[7]), .in1(mux_log[7]), .sel(ALU_Sel[2]));

endmodule