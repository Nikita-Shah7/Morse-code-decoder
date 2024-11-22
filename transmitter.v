`timescale 1ns / 1ps

module transmitter(serial_inp, parallel_out, clk);

//////////////  INPUTS   /////////////////

input serial_inp;       // input from push button on FPGA (not pressed=0, pressed=1)
input clk;          // input clock from FPGA (50MHz)


/////////// WIRE AND REG ////////////////////

reg [3:0]state=4'b0000;


//////////// OUTPUTS /////////////////

output reg [1:0]parallel_out;       // detect dot(01), dash(10), character_space(11)


////////// parameters /////////

parameter [3:0] s0 = 4'b0000;
parameter [3:0] s1 = 4'b0001;
parameter [3:0] s2 = 4'b0010;
parameter [3:0] s3 = 4'b0011;
parameter [3:0] s4 = 4'b0100;
parameter [3:0] s5 = 4'b0101;
parameter [3:0] s6 = 4'b0110;
parameter [3:0] s7 = 4'b0111;
parameter [3:0] s8 = 4'b1000;


always@(posedge clk)

    begin
        case(state)

            s0:
            begin
                parallel_out<=2'b00;
                if(~serial_inp)
                    state<=s1;
                else 
                    state<=s0;
            end
            
            s1:
            begin
                parallel_out<=2'b00;
                if(~serial_inp)
                    state<=s7;
                else 
                    state<=s2;
            end
            
            s2:
            begin
                parallel_out<=2'b00;
                if(~serial_inp)
                    state<=s3;
                else 
                    state<=s4;
            end
            
            s3:
            begin
                parallel_out<=2'b01;
                if(~serial_inp)
                    state<=s7;
                else 
                    state<=s2;
            end
            
            s4:
            begin
                parallel_out<=2'b00;
                if(~serial_inp)
                    state<=s0;
                else 
                    state<=s5;
            end
            
            s5:
            begin
                parallel_out<=2'b00;
                if(~serial_inp)
                    state<=s6;
                else 
                    state<=s0;
            end
            
            s6:
            begin
                parallel_out<=2'b10;
                if(~serial_inp)
                    state<=s7;
                else 
                    state<=s2;
            end
            
            s7:
            begin
                parallel_out<=2'b00;
                if(~serial_inp)
                    state<=s8;
                else 
                    state<=s2;
            end
            
            s8:
            begin
                parallel_out<=2'b11;
                if(~serial_inp)
                    state<=s8;
                else 
                    state<=s2;
            end
            
        endcase
    end

endmodule