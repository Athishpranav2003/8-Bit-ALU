//This is a 8-bit NOT module with a enable input which only output if the enable is 1 else it output 0 
module NOT(result,operand1,select);
	input wire [7:0] operand1;
	input wire select;
	output wire [7:0] result;
	wire [7:0] select1,temp;
	ASSIGN a1(select1,select);	
	not n [7:0] (temp[7:0],operand1[7:0]);
	and a [7:0] (result[7:0],temp[7:0],select1[7:0]);	
endmodule
