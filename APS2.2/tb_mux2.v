`timescale 1ns/1ps

module tb_mux2;

    reg in0;
    reg in1;
    reg sel;

    wire out;

    mux2 uut (
        .out(out),
        .in0(in0),
        .in1(in1),
        .sel(sel)
    );

    initial begin

        $display("IN0  IN1  SEL  OUT");
        $display("-------------------");

        in0 = 0; in1 = 0; sel = 0;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 0; in1 = 1; sel = 0;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 1; in1 = 0; sel = 0;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 1; in1 = 1; sel = 0;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 0; in1 = 0; sel = 1;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 0; in1 = 1; sel = 1;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 1; in1 = 0; sel = 1;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        in0 = 1; in1 = 1; sel = 1;
        #10;
        $display("%b     %b    %b    %b", in0, in1, sel, out);

        $finish;

    end

endmodule