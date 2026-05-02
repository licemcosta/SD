`timescale 1ns/1ps

module tb_subtractor8;

    reg [7:0] A;
    reg [7:0] B;

    wire [7:0] result;
    wire cout;

    subtractor8 uut (
        .result(result),
        .cout(cout),
        .A(A),
        .B(B)
    );

    initial begin

        $display("A          B          RESULT     COUT");
        $display("------------------------------------------------");

        A = 8'b00000101;
        B = 8'b00000001;
        #10;
        $display("%b  %b  %b   %b", A, B, result, cout);

        A = 8'b00001010;
        B = 8'b00000011;
        #10;
        $display("%b  %b  %b   %b", A, B, result, cout);

        A = 8'b11111111;
        B = 8'b00000001;
        #10;
        $display("%b  %b  %b   %b", A, B, result, cout);

        A = 8'b00000000;
        B = 8'b00000001;
        #10;
        $display("%b  %b  %b   %b", A, B, result, cout);

        A = 8'b10101010;
        B = 8'b01010101;
        #10;
        $display("%b  %b  %b   %b", A, B, result, cout);

        $finish;

    end

endmodule