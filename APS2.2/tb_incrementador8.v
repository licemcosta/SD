`timescale 1ns/1ps

module tb_incrementador8;

    reg [7:0] A;

    wire [7:0] result;
    wire cout;

    incrementador8 uut (
        .result(result),
        .cout(cout),
        .A(A)
    );

    initial begin

        $display("A          RESULT      COUT");
        $display("--------------------------------");

        A = 8'b00000000;
        #10;
        $display("%b  %b   %b", A, result, cout);

        A = 8'b00000001;
        #10;
        $display("%b  %b   %b", A, result, cout);

        A = 8'b00001111;
        #10;
        $display("%b  %b   %b", A, result, cout);

        A = 8'b01111111;
        #10;
        $display("%b  %b   %b", A, result, cout);

        A = 8'b11111111;
        #10;
        $display("%b  %b   %b", A, result, cout);

        $finish;

    end

endmodule