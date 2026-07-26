`timescale 1ns / 1ps

module alu_2bit(
  input  wire [1:0] a, 
  input  wire [1:0] b, 
  input  wire       sel,     // 0: ADD, 1: SUB 
  output reg  [1:0] result 
); 
  always @(*) begin 
    case (sel) 
      1'b0: result = a + b; 
      1'b1: result = a - b; 
      default: result = 2'b00; 
    endcase 
  end 
endmodule 
