// file: FIR_tb.v
// author: @bkhmsi
// Testbench for FIR

`timescale 1ns/1ns

module FIR_tb;

	//Inputs
	reg [7: 0] x;
	reg clk;
	reg rst;


	//Outputs
	wire [9: 0] dataout;

	//Instantiation of Unit Under Test
	FIR uut (
		.x(x),
		.clk(clk),
		.rst(rst),
		.dataout(dataout)
	);
	
	always #50 clk = ~clk;

	initial begin
	//Inputs initialization
    clk = 0;
    rst = 0;
    x = 0;
    #100;
    rst = 1;
    #100;
    rst = 0;
    x = 8'd5;
    #100;
    x = 8'd10;
    #100;
    x = 8'd12;
    #100;
    x = 8'd15;
    #100;
    x = 8'd16;
    #100;
	end
endmodule