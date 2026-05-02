`timescale 1ns/1ps

module tb_alua;

    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] ALU_Sel;

    wire [7:0] Result;
    wire [3:0] NZVC;

    // DUT (Device Under Test)
    alua dut(
        .Result(Result),
        .NZVC(NZVC),
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel)
    );

    initial begin

        $display("=== INICIO TESTE REGRESSAO ULA ===");

        // valores base
        A = 8'd10;
        B = 8'd5;

        // OPERACOES ARITMETICAS
        ALU_Sel = 3'b000; #10; // soma
        $display("SOMA: %d", Result);

        ALU_Sel = 3'b001; #10; // incremento
        $display("INC: %d", Result);

        ALU_Sel = 3'b010; #10; // subtracao
        $display("SUB: %d", Result);

        ALU_Sel = 3'b011; #10; // decremento
        $display("DEC: %d", Result);

        // OPERACOES LOGICAS
        ALU_Sel = 3'b100; #10; // AND
        $display("AND: %b", Result);

        ALU_Sel = 3'b101; #10; // OR
        $display("OR: %b", Result);

        ALU_Sel = 3'b110; #10; // XOR
        $display("XOR: %b", Result);

        ALU_Sel = 3'b111; #10; // NOT
        $display("NOT: %b", Result);

        $display("=== FIM TESTE REGRESSAO ===");

        $stop;
    end

endmodule