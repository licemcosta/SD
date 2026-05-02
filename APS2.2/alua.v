`timescale 1ns/1ps

module alua(
    output wire [7:0] Result,
    output wire [3:0] NZVC,   // você ainda não implementou flags, então pode deixar aberto

    input wire [7:0] A,
    input wire [7:0] B,
    input wire [2:0] ALU_Sel
);

    // Instância direta da sua ULA principal
    ula u0(
        .Result(Result),
        .NZVC(NZVC),
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel)
    );

endmodule