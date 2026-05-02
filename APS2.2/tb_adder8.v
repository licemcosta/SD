`timescale 1ns/1ps

module tb_adder8;

    reg [7:0] A;
    reg [7:0] B;
    reg cin;

    wire [7:0] soma;
    wire cout;

    adder8 uut (
        .soma(soma),
        .cout(cout),
        .A(A),
        .B(B),
        .cin(cin)
    );

    initial begin

        $display("A          B          CIN  SOMA       COUT");
        $display("------------------------------------------------");

        A = 8'b00000000;
        B = 8'b00000000;
        cin = 0;
        #10;
        $display("%b  %b   %b    %b   %b", A, B, cin, soma, cout);

        A = 8'b00000001;
        B = 8'b00000001;
        cin = 0;
        #10;
        $display("%b  %b   %b    %b   %b", A, B, cin, soma, cout);

        A = 8'b11111111;
        B = 8'b00000001;
        cin = 0;
        #10;
        $display("%b  %b   %b    %b   %b", A, B, cin, soma, cout);

        A = 8'b10101010;
        B = 8'b01010101;
        cin = 0;
        #10;
        $display("%b  %b   %b    %b   %b", A, B, cin, soma, cout);

        A = 8'b11110000;
        B = 8'b00001111;
        cin = 1;
        #10;
        $display("%b  %b   %b    %b   %b", A, B, cin, soma, cout);

        $finish;

    end

endmodule