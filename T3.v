module T3(
	input [0:9] A,
	input [0:9] B,
	input reset,
	input CLOCK_50,
	output[0:19] Saida
);
	reg [0:19] regSaida = 0;

	assign Saida = regSaida;
	
	always @(posedge CLOCK_50)begin
		if(reset == 1)
			regSaida <= 0;
		else
			regSaida <= regSaida + A * B;
	end
endmodule