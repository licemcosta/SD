`timescale 1ns/1ps

module tb_ula;

    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] ALU_Sel;

    wire [7:0] Result;
    wire [3:0] NZVC;

    ula uut(
        .Result(Result),
        .NZVC(NZVC),
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel)
    );

    initial begin

        $display("A        B        SEL   RESULT");
        $display("--------------------------------");

        // 1 - SOMA
        A = 8'd10; B = 8'd5; ALU_Sel = 3'b000;
        #10;
        $display("%d      %d      %b    %d", A, B, ALU_Sel, Result);

        // 2 - INCREMENTO
        A = 8'd10; B = 8'd5; ALU_Sel = 3'b001;
        #10;
        $display("%d      %d      %b    %d", A, B, ALU_Sel, Result);

        // 3 - SUBTRAÇÃO
        A = 8'd10; B = 8'd5; ALU_Sel = 3'b010;
        #10;
        $display("%d      %d      %b    %d", A, B, ALU_Sel, Result);


        // 4 - DECREMENTO
        A = 8'd10; B = 8'd5; ALU_Sel = 3'b011;
        #10;
        $display("%d      %d      %b    %d", A, B, ALU_Sel, Result);


        // 5 - AND
        A = 8'b10101010; B = 8'b11001100; ALU_Sel = 3'b100;
        #10;
        $display("%b %b %b %b", A, B, ALU_Sel, Result);

        // 6 - OR
        A = 8'b10101010; B = 8'b11001100; ALU_Sel = 3'b101;
        #10;
        $display("%b %b %b %b", A, B, ALU_Sel, Result);

        // 7 - XOR
        A = 8'b10101010; B = 8'b11001100; ALU_Sel = 3'b110;
        #10;
        $display("%b %b %b %b", A, B, ALU_Sel, Result);


        // 8 - NOT (usa só A)
        A = 8'b10101010; B = 8'b00000000; ALU_Sel = 3'b111;
        #10;
        $display("%b %b %b %b", A, B, ALU_Sel, Result);

        $finish;

    end

endmodule