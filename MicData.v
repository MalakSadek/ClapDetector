// // file: MicData.v
// // author: @bkhmsi

// `timescale 1ns/1ns

// module MicData(clk,rst, MISO, sClk, nCS);
// input clk, rst;
// input MISO;
// output reg nCS, sClk;

// wire start, done;
// reg [1:0] state, nextState;
// reg [3:0] shiftCounter;
// reg [11:0] audio;

// parameter [1:0] A=2'b00, B=2'b01, C=2'b10;


// always@(*) begin 
//     case(state)
//         A: 
//             nCS = 1;
//             nextState <= B;
//         B:
//             nCS = 0;
//             if(shiftCounter >= 15)
//                 nextState <= C;
//         C:
//             nCS = 1;
//             if(done)
//                 nextState <= A;
//     endcase
// end

// always@(posedge clk_12) begin 
//     audio[shiftCounter] <= MISO;
//     shiftCounter <= shiftCounter+1;
// end

// always @(posedge clk) begin
//     if(rst) state<=A;
//     else state<=nextState;
// end

// endmodule