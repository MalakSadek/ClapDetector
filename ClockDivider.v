// // file: ClockDivider.v
// // author: @bkhmsi

// `timescale 1ns/1ns

// module ClockDivider
// (
//     input rst,
//     input clk,
//     output reg out
// );
// parameter n = 25000000;
// reg [26:0] k = 0;
// input clk,rst;
// output reg out;
// always@(posedge clk) begin
// 	k <= (k == n-1 || rst) ? 0:k+1;
// end

// always@(posedge clk) begin
// 	out <= (k >=n/2) ? 1:0;
// end

// endmodule