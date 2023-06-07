//This is the ALU module and this is the module where different operations(modules) are called with their enable inputs respectively
module ALU(result,operand1,operand2,select);
	input wire [7:0] operand1,operand2,select;
	output wire [7:0] result;
	wire [7:0] temp1,temp2,temp3,temp4,temp5,temp6;
	COADD add1(temp1,operand1,operand2,select[3:0]); 
	AND an (temp2,operand1,operand2,select[4]);
	OR o1(temp3,operand1,operand2,select[5]);
	NOT no (temp4,operand1,select[6]);
    	OR o2 (temp5,temp2,temp1,1'b1);
	OR o3 (temp6,temp3,temp4,1'b1);
	OR o4 (result,temp5,temp6,1'b1); //This is a similar to Multiplexer where the output of the ALU is selected using the select bit 		
endmodule
