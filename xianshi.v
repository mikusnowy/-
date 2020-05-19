module xianshi(clk,rst,open,i_in,i_out,i_stop,a);

input clk,rst,open;
input [0:6]i_in;
//wire [0:6]s1=i_in;

output reg[0:6]i_out;

output reg i_stop=0;

output reg[0:6] a=60; 

always@(posedge clk or negedge rst)
begin
if(!rst)
begin
	i_out<=i_in;
	a<=60;
	i_stop<=0;
end
else 
	if(open)
	begin
		if(i_out)	
		begin
			if(a)
				a<=a-1;
			else
			begin
				a<=60;
				i_out <= i_out-1;
			end	
		end
		else
		i_stop<=1;
	end
end

endmodule







