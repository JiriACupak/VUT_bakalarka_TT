// File Shift_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Shift_block(
input wire [11:0] Shift_12_block_in,
output wire [11:0] Shift_12_block_out,
input wire [3:0] Shift_3_block_sel
);




wire [11:0] u_data_in;
wire [31:0] val_int;
wire [11:0] u_out_left; wire [11:0] u_out_right;

  assign u_data_in = Shift_12_block_in;
  assign val_int = $unsigned(Shift_3_block_sel);
  assign u_out_left = val_int >= 6 ? u_data_in << (val_int - 6) : u_data_in;
  assign u_out_right = u_data_in >> val_int;
  assign Shift_12_block_out = Shift_3_block_sel[3] == 1'b1 ? u_out_left : u_out_right;

endmodule
