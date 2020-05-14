// file: FIR.v
// author: @bkhmsi

`timescale 1ns/1ns

module FIR(clk,rst,x,dataout);
input [7:0]x;
input clk,rst;
output [9:0]dataout;
wire [7:0]d1,d2,d3;
wire [7:0]m1,m2,m3,m4,m5;
wire [7:0]d11,d12,d13,d14;
parameter h0=3'b101;
parameter h1=3'b100;
parameter h2=3'b011;
parameter h3=3'b010;
parameter h4=3'b001;
assign m1=x>>h0;
DFF u2(clk,rst,x,d11);
assign m2=d11>>h1;
assign d1=m1+m2;
DFF u4(clk,rst,d11,d12);
assign m3=d12>>h2;
assign d2=d1+m3;
DFF u6(clk,rst,d12,d13);
assign m4=d13>>h3;
assign d3=d2+m4;
DFF u8(clk,rst,d13,d14);
assign m5=d14>>h4;
assign dataout=d3+m5;
endmodule

module DFF(clk,rst,d,q);// sub module d flipflop
input clk,rst;
input [7:0]d;
output [7:0]q;
reg [7:0]q;
always@(posedge clk) begin
    if(rst) q <=0;
    else q <=d;
end
endmodule

