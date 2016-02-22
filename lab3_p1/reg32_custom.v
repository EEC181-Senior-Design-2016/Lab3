module reg32(
	input [31:0] D,
	input write,
	input reset_n,
	input clock,
	output [31:0] Q
);
//////////////////////////////////////
	reg [31:0] intern_reg;

/////////////////////////////////////
////////////////////////////////////
	
	always @ (posedge clock)
	begin
	
		if (~reset_n) begin
			intern_reg <= 32'd0;
			end
		else if (write) begin
			intern_reg <= D;
			end
		else begin
			intern_reg <= Q;
			end
	end// always
//////////////////////////////////////
endmodule

