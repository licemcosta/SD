`timescale 1ns/1ps

module tb_fulladder;

    reg a;
    reg b;
    reg cin;

    wire soma;
    wire cout;

    fulladder uut (
        .soma(soma),
        .cout(cout),
        .a(a),
        .b(b),
        .cin(cin)
    );

    initial begin

        $display("A  B  CIN  SOMA  COUT");
        $display("----------------------");

        a = 0; b = 0; cin = 0;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 0; b = 0; cin = 1;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 0; b = 1; cin = 0;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 0; b = 1; cin = 1;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 1; b = 0; cin = 0;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 1; b = 0; cin = 1;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 1; b = 1; cin = 0;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        a = 1; b = 1; cin = 1;
        #10;
        $display("%b  %b   %b     %b     %b", a, b, cin, soma, cout);

        $finish;

    end

endmodule