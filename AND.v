//This module is a 8-bit and gate
module AND(result,operand1,operand2,select);
	input wire [7:0] operand1,operand2;
	input wire select;
	output wire [7:0] result;
	wire [7:0] select1,temp;
	ASSIGN a1(select1,select);
	and n [7:0] (temp[7:0],operand1[7:0],operand2[7:0]);
	and a [7:0] (result[7:0],temp[7:0],select1[7:0]);  //The output of the module depends on the select which acts as a enable (if select is 0 then output is 0 else output is the operation on operand) 
endmodule
