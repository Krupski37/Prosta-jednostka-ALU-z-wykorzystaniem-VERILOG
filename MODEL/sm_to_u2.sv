module sm_to_u2 (
    i_a,
    o_u2code
);
parameter LEN = 4;
input logic signed [LEN-1:0] i_a;
output logic signed [LEN-1:0] o_u2code;

logic signed [LEN-1:0] tmp;

always_comb begin : main
    tmp = '0;
    if (i_a[LEN-1] == 0) begin
        o_u2code = i_a;
    end
    else begin
    tmp = ~(i_a);
    tmp = tmp + 1'b1;
    tmp[LEN-1] = 1;
    o_u2code = tmp;
    end
end
endmodule