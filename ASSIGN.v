//This module creates a 8-bit bus with value as input bit
module ASSIGN(out,in);
	input wire in;
	output wire [7:0] out;
	assign out[0]=in;
	assign out[1]=in;
	assign out[2]=in;
	assign out[3]=in;
	assign out[4]=in;
	assign out[5]=in;
	assign out[6]=in;
	assign out[7]=in;
endmodule

