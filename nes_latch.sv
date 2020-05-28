module nes_latch (input logic [3:0] state,
						output logic latch);
	
	always_comb 
		case(state)
		4'd0:		latch = 1;
		default:	latch = 0;
	endcase 
endmodule 