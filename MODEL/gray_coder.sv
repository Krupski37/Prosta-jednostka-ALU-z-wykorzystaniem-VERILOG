module gray_koder2 (i_data, o_gray);

    parameter LEN = 4;
    input  logic signed [LEN-1:0] i_data;
    output logic signed [LEN-1:0] o_gray;

    always_comb
    begin
        if (i_data[LEN-1] == 1) begin // zwrocenie kodu bledu jezeli liczba na wejsciu jest ujemna
            o_gray = '1;
        end else
        begin
            o_gray  = i_data ^ (i_data >> 1);
        end
    end

endmodule