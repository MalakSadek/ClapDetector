// // file: Clap_Detector.v
// // author: @bkhmsi

// `timescale 1ns/1ns

// module Clap_Detector(
//     input clk,
//     input rst,
//     input [257-1:0] sound,
//     output reg out
// );

// wire clk_2;
// genvar i;
// reg[3:0] counter;

// ClockDivider cd(.clk(clk),.out(clk_2),.rst(rst));
// generate 

//     for( i = 0; i<257; i = i + 1) begin
//         always @(posedge clk) begin
//             if(i >= 5 && i<=80) begin
//                 if(sound[i] >= 15) 
//                     counter <= counter + 1;
//             end
//         end
//     end
    
//     if(counter > 5)
//         out = 1;

// endgenerate

// endmodule