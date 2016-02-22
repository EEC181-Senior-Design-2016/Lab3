module sdram_master(
input						clk,
input						waitrequest,
input						readdatavalid,
input 		[15:0]	readdata,
input						reset_n,
input 					ready,
output reg 				done = 1'b0,
output reg 				read_n = 1'b1,
output reg				write_n = 1'b1,
output reg				chipselect = 1'b1,
output reg 	[31:0]	address = BASE_ADDR,
output reg 	[1:0]		byteenable = 2'b11,
output reg	[15:0]	writedata
);
//****************************************
localparam S0 = 0;								// wait state
localparam S1 = 1; 							// read state
localparam S2 = 2; 							// write state
localparam S3 = 3;								// reset
localparam BASE_ADDR 		= 0;//32'h0000_0000;
localparam BASE_ADDR_MAX = 2;//32'h0000_0002;
localparam BASE_ADDR_MIN = 4;//32'h0000_0004;
//****************************************
reg [1:0] 	State = S0;
reg [1:0]	Next_state = S0;
reg [3:0] 	R_count;
reg [3:0] 	Next_R_count;
reg [1:0]	W_count;
reg [1:0] 	Next_W_count;
reg 			Next_R_n;
reg 			Next_W_n;
reg [31:0] 	Next_addr = BASE_ADDR;
reg [15:0]	Next_WD;
reg [15:0]	Max = 0;
reg [15:0]	Next_Max = 0;
reg [15:0]	Min = 16'hFFFF; 
reg [15:0]	Next_Min = 16'hFFFF; 

// *********************************************************************************************** always update current regs 
always @ (posedge clk) begin

		chipselect <= 1'b1;
		byteenable <= 2'b11;
	if(!reset_n) begin
		State 		<= S0;
		R_count 		<= 0;
		W_count 		<= 0;
		address 		<= BASE_ADDR;
		read_n 		<= 1'b1;
		write_n 		<= 1'b1;
		writedata 	<= 0;
		Max 			<= 0;
		Min 			<= 16'hFFFF;
	end // if
	else begin
		State 		<= Next_state;
		R_count 		<= Next_R_count;
		W_count 		<= Next_W_count;
		address 		<= Next_addr;
		read_n 		<= Next_R_n;
		write_n 		<= Next_W_n;
		writedata 	<= Next_WD;
		Max 			<= Next_Max;
		Min 			<= Next_Min;
	end
	
