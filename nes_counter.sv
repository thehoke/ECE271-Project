module nes_counter (input logic clk,
					 input logic reset,
					 output logic [3:0] count);
		
	always_ff@(posedge clk, posedge reset)
	begin 
		if(reset) count = 4'b0;
		else if(count > 15) count = 4'b0;
		else count = count + 1;
	end
	
endmodule 