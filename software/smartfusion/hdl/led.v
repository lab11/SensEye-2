// led.v

module led_test(clk, resetn, led_out);

input clk, resetn;
output [7:0] led_out;
reg		[7:0] led_reg;
reg		[23:0] counter;

assign led_out = ~led_reg;

always @ (posedge clk)
begin
	if (~resetn)
	begin
		led_reg <= 0;
		counter <= 0;
	end
	else
	begin
		counter <= counter + 1;
		if (counter==24'hffffff)
			led_reg <= led_reg + 1;
	end
end

endmodule