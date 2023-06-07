
# File Details
1. Verilog Assignment   
   1.testbench.v     //test bench for the CPU module design
   2.HALFADDER.v //source code for the half adder module
   3.FULLADDER.v   //source code for the full adder module
   4.AND.v       // source code for 8 bit AND operation
   5.OR.v         //source code for 8 bit OR operation
   6.NOT.v         //source code for 8 bit NOT operation
   7.ALU.v          //source code for ALU module (comprises of part of multiplexer )
   8.CU.v        //source code for Control Unit which also has a 3*8 Bit Decoder
   9.ASSIGN.v        //source code to Assign a bit to all bits of a 8-bit wire
   10.COMBINED_ADDER.v     //source code selecting the operand2 for which adder operation to be implemented (4 input mux to select the operand2)
   11.ADDER.v //source code for Ripple Carry Adder module (8-bit Full Adder)

2. Report.pdf
3. CONTROL UNIT.png
3. README.md


# INSTRUCTION
1. Extract the zip file. After ziping the file, open the terminal in the Verilog Assignment Folder. 

2. Write ls in the terminal and make sure all the 11 .v files are there.

3. Now run the following code in terminal:
" iverilog testbench.v HALFADDDER.v FULLADDER.v AND.v OR.v NOT.v ALU.v CU.v ASSIGN.v COMBINED_ADDER.v ADDER.v"
after running this, write "vvp a.out" in the terminal.

4. We'll get the following message:

VCD info: dumpfile testbench.vcd opened for output.
Test Completed

5. Now write in the terminal:
"gtkwave testbench.vcd"

6. The GTKWAVE application will now open, double click the Instruction and Result under uut (inside cu_v2_tb) and observe the wavefront. Close GTKWAVE.

