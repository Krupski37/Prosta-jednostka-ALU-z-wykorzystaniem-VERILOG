/* Generated by Yosys 0.10+1 (git sha1 UNKNOWN, gcc 11.2.1 -O2 -fexceptions -fstack-protector-strong -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -fPIC -Os) */

module crc_coder(i_data, i_poly, o_crc);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire [7:0] crc_tmp;
  input [3:0] i_data;
  input [4:0] i_poly;
  output [3:0] o_crc;
  wire [3:0] poly_tmp;
  assign o_crc[0] = i_data[0] & i_poly[0];
  assign _00_ = i_data[1] & i_poly[0];
  assign _01_ = _00_ ^ i_poly[1];
  assign o_crc[1] = i_data[0] ? _01_ : _00_;
  assign _02_ = ~i_data[1];
  assign _03_ = i_data[2] & i_poly[0];
  assign _04_ = _03_ ^ i_poly[1];
  assign _05_ = i_data[1] ? _04_ : _03_;
  assign _06_ = _05_ ^ i_poly[2];
  assign o_crc[2] = i_data[0] ? _06_ : _05_;
  assign _07_ = ~(i_data[3] & i_poly[0]);
  assign _08_ = _07_ ^ i_poly[1];
  assign _09_ = i_data[2] ? _08_ : _07_;
  assign _10_ = _02_ & ~(_09_);
  assign _11_ = _09_ ^ i_poly[2];
  assign _12_ = i_data[1] & ~(_11_);
  assign _13_ = _12_ | _10_;
  assign _14_ = i_data[1] ? _11_ : _09_;
  assign _15_ = ~(_14_ ^ i_poly[3]);
  assign o_crc[3] = i_data[0] ? _15_ : _13_;
  assign crc_tmp = { 4'hx, o_crc };
  assign poly_tmp = i_poly[4:1];
endmodule