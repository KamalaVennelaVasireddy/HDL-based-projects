
/*BLOCK ONE: THE INPUT BLOCK*/
module DFF(Clk,CE,reset,D,set,Q);
input Clk,CE,reset,D,set; 
output reg Q;
 always @(posedge(Clk))
    begin
        if(Clk == 1) 
        begin
            if (CE == 1) 
                Q = D;  
            else if(set == 1)   
             Q = 1; 
         else if (reset == 1) 
                 Q = 0;       
      end      
    end     
endmodule

module profile_generator( P1P,P2P,S1_O ,S2_O ,S3_O ,S4_O ,S5_O ,S6_O ,S7_O ,S8_O ,S9_O );
inout S1_O ,S2_O ,S3_O ,S4_O ,S5_O ,S6_O ,S7_O ,S8_O ,S9_O;
output P1P,P2P;
wire x1,x2,x3; 
assign x1 = ((S1_O^S2_O)^(S3_O^S4_O));
assign x2 = ((S5_O^S6_O)^(S7_O^S8_O));
assign x3 = (x1^x2);
assign P2P = (x3^S9_O);
assign P1P = (~(x3^S9_O));
endmodule

module switchdesign_1(Clk,reset,set,CE,D,P1P,P2P,P1O_S1,P2O_S1,S1_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S1,P2O_S1;
inout S1_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S1);
DFF D3 (Q,CE,reset,P2P,set,P2O_S1);
assign S1_O = P1O_S1 ^ P2O_S1;
endmodule

module switchdesign_2(Clk,reset,set,CE,D,P1P,P2P,P1O_S2,P2O_S2,S2_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S2,P2O_S2;
inout S2_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S2);
DFF D3 (Q,CE,reset,P2P,set,P2O_S2);
assign S2_O = P1O_S2^P2O_S2;
endmodule

  module switchdesign_3(Clk,reset,set,CE,D,P1P,P2P,P1O_S3,P2O_S3,S3_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S3,P2O_S3;
inout S3_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S3);
DFF D3 (Q,CE,reset,P2P,set,P2O_S3);
assign S3_O = P1O_S3^P2O_S3;
endmodule

module switchdesign_4(Clk,reset,set,CE,D,P1P,P2P,P1O_S4,P2O_S4,S4_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S4,P2O_S4;
inout S4_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S4);
DFF D3 (Q,CE,reset,P2P,set,P2O_S4);
assign S4_O = P1O_S4^P2O_S4;
endmodule

module switchdesign_5(Clk,reset,set,CE,D,P1P,P2P,P1O_S5,P2O_S5,S5_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S5,P2O_S5;
inout S5_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S5);
DFF D3 (Q,CE,reset,P2P,set,P2O_S5);
assign S5_O = P1O_S5^P2O_S5;
endmodule

module switchdesign_6(Clk,reset,set,CE,D,P1P,P2P,P1O_S6,P2O_S6,S6_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S6,P2O_S6;
inout S6_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S6);
DFF D3 (Q,CE,reset,P2P,set,P2O_S6);
assign S6_O = P1O_S6^P2O_S6;
endmodule



module switchdesign_7(Clk,reset,set,CE,D,P1P,P2P,P1O_S7,P2O_S7,S7_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S7,P2O_S7;
inout S7_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S7);
DFF D3 (Q,CE,reset,P2P,set,P2O_S7);
assign S7_O = P1O_S7^P2O_S7;
endmodule

module switchdesign_8(Clk,reset,set,CE,D,P1P,P2P,P1O_S8,P2O_S8,S8_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S8,P2O_S8;
inout S8_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S8);
DFF D3 (Q,CE,reset,P2P,set,P2O_S8);
assign S8_O = P1O_S8^P2O_S8;
endmodule

module switchdesign_9(Clk,reset,set,CE,D,P1P,P2P,P1O_S9,P2O_S9,S9_O,Q);
input Clk,P1P,P2P,reset,set,CE,D;
output P1O_S9,P2O_S9;
inout S9_O,Q;
DFF D1 (Clk,CE,reset,D,set,Q);
DFF D2 (Q,CE,reset,P1P,set,P1O_S9);
DFF D3 (Q,CE,reset,P2P,set,P2O_S9);
assign S9_O = P1O_S9^P2O_S9;
endmodule

 
/*	BLOCK TWO: PROCESSING LOGIC */

