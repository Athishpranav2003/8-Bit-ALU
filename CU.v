//Takes a 19-bit input and gives a 8-bit output.It also has a decoder inbuilt in it which decodes the 3-bit instruction code to a 8-bit bus(each acting as a select/enable input)
module CU(result,in );
    input wire [18:0] in;
    output wire [7:0] result;
    wire [7:0] select;
    wire [7:0] operand1;
    wire [7:0] operand2;
    assign operand2[7:0]=in[7:0];
    assign operand1[7:0]=in[15:8];
    wire a,b,c;
    not (a,in[18]);
    not (b,in[17]);
    not (c,in[16]);
    and(select[0],a,b,in[16]);
    and(select[1],a,in[17],c);
    and(select[2],a,in[17],in[16]);
    and(select[3],in[18],b,c);
    and(select[4],in[18],b,in[16]);
    and(select[5],in[18],in[17],c);
    and(select[6],in[18],in[17],in[16]);
    and(select[7],a,b,c);
    ALU alu (result,operand1,operand2,select);
endmodule
