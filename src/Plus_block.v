// File Plus_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001-2023 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2023 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

// no timescale needed

module Plus_12_block(
input wire [11:0] plus_12_block_in,
output wire [11:0] plus_12_block_out,
input wire [7:0] plus_12_block_in_1
);




wire [12:0] s_in; wire [12:0] s_in_2;
wire [12:0] s_sum;
parameter MAX_VAL = 2047;
parameter MIN_VAL = -13'd2048;

  assign s_in = plus_12_block_in;
  assign s_in_2 = plus_12_block_in_1;
  assign s_sum = s_in + s_in_2;
  assign plus_12_block_out = s_sum > MAX_VAL ? 2047 : s_sum < MIN_VAL ? -12'd2048 : s_sum[11:0];

endmodule
