
module XYJ(open,clk,rst,i_in,i_out,led1,led2,led3,led_stop,i1,i2,i3,i4,a1,a2,a3,a4,open_1,i_stop_1,rst_1);


input open,clk,rst;
input [0:6]i_in;
input i_stop_1;

output  [0:6]i_out;
output  led1;
output  led2;
output  led3;
//output  led2_2;
output  led_stop;
//output  [0:5] i;
//output  [0:6] a;
output open_1;

wire i_stop;
wire led_dingshi_1;
wire led_dingshi_2;
output a1;
output a2;
output a3;
output a4;
wire led2_1;
wire led2_2;

output [0:5]i1;
output [0:5]i2;
output [0:5]i3;
output [0:5]i4;
output rst_1;

xianshi xs(.clk(clk),.rst(rst),.open(open),.i_in(i_in),.i_out(i_out),.i_stop(i_stop));
assign open_1 = (open || a4) && (!i_stop) ;
assign led2 = led2_1 || led2_2;
assign rst_1 = (rst || i_stop_1) && (!a4);
assign led_stop = i_stop;

dingshi_25  ds25_1(.clk(clk),.led_dingshi_1(a1),.open(open_1),.i(i1),.rst(rst_1),.led(led1));
dingshi_5   ds5_1 (.clk(clk),.led_dingshi_2(a2),.open(a1),.i2(i2),.rst(rst_1),.led(led2_1));
dingshi_25  ds25_2(.clk(clk),.led_dingshi_1(a3),.open(a2),.i(i3),.rst(rst_1),.led(led3));
dingshi_5   ds5_2 (.clk(clk),.led_dingshi_2(a4),.open(a3),.i2(i4),.rst(rst_1),.led(led2_2));

endmodule




