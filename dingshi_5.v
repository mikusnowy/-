module dingshi_5(clk,led_dingshi_2,open,i2,rst,led);


input clk,rst;
input open;
output  reg led_dingshi_2=0;
output  reg led;
output  [0:5]i2;
reg [0:5]i2=3'b 101;

parameter a=3'b 101;
//assign led =led_dingshi_2;

always@(posedge clk or negedge rst)
begin
if(open)	
	begin
		led <= 1;
		if(!rst)
		begin
			led_dingshi_2<=0;
			i2 <= a;
		end
		else 
		if(i2<2'b10)
			begin
				led_dingshi_2<=1;
				i2<=0;
				//led <=0;
				if(!i2)
					led<=0;
			end
		else
			begin
//				led_dingshi_2<=0;
				i2<=i2-1;
			end
	end
else
	begin
		i2 <= 3'b101;
		led <= 0;
//		led_dingshi_2<=0;
	end	
end

endmodule
