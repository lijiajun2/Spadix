`timescale 1ns/1ps
module pe(icur, ibias, ileft, iright, infifo, ocur, opfifo, oright, oleft, onfifo, sel0, sel1, sel2, sel3, sel4, sel5, clk);
input clk;
input [15:0] icur;
input [15:0] ibias;
input [15:0] ileft;
input [15:0] iright;
input [15:0] infifo;
input sel0;
input sel1;
input sel2;
input sel3;
input sel4;
input sel5;

output [15:0] ocur;
output [15:0] opfifo;
output [15:0] oright;
output [15:0] oleft;
output [15:0] onfifo;

reg [15:0] prev;
reg [15:0] pprev;
reg [15:0] wh;
reg [15:0] ws;
reg [15:0] wv;
reg [15:0] rcur;
reg [15:0] rout;
reg [15:0] rneighbor;

wire [15:0] add0_res, add1_res, add2_res, add3_res, add4_res, mul0_res, mul1_res, mul2_res;
wire [15:0] mux0_res, mux1_res, mux2_res; 
reg [15:0] zero;

initial begin
    zero=16'b0;
    wh=16'b1;
    wv=16'b1;
    ws=16'b1;
end


float_adder adder0(
    .num1 (icur),
    .num2 (pprev),
    .result (add0_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());

float_multi mul0(
    .num1 (add0_res),
    .num2 (wh),
    .result (mul0_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());

float_multi mul1(
    .num1 (prev),
    .num2 (ws),
    .result (mul1_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());

float_adder adder1(
    .num1 (mul0_res),
    .num2 (mul1_res),
    .result (add1_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());

always@(posedge clk)
begin
    rcur=add1_res;
    prev=icur;
    pprev=prev;
end

mux2_1 mux0(
    .x_in0 (ibias),
    .x_in1 (zero),
    .sel (sel0),
    .y_out (mux0_res));

mux2_1 mux1(
    .x_in0 (iright),
    .x_in1 (zero),
    .sel (sel1),
    .y_out (mux1_res));

mux2_1 mux2(
    .x_in0 (ileft),
    .x_in1 (infifo),
    .sel (sel2),
    .y_out (mux2_res));

float_adder adder2(
    .num1 (rcur),
    .num2 (mul0_res),
    .result (add2_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());

float_adder adder3(
    .num1 (mul1_res),
    .num2 (mul2_res),
    .result (add3_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());   

float_adder adder4(
    .num1 (add2_res),
    .num2 (add3_res),
    .result (add4_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());   

always@(posedge clk)
begin
    rout=add4_res;
end 

float_multi mul2(
    .num1 (prev),
    .num2 (wv),
    .result (mul2_res),
    .overflow (),
    .zero (),
    .NaN (),
    .precisionLost ());

always@(posedge clk)
begin
    rneighbor=mul2_res;
end 

demux1_2 demux0(
    .x_in (rneighbor),
    .sel (sel3),
    .y_out0 (oright),
    .y_out1 (onfifo));

demux1_2 demux1(
    .x_in (rneighbor),
    .sel (sel4),
    .y_out0 (oleft),
    .y_out1 ());

demux1_2 demux2(
    .x_in (rout),
    .sel (sel5),
    .y_out0 (ocur),
    .y_out1 (opfifo));
endmodule
