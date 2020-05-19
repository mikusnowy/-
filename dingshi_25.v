module dingshi_25(clk,led_dingshi_1,open,i,rst,led);


input clk,rst;
input open;
output  reg led_dingshi_1=0;
output  reg led;
output  reg [0:5]i=5'b11001;

parameter a=5'b 11001;
//assign led =led_dingshi_1;

always@(posedge clk or negedge rst)
begin
if(!rst)
	begin
		led_dingshi_1<=0;
		i <= a;
	end
else if(open)	
	begin
		led <= 1;
		
		if(i<2'b10)
			begin
				led_dingshi_1<=1;
				i<=0;
				//led <=0;
				if(!i)
					led<=0;
			end
		else
			begin
				led_dingshi_1<=0;
				i<=i-1;
			end
	end
else
	begin
		i <= 5'b11001;
		led <= 0;
	end	
end

endmodule
