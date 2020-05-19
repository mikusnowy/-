module XYJ_tb;

reg open,clk,rst;
reg [0:6]i_in;
reg i_stop_1;

wire [0:6]i_out;
wire led1;
wire led2;
wire led3;
wire led_stop;
//wire [0:5] i;
//wire open_1;
wire a1;
wire a2;
wire a3;
wire a4;

wire [0:5]i1;
wire [0:5]i2;
wire [0:5]i3;
wire [0:5]i4;
wire rst_1;

XYJ  xiyiji(open,clk,rst,i_in,i_out,led1,led2,led3,led_stop,i1,i2,i3,i4,a1,a2,a3,a4,open_1,i_stop_1,rst_1);



initial 
begin
rst=0;
clk=1;
open=0;
i_in=2'b 10;
i_stop_1=0;
#3
open=1;
#5
rst=1;
//open=1;
//open=1;
#4880
i_stop_1=1;
end

always #20 clk=~clk;

endmodule







