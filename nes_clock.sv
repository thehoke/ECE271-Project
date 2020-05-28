module nes_clock(input logic [3:0] state,
					  output logic nes_clock);
					  
	always_comb 
		case(state)
			 4'd2:		nes_clock = 1;
			 4'd4:		nes_clock = 1;
			 4'd6:		nes_clock = 1;
			 4'd8:		nes_clock = 1;
			4'd10:		nes_clock = 1;
			4'd12:		nes_clock = 1;
			4'd14:		nes_clock = 1;
			default: 	nes_clock = 0;
			
		endcase 
endmodule 