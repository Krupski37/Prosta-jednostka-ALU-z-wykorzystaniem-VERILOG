module count_zeros (
    i_a,
    i_b,
    o_zeros,
	o_carry
);
parameter LEN = 4;
input logic signed [LEN-1:0] i_a, i_b;
output logic signed [LEN-1:0] o_zeros;
output logic [0:0] o_carry;
// Zmienna pomocnicza
logic signed [LEN-1:0]zeros; // zmienna pomocnicza sluzaca do zliczania ilosc zer

always_comb begin
    zeros = '0; //ustawienie wartosci domyslnej
	o_carry = '0;
    for(int i=0; i<LEN; i=i+1)begin //iteracja po kazdym bicie i sprawdznie jego wartosci

		if(i_a[i]==0)begin
		zeros = zeros + 1'b1;
		end
		
		if(i_b[i]==0)begin
		zeros = zeros + 1'b1;
		end
	end

	{o_carry, o_zeros} = zeros; // zwrocenie wyniku
end
endmodule
