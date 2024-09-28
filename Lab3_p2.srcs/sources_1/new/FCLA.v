`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 03:59:06
// Design Name: 
// Module Name: FCLA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FCLA(
input [1:0] A, B,
    input CI,
    output [1:0] SUM,
    output CO
);
    wire G0, G1;
    wire P0, P1;
    wire C1, C2;

    assign G0 = A[0] & B[0];
    assign G1 = A[1] & B[1];
    assign P0 = A[0] ^ B[0];
    assign P1 = A[1] ^ B[1];

    assign C1 = G0 | (P0 & CI);
    assign C2 = G1 | (P1 & C1);

    assign SUM[0] = P0 ^ CI;
    assign SUM[1] = P1 ^ C1;

    assign CO = C2;

endmodule
