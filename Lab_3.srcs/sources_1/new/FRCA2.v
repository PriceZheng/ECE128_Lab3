`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 02:16:40
// Design Name: 
// Module Name: FRCA2
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


module FRCA2(
    input [1:0] A, B,   // 2-bit inputs
    input CI,           // Carry in
    output [1:0] SUM,   // 2-bit sum output
    output CO           // Carry out
);
    wire C;  // Internal carry between the bits

    // Instantiate the first 1-bit full adder
    FA FA0(
        .A(A[0]),
        .B(B[0]),
        .CI(CI),
        .SUM(SUM[0]),
        .CO(C)
    );

    // Instantiate the second 1-bit full adder
    FA FA1(
        .A(A[1]),
        .B(B[1]),
        .CI(C),
        .SUM(SUM[1]),
        .CO(CO)
    );

endmodule
