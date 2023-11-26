`timescale 1ns / 1ps

module fbReg_tb;
reg [3:0] D;
reg CLK, RST, LD;
wire [3:0]Q;

fbReg i0 (D,CLK,RST,LD,Q);

initial begin D=0; CLK=0; LD=0; RST=0;  end
always #5 CLK=~CLK; // Toggling clock every 5 time units
always #20 D=D-1; // D at max value and then decrementing by one at each two clock cycles
always #30 LD=~LD; // Toggling load every 40 time units
always #50 RST=~RST; // Toggling reset every 60 time units

initial begin
#240;
$finish;
end

endmodule
