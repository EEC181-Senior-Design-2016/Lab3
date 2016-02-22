module reg32_avalon_interface(
input clk,
input reset_n,
input write,
input [31:0] writedata,
input read,
output [31:0] readdata,
//input [3:0] byteenable,
input chipselect,
output [31:0] Q_external,
////////////////////////////

output wait_request
//output readdatavalid
);

//wire[3:0] local_byteenable;
wire [31:0] to_reg, from_reg;
assign to_reg = writedata;
assign Q_external = (read) ? from_reg:31'bz;
//assign local_byteenable = (chipselect & write) ? 4'd0;
/////////////////////////////////
assign wait_request = (read | write) ? 1'b1:1'b0;
assign readdata = (read) ? from_reg:31'bz;
/////////////////////////////////

reg32 U1(
.clock		(clk),
.reset_n		(reset_n),
.D				(to_reg),
.Q				(from_reg),
.write      (write)
);

endmodule