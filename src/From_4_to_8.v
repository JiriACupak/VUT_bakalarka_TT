// File From_4_to_8.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module From_4_to_8_block(
input wire [7:0] from_4_to_8_block_in,
output wire [7:0] from_4_to_8_block_out
);

// Vyhrazené vstupy
// Vyhrazené výstupy




  assign from_4_to_8_block_out[3:0] = from_4_to_8_block_in[3:0];
  assign from_4_to_8_block_out[4] = from_4_to_8_block_in[3];
  assign from_4_to_8_block_out[5] = from_4_to_8_block_in[3];
  assign from_4_to_8_block_out[6] = from_4_to_8_block_in[3];
  assign from_4_to_8_block_out[7] = from_4_to_8_block_in[3];

endmodule
