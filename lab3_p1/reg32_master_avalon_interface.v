module reg32_master_avalon_interface(
input clk,
input reset_n,

input [31:0] readdata,
output read,

output write,
output [31:0] writedata,

output [3:0] byteenable
);
// ****************************************************
reg [31:0] From_slave = 32'd0;
reg Read_reg = 1'd0;
reg Write_reg = 1'd0;

assign byteenable = 4'b1111;
assign writedata = From_slave;
assign read = Read_reg;
assign write = Write_reg;



always @ (posedge clk) begin

	if(!reset_n) begin 
		From_slave <= 32'd0;
	end// if
	else begin
		if (read && (readdata != 0)) begin
			From_slave <= readdata + 32'd1;
		end // if read
		else begin
			From_slave <= readdata;
		end// else read
	end //else
end


always @ (Curr_tick) begin

	if(Curr_tick) begin
		Read_reg = 1'd1;
		Write_reg = 1'd1;
	end
	else begin
		Read_reg = 1'd0;
		Write_reg = 1'd0;
	end
end



//*****************************************************
//***************************** 50MHz -> 1sec ********
parameter MAX_COUNT = 'd50_000_000;
reg [25:0] Curr_count = 0;
reg [25:0] Next_count = 0;
reg Curr_tick = 0;
reg Next_tick = 0;

always @(posedge clk) begin

		if (!reset_n) begin 
			Curr_count <= 0;
			Curr_tick <= 0;
		end //if (reset)
		else begin
			Curr_count <= Next_count;
			Curr_tick <= Next_tick;
		end // else
		
end // **************** always 


always @(Curr_count, Curr_tick) begin
// *******		find val of Next_count
		if (!Curr_tick) begin 
			Next_count = Curr_count + 1;			
		end //if 
		else begin	
			Next_count = 0;							
		end // else

// *******		find val of Next_tick
	
		if(Curr_count > MAX_COUNT) begin
			Next_tick = 1'b1;
		end
		else begin
			Next_tick = 1'b0;
		end
		
end // **************** always 

//***************************** 50MHz -> 1sec ********
//*****************************************************

endmodule