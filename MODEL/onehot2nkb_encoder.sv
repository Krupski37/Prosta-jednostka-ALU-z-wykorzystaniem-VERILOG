module onehot2nkb_encoder(i_onehot, o_nkb);
    parameter LEN = 4;
    localparam BITS = $clog2(LEN);
    input logic signed [LEN-1:0] i_onehot;
    output logic signed [BITS-1:0] o_nkb;

// pomocniczy sygnal ustawiany
// gdy byla jedynka
    logic s_was1;
    always @(*)
    begin
        {o_nkb, s_was1}  = '0;
        for (int i=0; i < LEN; i++)
        begin : LOOP
            if (i_onehot[i] == 1'b1)
            // jesli wczesnij byla jedynka
            // znaczy ze bledne dane wejsciowe
                if (s_was1) o_nkb  = '1;
                else
                begin
                    s_was1 = '1;
                    o_nkb  = i;
                end
        end : LOOP
        // same zera w kodzie one-hot sa bledem
        if (!s_was1) o_nkb = '1;        
    end

endmodule
