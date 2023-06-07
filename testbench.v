`timescale 1ns / 1ps

module cu_v2_tb;
	reg [18:0] instruction;
	wire [7:0] result;
	CU uut (result,instruction);
	initial begin
		$dumpfile ("testbench.vcd");
		$dumpvars (0,cu_v2_tb);
		instruction = 19'b0010010001100010100; #20;
		instruction = 19'b0100010001100010100; #20;
 		instruction = 19'b0110010001100010100; #20;
		instruction = 19'b1000010001100010100; #20;
		instruction = 19'b1010010001100010100; #20;
		instruction = 19'b1100010001100010100; #20;
		instruction = 19'b1110010001100010100; #20;
		$display ("Test Completed");
	end
endmodule
