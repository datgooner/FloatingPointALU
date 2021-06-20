`timescale 1 ns/1 ps

`include "ALU.v"
module ALU_Tb;

reg [31:0] a_operand,b_operand;
reg [3:0] Operation;
wire [31:0] ALU_Output;
wire Exception;
wire Underflow;
wire Overflow;

reg clk = 1'b0;

ALU dut(a_operand,b_operand,Operation,ALU_Output,Exception,Overflow,Underflow);

always #5 clk = ~clk;

initial
begin
	a_operand = 32'h4201_51EC;
	b_operand = 32'd0_0;
	Operation = 4'd0;
	#5 Operation = 4'd1;
	#5 Operation = 4'd2;
	#5 Operation = 4'd3;

end


endmodule