module winlogic_player_1( Y_1,A,B,C,D,E,F,G,H,I);
output Y_1;
input A,B,C,D,E,F,G,H,I;
wire x1,x2,x3, x4,x5,x6;
assign x1=((A&B&C)|(D&E&F)); 
assign x2=((G&H&I)|(A&D&G));
assign x3=((B&E&H)|(C&F&I));
assign x4=((A&E&I)|(G&E&C));
assign x5=(x1|x2); 
assign x6=(x3|x4);
assign Y_1=(x5|x6);
endmodule

module winlogic_player_2( Y_2,A,B,C,D,E,F,G,H,I);
output Y_2;
input A,B,C,D,E,F,G,H,I;
wire x1,x2,x3, x4,x5,x6;
assign x1=((A&B&C)|(D&E&F)); 
assign x2=((G&H&I)|(A&D&G));
assign x3=((B&E&H)|(C&F&I));
assign x4=((A&E&I)|(G&E&C));
assign x5=(x1|x2); 
assign x6=(x3|x4);
assign Y_2=(x5|x6);
endmodule

/*TEST BENCH FOR BLOCK TWO(PROCESSING LOGIC) */

A=1 ; B=1 ; C=1 ; D=1 ; E=1 ; F=1 ; G=1 ; H = 1; I=1 ;  #100;
A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=1 ; G=0 ; H =0 ; I=0 ;  #100;
A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
A=0 ; B=0 ; C=0 ; D=0 ; E=0 ; F=0 ; G=1 ; H =1 ; I=1 ;  #100;
A=1 ; B=0 ; C=0 ; D=1 ; E=0 ; F=0 ; G=1 ; H =0 ; I=0 ;  #100;
A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
A=0 ; B=1 ; C=0 ; D=0 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
		
/* BLOCK THREE: RESET */

module reset( X,A,B,C,D,E,F,G,H,I);
output X;
input A,B,C,D,E,F,G,H,I;
wire x1,x2,x3;
assign x1=((A&B)&(C&D)); 
assign x2=((E&F)&(G&H)); 
assign x3=(x1&x2);
assign X= x3&I;
endmodule


/* TEST BENCH FOR BLOCK THREE(RESET) */

	A=1 ; B=1 ; C=1 ; D=1 ; E=1 ; F=1 ; G=1 ; H = 1; I=1 ;  #100;
	A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=0 ; B=0 ; C=0 ; D=0 ; E=0 ; F=0 ; G=1 ; H =1 ; I=1 ;  #100;
	A=1 ; B=0 ; C=0 ; D=1 ; E=0 ; F=0 ; G=1 ; H =0 ; I=0 ;  #100;
	A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=0 ; B=1 ; C=0 ; D=0 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=0 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=1 ; B=0 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=0 ; B=1 ; C=0 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;
	A=0 ; B=0 ; C=1 ; D=1 ; E=1 ; F=0 ; G=0 ; H =1 ; I=0 ;  #100;

/* BLOCK FOUR: UMPIRE CIRCUIT */

module DFF(Clk,CE,reset,D,set,Q,Qbar);
input Clk,CE,reset,D,set; 
output Q,Qbar;
reg temp; 
 always @(posedge(Clk))
    begin
        if(Clk == 1) 
        begin
            if (CE == 1) 
                temp = D;  
            else if(set == 1)   
             temp = 1; 
         else if (reset == 1) 
                 temp = 0;       
      end      
    end 
assign Q = temp;
assign Qbar= ~temp;    
endmodule

module umpire_circuit(P1_W,P2_W,set,reset,P1_WI,P2_WI,P1_WIbar,P2_WIbar,CE);
input P1_W,P2_W,set,reset,CE;
output P1_WI,P2_WI;
inout P1_WIbar,P2_WIbar; 

DFF D1 (P1_W,CE,reset,P2_WIbar,set,P1_WI,P1_WIbar);
DFF D2 (P2_W,CE,reset,P1_WIbar,set,P2_WI,P2_WIbar);
endmodule



