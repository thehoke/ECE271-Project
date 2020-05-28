module nes_data (input logic reset,
					  input logic [3:0] state,
					  input logic data,
					  output logic [7:0] buttons); //a, b, select, start, up, down, left, right
					  
	always_ff@(posedge state[0], posedge reset)
			if(reset) buttons <= 8'b0;
			else case(state)
				4'd1:  buttons[0] <= data; //a
				4'd3:	 buttons[1] <= data;	//b
				4'd5:  buttons[2] <= data; //select
				4'd7:	 buttons[3] <= data; //start
				4'd9:  buttons[4] <= data; //up
				4'd11: buttons[5] <= data; //down
				4'd13: buttons[6] <= data;	//left
				4'd15: buttons[7] <= data;	//right
				default: buttons <= buttons;
			endcase
endmodule 