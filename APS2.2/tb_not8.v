`timescale 1ns/1ps

module tb_not8;

    reg [7:0] A;

    wire [7:0] out;

    not8 uut (
        .out(out),
        .A(A)
    );

    initial begin

        $display("A          OUT");
        $display("---------------------");

        A = 8'b00000000;
        #10;
        $display("%b  %b", A, out);

        A = 8'b11111111;
        #10;
        $display("%b  %b", A, out);

        A = 8'b10101010;
        #10;
        $display("%b  %b", A, out);

        A = 8'b11001100;
        #10;
        $display("%b  %b", A, out);

        A = 8'b10011001;
        #10;
        $display("%b  %b", A, out);

        $finish;

    end

endmodule