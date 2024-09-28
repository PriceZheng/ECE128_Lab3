`timescale 1ns / 1ps


module FA(
    input A, B, CI,
    output SUM, CO
);
    wire w1, w2, w3;

    // Sum calculation
    xor (w1, A, B);
    xor (SUM, w1, CI);

    // Carry out calculation
    and (w2, A, B);
    and (w3, w1, CI);
    or (CO, w2, w3);

endmodule