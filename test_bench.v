
`timescale 1ns / 1ps

module reciever_tb;

	reg clk;
	reg serial_inp;

	wire [7:0] s_out;

	reciever uut (
		.clk(clk), 
		.serial_inp(serial_inp), 
		.s_out(s_out)
	);
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		
		clk = 0;
		serial_inp = 0;
		
		// E
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h ", $time, s_out);
		
		#20 serial_inp = 0;
		
		// L
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
				
		#20 serial_inp = 0;
		
		// 4
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);		
		
		
		#20 serial_inp = 0;
		
		// 6
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		#20 serial_inp = 0;
		
		// 7
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		#20 serial_inp = 0;
		
		// D
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		#20 serial_inp = 0;
		

		// I
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		#20 serial_inp = 0;	
		
		// G
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		#20 serial_inp = 0;
		
		// I
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		//P
		#20 serial_inp = 0;
		
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		//R
		#20 serial_inp = 0;
		
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);

		//O
		
		#20 serial_inp = 0;
		
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);
		
		#20 serial_inp = 0;	
		
		// G
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;		
		#20 serial_inp = 1;	#20 serial_inp = 1;	#20 serial_inp = 1;
		#20 serial_inp = 0;
		#20 serial_inp = 0;
		#20 serial_inp = 1;
		#20 serial_inp = 0;
		$monitor("Time = %0t | s_out = %h", $time, s_out);

	end	
endmodule