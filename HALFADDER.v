//This is one bit half adder circuit
module HALFADDER(sum,carry,op1,op2);
	input wire op1,op2;
	output wire sum,carry;
	xor(sum,op1,op2);
	and(carry,op1,op2);
endmodule
