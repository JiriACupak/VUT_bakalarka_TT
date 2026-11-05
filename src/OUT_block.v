// File OUT_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

//-------------------------------------------------
//  zamena "demultiplexor" a "multiplexor"  ---------
//  tady jsou jen multiplexory              ---------
//----------------------------------------------------
// no timescale needed

module OUT_block(
input wire [11:0] OUT_block_in,
output wire [7:0] OUT_block_out,
input wire [2:0] OUT_block_sel
);

// Vyhrazené vstupy
// Vyhrazené výstupy



wire [7:0] OUT_block_in_signal;
wire [7:0] rot_block_in_signal;
wire [7:0] rot_block_out_signal;
wire [7:0] dem_1_in_1_signal;
wire [7:0] dem_1_in_2_signal;
wire [7:0] dem_1_out_signal;
wire dem_1_sel_signal;
wire [7:0] code_in_signal;
wire [7:0] code_out_signal;
wire [7:0] b_4_to_8_in_signal;
wire [7:0] b_4_to_8_out_signal;
wire [7:0] dem_2_in_1_signal;
wire [7:0] dem_2_in_2_signal;
wire [7:0] dem_2_out_signal;
wire dem_2_sel_signal;
wire [7:0] dem_3_in_1_signal;
wire [7:0] dem_3_in_2_signal;
wire [7:0] dem_3_out_signal;
wire dem_3_sel_signal;

  Rotate_block rot_block_component(
    .rotate_block_in(rot_block_in_signal),
    .rotate_block_out(rot_block_out_signal));

  Multiplexor_8_block Demultiplexor_8_component_1(
    .Multiplexor_8_block_in_1(dem_1_in_1_signal),
    .Multiplexor_8_block_in_2(dem_1_in_2_signal),
    .Multiplexor_8_block_out(dem_1_out_signal),
    .Multiplexor_8_block_sel(dem_1_sel_signal));

  Code_switch_block Code_switch_component(
    .code_switch_block_in(code_in_signal),
    .code_switch_block_out(code_out_signal));

  From_8_to_4_block From_8_to_4_component(
    .from_8_to_4_block_in(b_4_to_8_in_signal),
    .from_8_to_4_block_out(b_4_to_8_out_signal));

  Multiplexor_8_block Demultiplexor_8_component_2(
    .Multiplexor_8_block_in_1(dem_2_in_1_signal),
    .Multiplexor_8_block_in_2(dem_2_in_2_signal),
    .Multiplexor_8_block_out(dem_2_out_signal),
    .Multiplexor_8_block_sel(dem_2_sel_signal));

  Multiplexor_8_block Demultiplexor_8_component_3(
    .Multiplexor_8_block_in_1(dem_3_in_1_signal),
    .Multiplexor_8_block_in_2(dem_3_in_2_signal),
    .Multiplexor_8_block_out(dem_3_out_signal),
    .Multiplexor_8_block_sel(dem_3_sel_signal));

  assign OUT_block_in_signal[7:1] = OUT_block_in[11:5];
  assign OUT_block_in_signal[0] = OUT_block_in[4] | OUT_block_in[3];
  assign code_in_signal = OUT_block_in_signal;
  assign dem_1_in_1_signal = OUT_block_in_signal;
  assign dem_1_in_2_signal = code_out_signal;
  assign b_4_to_8_in_signal = dem_1_out_signal;
  assign dem_2_in_1_signal = dem_1_out_signal;
  assign dem_2_in_2_signal = b_4_to_8_out_signal;
  assign rot_block_in_signal = dem_2_out_signal;
  assign dem_3_in_1_signal = dem_2_out_signal;
  assign dem_3_in_2_signal = rot_block_out_signal;
  assign OUT_block_out = dem_3_out_signal;
  assign dem_1_sel_signal = OUT_block_sel[0];
  assign dem_2_sel_signal = OUT_block_sel[1];
  assign dem_3_sel_signal = OUT_block_sel[2];

endmodule
