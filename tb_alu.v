module tb_alu() ;
reg [7:0]A,B;
reg [3:0]sel_alu;
wire [7:0]aluout ;
wire carryout;
integer c; //as count of for loop ....
alu DUT (.a(A),.b(B),.sel(sel_alu),.alu_out (aluout),.carry_out(carryout));
initial 
begin 
A=4'h18;
B=8'h2B;
sel_alu = 4'h0;
for (c=0;c<=15;c=c+1)

sel_alu =sel_alu +8'h01;
#100;

A=8'h2A;
B=8'h8F;
$stop;
end

endmodule 