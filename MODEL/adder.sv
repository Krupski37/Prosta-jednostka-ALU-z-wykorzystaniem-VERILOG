module adder(  i_a, i_b,
                        o_sum, o_carry);
    parameter LEN = 4;
    input  logic signed [LEN-1:0] i_a, i_b;
    output logic signed [LEN-1:0] o_sum;
    output logic  [0:0] o_carry;

    // Blok opisujacy logike 
    always_comb
    begin
        o_carry = '0;
        o_sum = i_a + i_b;
        if (i_a[LEN-1] == i_b[LEN-1]) begin
            if (o_sum[LEN-1] != i_a[LEN-1]) begin
                o_carry = '1;
            end
        end
    end
endmodule