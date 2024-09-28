`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 02:39:26
// Design Name: 
// Module Name: top
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

module top(
    input [1:0] A, B,
    input CI,
    output [6:0] seg
);
    wire [1:0] SUM;
    wire CO;
    wire [2:0] val;

    FRCA2 ripple_carry_adder(
        .A(A),
        .B(B),
        .CI(CI),
        .SUM(SUM),
        .CO(CO)
    );
    
    /*FCLA carry_lookahead_adder(
        .A(A),
        .B(B),
        .CI(CI),
        .SUM(SUM),
        .CO(CO)
    );*/
    

    // Combine sum and carry for display
    assign val = {CO, SUM};  // 3-bit value to display

    // Instantiate the seven-segment display decoder
    SSLD display(
        .val(val),
        .seg(seg)
    );

endmodule
