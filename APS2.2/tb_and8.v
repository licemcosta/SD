`timescale 1ns/1ps

module tb_and8;

    reg [7:0] A;
    reg [7:0] B;

    wire [7:0] out;

    and8 uut (
        .out(out),
        .A(A),
        .B(B)
    );

    initial begin

        $display("A          B          OUT");
        $display("--------------------------------");

        A = 8'b00000000;
        B = 8'b00000000;
        #10;
        $display("%b  %b  %b", A, B, out);

        A = 8'b11111111;
        B = 8'b11111111;
        #10;
        $display("%b  %b  %b", A, B, out);

        A = 8'b10101010;
        B = 8'b11001100;
        #10;
        $display("%b  %b  %b", A, B, out);

        A = 8'b11110000;
        B = 8'b00001111;
        #10;
        $display("%b  %b  %b", A, B, out);

        A = 8'b10011001;
        B = 8'b01010101;
        #10;
        $display("%b  %b  %b", A, B, out);

        $finish;

    end

endmodule