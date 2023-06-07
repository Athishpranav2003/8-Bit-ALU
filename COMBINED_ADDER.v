//This module takes the first 4 bits of select and both the operands
//By using the select as select for a Mux and inputs as operand2,2's compliment of operand2,1,2's compliment of 1 and the output is the 2nd operand input to the adder
//So using one adder and the select bus we can select the input (which corresponds to addition ,subtraction,increment and decrement respectively)
module COADD(result,op1,op2,select);
	input wire [7:0] op1,op2;
	input wire [3:0] select;
	output wire [7:0] result;
	wire cin;
	wire en;
	or (en,select[0],select[1],select[2],select[3]);
	or (cin,1'b0,select[1]);
	wire [7:0] op3,op4,temp1,temp2,temp3,temp4,temp5,temp6,temp7,select1,select2,select3,select4,select5;
	ASSIGN a1(select1,select[0]);
	ASSIGN a2(select2,select[1]);
	ASSIGN a3(select3,select[2]);
	ASSIGN a4(select4,select[3]);
	ASSIGN a5(select5,en);
	NOT n1(op3,op2,1'b1);
	AND an1(temp1,select1,op2,1'b1);
	AND an2(temp2,select2,op3,1'b1);
	AND an3(temp3,select3,8'b00000001,1'b1);
	AND an4(temp4,select4,8'b11111111,1'b1);
	OR o1(temp5,temp2,temp1,1'b1);
	OR o2(temp6,temp3,temp4,1'b1);
	OR o3(op4,temp5,temp6,1'b1);
	ADDER add(temp7,op1,op4,cin);
	AND an5(result,temp7,select5,1'b1);
endmodule
	


	



 


	
	
