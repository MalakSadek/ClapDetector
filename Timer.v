// file: Timer.v
// author: @bkhmsi

`timescale 1ns/1ns

module Timer(clk,rst,out,clr);

reg k[10:0];
reg flag = 1'b0;
always@(posedge clk) begin
    if(rst || clr) k<=0;
    else k<= flag ? 0:k+1;
end

endmodule