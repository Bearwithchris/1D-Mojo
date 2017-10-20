/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_11 (
    input clk,
    input rst,
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  reg [7:0] x;
  
  integer char;
  
  integer i;
  
  always @* begin
    out = 8'h00;
    
    case (alufn[0+1-:2])
      2'h0: begin
        x = a;
        if (b[0+0-:1]) begin
          x = x << 1'h1;
        end
        if (b[1+0-:1]) begin
          x = x << 2'h2;
        end
        if (b[2+0-:1]) begin
          x = x << 3'h4;
        end
        out = x;
      end
      2'h1: begin
        x = a;
        if (b[0+0-:1]) begin
          x = x >> 1'h1;
        end
        if (b[1+0-:1]) begin
          x = x >> 2'h2;
        end
        if (b[2+0-:1]) begin
          x = x >> 3'h4;
        end
        out = x;
      end
      2'h3: begin
        char = a[7+0-:1];
        x = a;
        if (b[0+0-:1]) begin
          for (i = 1'h0; i < 3'h7; i = i + 1) begin
            x[(i)*1+0-:1] = x[(i + 1'h1)*1+0-:1];
          end
          x[7+0-:1] = char;
        end
        if (b[1+0-:1]) begin
          for (i = 1'h0; i < 3'h6; i = i + 1) begin
            x[(i)*1+0-:1] = x[(i + 2'h2)*1+0-:1];
          end
          x[7+0-:1] = char;
          x[6+0-:1] = char;
        end
        if (b[2+0-:1]) begin
          for (i = 1'h0; i < 3'h4; i = i + 1) begin
            x[(i)*1+0-:1] = x[(i + 3'h4)*1+0-:1];
          end
          x[7+0-:1] = char;
          x[6+0-:1] = char;
          x[5+0-:1] = char;
          x[4+0-:1] = char;
        end
        out = x;
      end
    endcase
  end
endmodule
