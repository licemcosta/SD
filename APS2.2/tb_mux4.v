`timescale 1ns/1ps

module tb_mux4;

    reg in0;
    reg in1;
    reg in2;
    reg in3;
    reg [1:0] sel;

    wire out;

    mux4 uut (
        .out(out),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel)
    );

    initial begin

        $display("IN0 IN1 IN2 IN3 SEL OUT");
        $display("------------------------");

        // caso 1
        in0=0; in1=0; in2=0; in3=0; sel=2'b00;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // caso 2
        in0=0; in1=1; in2=0; in3=1; sel=2'b00;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // caso 3
        in0=1; in1=0; in2=1; in3=0; sel=2'b00;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // sel = 01 (in1)
        in0=0; in1=1; in2=0; in3=1; sel=2'b01;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // sel = 01
        in0=1; in1=0; in2=1; in3=0; sel=2'b01;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // sel = 10 (in2)
        in0=0; in1=0; in2=1; in3=1; sel=2'b10;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // sel = 10
        in0=1; in1=1; in2=0; in3=0; sel=2'b10;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // sel = 11 (in3)
        in0=0; in1=0; in2=1; in3=1; sel=2'b11;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        // sel = 11
        in0=1; in1=1; in2=0; in3=0; sel=2'b11;
        #10;
        $display("%b   %b   %b   %b   %b   %b", in0, in1, in2, in3, sel, out);

        $finish;

    end

endmodule