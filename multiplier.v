`timescale 1ns / 1ps
module Full_Adder(x,y,cin,s,cout);

input x,y,cin;

output s, cout;


wire c1,c2,c3;

xor(s,x,y,cin);

and(c1,x,y);

and(c2,x,cin);

and(c3,y,cin);

or(cout,c1,c2,c3);

endmodule



module M4bit(Q,M,P);

input [3:0] Q;

input [3:0] M;

output [7:0] P;


wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;

wire d1,d2,d3,d4,d5,d6,d7;

wire e1,e2,e3;

wire f1,f2,f3,f4,f5,f6,f7;

wire g1,g2,g3,g4;

and(c1,M[3],Q[1]);

and(c2,M[2],Q[2]);

and(c3,M[1],Q[3]);

and(c4,M[3],Q[0]);

and(c5,M[2],Q[1]);

and(c6,M[1],Q[2]);

and(c7,M[2],Q[0]);

and(c8,M[1],Q[1]);

and(c9,M[0],Q[2]);

and(c10,M[1],Q[0]);

and(c11,M[0],Q[1]);

and(P[0],M[0],Q[0]);

and(e1,M[2],Q[3]);

and(e2,M[3],Q[2]);

and(e3,M[0],Q[3]);

and(g1,M[3],Q[3]);

Full_Adder fa1(c1,c2,c3,d2,d1);

Full_Adder fa2(c4,c5,c6,d4,d3);

Full_Adder fa3(c7,c8,c9,d6,d5);

Full_Adder fa4(c10,c11,0,P[1],d7);

Full_Adder fa5(e1,e2,d1,f2,f1);

Full_Adder fa6(d2,d3,f5,f4,f3);

Full_Adder fa7(d4,e3,d5,f6,f5);

Full_Adder fa8(d6,d7,0,P[2],f7);

Full_Adder fa9(g1,f1,g2,P[6],P[7]);

Full_Adder fa10(f2,f3,g3,P[5],g2);

Full_Adder fa11(f4,0,g4,P[4],g3);

Full_Adder fa12(f6,f7,0,P[3],g4);

endmodule 