`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 02:03:34
// Design Name: 
// Module Name: SSLED
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


module SSLD(
    input [2:0] val,  // Expecting 3 bits for the sum and carry
    output reg [6:0] seg
);

always @(val) begin
    case(val)
        3'b000: seg = 7'b1000000;  // Display 0
        3'b001: seg = 7'b1111001;  // Display 1
        3'b010: seg = 7'b0100100;  // Display 2
        3'b011: seg = 7'b0110000;  // Display 3
        3'b100: seg = 7'b0011001;  // Display 4
        3'b101: seg = 7'b0010010;  // Display 5
        3'b110: seg = 7'b0000010;  // Display 6
        3'b111: seg = 7'b1111000;  // Display 7
        default: seg = 7'b1111111;  // Error state, default to blank
    endcase
end

endmodule

