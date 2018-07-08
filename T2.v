module T2(
	input [0:3] KEY,
	input [0:9] SW,
	input CLOCK_50,
	output reg [7:0] LEDG
);
	reg[25:0] timecounter;
	reg[25:0] tetoBlink;

	always @(posedge CLOCK_50)begin
		if(SW[0] == 1)
			tetoBlink = 25000000;
		else if(SW[1] == 1)
			tetoBlink = 22500000;
		else if(SW[2] == 1)
			tetoBlink = 20000000;
		else if(SW[3] == 1)
			tetoBlink = 17500000;
		else if(SW[4] == 1)
			tetoBlink = 15000000;
		else if(SW[5] == 1)
			tetoBlink = 12500000;
		else if(SW[6] == 1)
			tetoBlink = 10000000;
		else if(SW[7] == 1)
			tetoBlink = 7500000;
		else if(SW[8] == 1)
			tetoBlink = 5000000;
		else if(SW[9] == 1)
			tetoBlink = 2500000;
		else
			tetoBlink = 25000000; // Valor de SW 0
			
		if (KEY[0] == 0) begin
			LEDG <= 8'b11111111;
			timecounter <= 0; 
			tetoBlink <= 0;
		end
		else begin		
			if(timecounter >= tetoBlink)
			begin
				LEDG <= ~LEDG;
				timecounter <= 0;
			end
			else
				timecounter <= timecounter + 1;
		end		
	end

endmodule
