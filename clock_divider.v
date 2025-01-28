// produce f(out_clk) = f(in_clk)/cnst

`timescale 1ns / 1ps


module clock_divider(in_clk, rst, out_clk);

input in_clk;       // input clock = (100MHz == 10ns)
input rst;
output reg out_clk;     // output clock = (50MHz == 20ns)


localparam cnst = 10;	// cnst = (in_clk/out_clk)
localparam terminal_cnt = (cnst/2.0) - 1;			// terminal_cnt = 4
// i.e. toggling of out_clk is every 5 cycles of in_clk
// i.e. period of out_clk = 10 cycles of in_clk


reg [31:0] count;


// First Always Block (Counter Logic):
always@(posedge in_clk, posedge rst)

begin
	if(rst == 1'b1)
		count <= 32'b0;
	else if (count == terminal_cnt)
		count <= 32'b0;
	else
		count <= count + 1;
end


// Second Always Block (Output Clock Logic):
always@(posedge in_clk, posedge rst)
begin
	if(rst == 1'b1)
		out_clk <= 1'b0;
	else if(count == terminal_cnt)
		out_clk <= ~out_clk;
	else
		out_clk <= out_clk;
		
end

endmodule