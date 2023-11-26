`timescale 1ns / 1ps

module fbReg(
             input [3:0] D, // 4-bit data input
             input clk,      // clock input
             input rst,      // asynchronous reset input
             input ld,       // synchronous load input
             output reg [3:0] Q // 4-bit data output
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin // if reset is high, Q=0000
      Q <= 4'b0000;
    end else begin
      if (ld) begin // if load is high, Q=D
        Q <= D;
      end
    end
  end

endmodule