end 
// ********************************************************************************************** always find next regs 
always @ (*) begin
	case (State)
			// ########################################################### S0
		S0: begin 
			// constant next regs of s0
			Next_R_count = R_count;
			Next_W_count = 0;
			Next_addr = BASE_ADDR;
			Next_R_n = 1'b1;
			Next_W_n = 1'b1;
			Next_WD = writedata;
			Next_Max = Max;
			Next_Min = Min;
			done = 0;
			
			// varying next reg (state)
			if(ready && One_tick) 	begin	Next_state = S1;	end
			else 							begin	Next_state = S0;	end	
		end 
		// ########################################################### S1
		S1: begin
			// constant next regs of s1
			Next_W_count = 0;
			Next_addr = BASE_ADDR;
			Next_R_n = 1'b0;
			Next_W_n = 1'b1;
			Next_WD = writedata;
			
			//varying next regs (max, min, state, read count, done) 
			if(!waitrequest && readdatavalid && (R_count > 'd9)) begin	// if getting last read
				
				//check if max or min, else keep same
				if(readdata > Max) begin 
					Next_Max = readdata;
					Next_Min = Min;
				end
				else if(readdata < Min) begin 
					Next_Max = Max;
					Next_Min = readdata;
				end
				else begin 
					Next_Max = Max;
					Next_Min = Min;
				end
				
				//keep count same and move to s2
				Next_R_count = R_count;
				Next_R_n = 1'b1;
				done = 1'b1;
				Next_state = S2;	
			end			
			
			else if(!waitrequest && readdatavalid 	&& (R_count < 'd10))	begin	// still reading
			
				//check if max or min, else keep same
				if(readdata > Max) begin 
					Next_Max = readdata;
					Next_Min = Min;
				end
				else if(readdata < Min) begin 
					Next_Max = Max;
					Next_Min = readdata;
				end
				else begin 
					Next_Max = Max;
					Next_Min = Min;
				end
				
				// increment read count and go back to s0
				Next_R_count = R_count + 4'b1;
				Next_R_n = 1'b1;
				done = 1'b1;
				Next_state = S0;	
			end
			
			else 	begin	// if waitrequest is not down
				Next_Max = Max;
				Next_Min = Min;
				Next_R_count = R_count;
				Next_R_n = 1'b1;
				done = 0;
				Next_state = S1;	
			end	
			
		end 
		// ########################################################### S2
		S2: begin
			// constant next regs of s2
			Next_R_count = 0;
			Next_R_n = 1'b1;
			Next_W_n = 1'b0;
			Next_Max = Max;
			Next_Min = Min;
		
			// varying next regs of s2
			if (!waitrequest && W_count == 0) begin // write max to base addr + 1
				Next_addr = BASE_ADDR_MAX;
				Next_WD = Max;
				Next_W_count = W_count + 2'd1;
				Next_W_n = 1'b1;
				done = 1'b0;
				Next_state = S2;
			end
			else if (!waitrequest && W_count == 1'd1) begin // write min to base addr + 2
				Next_addr = BASE_ADDR_MIN;
				Next_WD = Min;
				Next_W_count = W_count + 2'd1;
				Next_W_n = 1'b1;
				done = 1'b1;
				Next_state = S3;
			end
			else begin	// wait until waitrequest is down
				Next_addr = address;
				Next_WD = writedata;
				Next_W_count = W_count;
				Next_W_n = 1'b1;
				done = 1'b0;
				Next_state = S2;	
			end	
		end  
		// ########################################################### S3
		S3:	begin	
			// reset values
			Next_R_count = R_count;
			Next_W_count = 0;
			Next_addr = BASE_ADDR;
			Next_R_n = 1'b1;
			Next_W_n = 1'b1;
			Next_WD = writedata;
			Next_Max = 0;
			Next_Min = 16'hFFFF;
			done = 1'b1;
			Next_state = S0;	
		end 
		// ########################################################### default (reset)
		default:	begin	
			// reset values
			Next_R_count = R_count;
			Next_W_count = 0;
			Next_addr = BASE_ADDR;
			Next_R_n = 1'b1;
			Next_W_n = 1'b1;
			Next_WD = writedata;
			Next_Max = 0;
			Next_Min = 16'hFFFF;
			done = 1'b0;
			Next_state = S0; 	
		end
		// ########################################################### endcase
	endcase
		// ########################################################### end always
end

// ##########################################################
// ##########################################################
// ########################################################### Clock

localparam MAX_COUNT = 'd50_000;
reg [16:0] Curr_count = 0;
reg [16:0] Next_count = 0;
reg One_tick = 0;
reg Next_one_tick = 0;

always @(posedge clk) begin

		if (!reset_n) begin 
			Curr_count <= 0;
			One_tick <= 0;
		end //if (reset)
		else begin
			Curr_count <= Next_count;
			One_tick <= Next_one_tick;
		end // else
		
end // **************** always 


always @(*) begin
// *******		find val of Next_count
		if (!One_tick) begin 
			Next_count = Curr_count + 1;			
		end //if 
		else begin	
			Next_count = 0;							
		end // else

// *******		find val of Next_one_tick
	
		if(Curr_count > MAX_COUNT) begin
			Next_one_tick = 1'b1;
		end
		else begin
			Next_one_tick = 1'b0;
		end
		
end // **************** always 
// ########################################################### end always

endmodule
