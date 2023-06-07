//This is one bit Fulladder circuit
module FULLADDER(sum,carry,op1,op2,cin);
	input wire op1,op2,cin;
	output wire sum,carry;
	wire tp[3:0];
	HALFADDER hf1(tp[0],tp[1],op1,op2);
	HALFADDER hf2(sum,tp[2],cin,tp[0]);
	HALFADDER hf3(carry,tp[3],tp[1],tp[2]);
endmodule
