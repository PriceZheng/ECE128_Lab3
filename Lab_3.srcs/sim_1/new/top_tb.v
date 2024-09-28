module top_tb;

    // Testbench signals
    reg [1:0] A, B;
    reg CI;
    wire [6:0] seg; 

    top uut (
        .A(A),
        .B(B),
        .CI(CI),
        .seg(seg)
    );

    // Simulation block
    initial begin
        $monitor("A = %b, B = %b, CI = %b => seg = %b", A, B, CI, seg);

        A = 2'b00; B = 2'b00; CI = 1'b0; #10;
        A = 2'b00; B = 2'b00; CI = 1'b1; #10;
        A = 2'b00; B = 2'b01; CI = 1'b0; #10;
        A = 2'b00; B = 2'b01; CI = 1'b1; #10;
        A = 2'b00; B = 2'b10; CI = 1'b0; #10;
        A = 2'b00; B = 2'b10; CI = 1'b1; #10;
        A = 2'b00; B = 2'b11; CI = 1'b0; #10;
        A = 2'b00; B = 2'b11; CI = 1'b1; #10;

        A = 2'b01; B = 2'b00; CI = 1'b0; #10;
        A = 2'b01; B = 2'b00; CI = 1'b1; #10;
        A = 2'b01; B = 2'b01; CI = 1'b0; #10;
        A = 2'b01; B = 2'b01; CI = 1'b1; #10;
        A = 2'b01; B = 2'b10; CI = 1'b0; #10;
        A = 2'b01; B = 2'b10; CI = 1'b1; #10;
        A = 2'b01; B = 2'b11; CI = 1'b0; #10;
        A = 2'b01; B = 2'b11; CI = 1'b1; #10;

        A = 2'b10; B = 2'b00; CI = 1'b0; #10;
        A = 2'b10; B = 2'b00; CI = 1'b1; #10;
        A = 2'b10; B = 2'b01; CI = 1'b0; #10;
        A = 2'b10; B = 2'b01; CI = 1'b1; #10;
        A = 2'b10; B = 2'b10; CI = 1'b0; #10;
        A = 2'b10; B = 2'b10; CI = 1'b1; #10;
        A = 2'b10; B = 2'b11; CI = 1'b0; #10;
        A = 2'b10; B = 2'b11; CI = 1'b1; #10;

        A = 2'b11; B = 2'b00; CI = 1'b0; #10;
        A = 2'b11; B = 2'b00; CI = 1'b1; #10;
        A = 2'b11; B = 2'b01; CI = 1'b0; #10;
        A = 2'b11; B = 2'b01; CI = 1'b1; #10;
        A = 2'b11; B = 2'b10; CI = 1'b0; #10;
        A = 2'b11; B = 2'b10; CI = 1'b1; #10;
        A = 2'b11; B = 2'b11; CI = 1'b0; #10;
        A = 2'b11; B = 2'b11; CI = 1'b1; #10;

        $stop;
    end

endmodule
