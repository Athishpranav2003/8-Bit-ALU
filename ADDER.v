//This is a 8-bit adder also with carryin input
module ADDER(result,operand1,operand2,cin);
	input wire [7:0] operand1,operand2;
	input wire cin;
	output wire [7:0] result;
	wire [7:0] carry;
	FULLADDER fad1(result[0],carry[0],operand1[0],operand2[0],cin);
	FULLADDER fad[7:1] (result[7:1],carry[7:1],operand1[7:1],operand2[7:1],carry[6:0]);
endmodule
