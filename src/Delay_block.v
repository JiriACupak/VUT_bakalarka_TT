// File Delay_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Delay_block(
input wire Delay_block_step,
input wire Delay_block_reset,
input wire [11:0] Delay_block_IN,
input wire [7:0] Delay_block_num,
input wire Delay_block_num_en,
output wire [11:0] Delay_block_OUT
);




wire [7:0] reg_num_signal;
wire [7:0] reg_step_signal;
wire reset_cmp_signal;
wire reset_flop_signal;

  Delay_register_12_block Delay_register_12_component(
    .Delay_register_12_block_flop(reset_flop_signal),
    .Delay_register_12_block_reset(Delay_block_reset),
    .Delay_register_12_block_IN(Delay_block_IN),
    .Delay_register_12_block_OUT(Delay_block_OUT));

  Delay_register_num Delay_register_num_component(
    .Delay_register_num_en(Delay_block_num_en),
    .Delay_register_num_reset(Delay_block_reset),
    .Delay_register_num_NUM(Delay_block_num),
    .Delay_register_num_OUT(reg_num_signal));

  Delay_register_step_block Delay_register_step_component(
    .Delay_register_step_block_step(Delay_block_step),
    .Delay_register_step_block_reset(Delay_block_reset),
    .Delay_register_step_block_reset_cmp(reset_cmp_signal),
    .Delay_register_step_block_OUT(reg_step_signal));

  Comparator_block Comparator_component(
    .Comparator_block_flop(reset_flop_signal),
    .Comparator_block_reset(reset_cmp_signal),
    .Comparator_block_reg_num(reg_num_signal),
    .Comparator_block_reg_step(reg_step_signal));


endmodule
