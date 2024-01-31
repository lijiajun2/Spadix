module pearray(iarray0, iarray1, iarray2, iarray3, iarray4, iarray5, iarray6, iarray7, 
    ibiasarray0,ibiasarray1,ibiasarray2,ibiasarray3, ibiasarray4,ibiasarray5,ibiasarray6,ibiasarray7,
    infifo,
    oarray0, oarray1, oarray2, oarray3, oarray4, oarray5, oarray6, oarray7, 
    onfifo, onext, oprev, clk);

parameter PENUM=8;
parameter DATA_WIDTH=16;

input clk;
input [15:0] iarray0;
input [15:0] iarray1;
input [15:0] iarray2;
input [15:0] iarray3;
input [15:0] iarray4;
input [15:0] iarray5;
input [15:0] iarray6;
input [15:0] iarray7;

input [15:0] ibiasarray0;
input [15:0] ibiasarray1;
input [15:0] ibiasarray2;
input [15:0] ibiasarray3;
input [15:0] ibiasarray4;
input [15:0] ibiasarray5;
input [15:0] ibiasarray6;
input [15:0] ibiasarray7;

input [15:0] infifo;

output reg [15:0] oarray0;
output reg [15:0] oarray1;
output reg [15:0] oarray2;
output reg [15:0] oarray3;
output reg [15:0] oarray4;
output reg [15:0] oarray5;
output reg [15:0] oarray6;
output reg [15:0] oarray7;

output [15:0] onfifo;
output [15:0] onext;
output [15:0] oprev;

wire [15:0] toleft0;
wire [15:0] toleft1;
wire [15:0] toleft2;
wire [15:0] toleft3;
wire [15:0] toleft4;
wire [15:0] toleft5;
wire [15:0] toleft6;
wire [15:0] toleft7;

wire [15:0] toright0;
wire [15:0] toright1;
wire [15:0] toright2;
wire [15:0] toright3;
wire [15:0] toright4;
wire [15:0] toright5;
wire [15:0] toright6;
wire [15:0] toright7;

reg [15:0] zero[0:PENUM-1];


wire [15:0] rout[0:PENUM-1];

initial begin
    zero[0]=15'b0;
    zero[1]=15'b0;
    zero[2]=15'b0;
    zero[3]=15'b0;
    zero[4]=15'b0;
    zero[5]=15'b0;
    zero[6]=15'b0;
    zero[7]=15'b0;
end

pe pe01(.icur (iarray0),.ibias (ibiasarray0),.ileft (zero[0]),.iright (toleft1),.infifo (infifo),.ocur (rout[0]),.opfifo (),.oright (toright0),.oleft (oprev),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b1),.sel3 (1'b0),.sel4 (1'b1),.sel5 (1'b0),.clk (clk));

pe pe02(.icur (iarray1),.ibias (ibiasarray1),.ileft (toright0),.iright (toleft2),.infifo (zero[1]),.ocur  (rout[2]),.opfifo (),.oright (toright1),.oleft (toleft1),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b0),.sel3 (1'b0),.sel4 (1'b0),.sel5 (1'b0),.clk (clk));

pe pe03(.icur (iarray2),.ibias (ibiasarray2),.ileft (toright1),.iright (toleft3),.infifo (zero[2]),.ocur  (rout[3]),.opfifo (),.oright (toright2),.oleft (toleft2),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b0),.sel3 (1'b0),.sel4 (1'b0),.sel5 (1'b0),.clk (clk));

pe pe04(.icur (iarray3),.ibias (ibiasarray3),.ileft (toright2),.iright (toleft4),.infifo (zero[3]),.ocur  (rout[3]),.opfifo (),.oright (toright3),.oleft (toleft3),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b0),.sel3 (1'b0),.sel4 (1'b0),.sel5 (1'b0),.clk (clk));

pe pe05(.icur (iarray4),.ibias (ibiasarray4),.ileft (toright3),.iright (toleft5),.infifo (zero[4]),.ocur  (rout[4]),.opfifo (),.oright (toright4),.oleft (toleft4),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b0),.sel3 (1'b0),.sel4 (1'b0),.sel5 (1'b0),.clk (clk));

pe pe06(.icur (iarray5),.ibias (ibiasarray5),.ileft (toright4),.iright (toleft6),.infifo (zero[5]),.ocur  (rout[5]),.opfifo (),.oright (toright5),.oleft (toleft5),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b0),.sel3 (1'b0),.sel4 (1'b0),.sel5 (1'b0),.clk (clk));

pe pe07(.icur (iarray6),.ibias (ibiasarray6),.ileft (toright5),.iright (toleft7),.infifo (zero[6]),.ocur  (rout[6]),.opfifo (),.oright (toright6),.oleft (toleft6),
    .onfifo (),.sel0  (1'b1),.sel1 (1'b0),.sel2 (1'b0),.sel3 (1'b0),.sel4 (1'b0),.sel5 (1'b0),.clk (clk));

pe pe08(.icur (iarray7),.ibias (ibiasarray7),.ileft (toright6),.iright (zero[7]),.infifo (zero[7]),.ocur  (rout[7]),.opfifo (onext),.oright (),.oleft (toleft7),
    .onfifo (onfifo),.sel0  (1'b1),.sel1 (1'b1),.sel2 (1'b0),.sel3 (1'b1),.sel4 (1'b0),.sel5 (1'b1),.clk (clk));


always@(posedge clk) begin
    oarray0[15:0]=rout[0];
    oarray1[15:0]=rout[1];
    oarray2[15:0]=rout[2];
    oarray3[15:0]=rout[3];
    oarray4[15:0]=rout[4];
    oarray5[15:0]=rout[5];
    oarray6[15:0]=rout[6];
    oarray7[15:0]=rout[7];
end

endmodule


