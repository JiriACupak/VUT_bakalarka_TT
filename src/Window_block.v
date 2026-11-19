// File Window_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Window_block(
input wire [11:0] Window_block_input_data,
output wire [11:0] Window_block_output_data,
input wire Window_block_reset
);




wire [11:0] input_reg_1;
wire [11:0] input_reg_2;
wire [11:0] input_reg_3;
wire [11:0] input_reg_4;
wire [11:0] input_reg_5;
wire [11:0] input_reg_6;
wire [11:0] input_reg_7;
wire [11:0] input_reg_8;
wire [11:0] input_reg_9;
wire [11:0] input_reg_10;
wire [11:0] input_reg_11;
wire [11:0] input_reg_12;
wire [11:0] input_reg_13;
wire [11:0] input_reg_14;
wire [11:0] input_reg_15;
wire [11:0] input_reg_16;
wire [11:0] input_reg_tpm;
wire push_reg_1;
wire push_reg_2;
wire push_reg_3;
wire push_reg_4;
wire push_reg_5;
wire push_reg_6;
wire push_reg_7;
wire push_reg_8;
wire push_reg_9;
wire push_reg_10;
wire push_reg_11;
wire push_reg_12;
wire push_reg_13;
wire push_reg_14;
wire push_reg_15;
wire push_reg_16;
wire [11:0] plus_reg_1;
wire [11:0] plus_reg_9;
wire [11:0] plus_reg_16;
wire plus_sig_reg_1;
wire plus_sig_reg_9;
wire plus_sig_reg_16;
wire [11:0] output_reg_1;
wire [11:0] output_reg_2;
wire [11:0] output_reg_3;
wire [11:0] output_reg_4;
wire [11:0] output_reg_5;
wire [11:0] output_reg_6;
wire [11:0] output_reg_7;
wire [11:0] output_reg_8;
wire [11:0] output_reg_9;
wire [11:0] output_reg_10;
wire [11:0] output_reg_11;
wire [11:0] output_reg_12;
wire [11:0] output_reg_13;
wire [11:0] output_reg_14;
wire [11:0] output_reg_15;
wire [11:0] output_reg_16;

  assign input_reg_1 = Window_block_input_data;
  Window_reg_3_block Window_reg_3_component_1(
    .Window_reg_3_push(push_reg_1),
    .Window_reg_3_plus(plus_sig_reg_1),
    .Window_reg_3_reset(Window_block_reset),
    .Window_reg_3_input(input_reg_1),
    .Window_reg_3_input_plus(plus_reg_1),
    .Window_reg_3_output(input_reg_2));

  assign output_reg_1 = input_reg_2;
  Window_reg_3_block Window_reg_3_component_9(
    .Window_reg_3_push(push_reg_9),
    .Window_reg_3_plus(plus_sig_reg_9),
    .Window_reg_3_reset(Window_block_reset),
    .Window_reg_3_input(input_reg_9),
    .Window_reg_3_input_plus(plus_reg_9),
    .Window_reg_3_output(input_reg_10));

  assign output_reg_9 = input_reg_10;
  Window_reg_3_block Window_reg_3_component_16(
    .Window_reg_3_push(push_reg_16),
    .Window_reg_3_plus(plus_sig_reg_16),
    .Window_reg_3_reset(Window_block_reset),
    .Window_reg_3_input(input_reg_16),
    .Window_reg_3_input_plus(plus_reg_16),
    .Window_reg_3_output(input_reg_tpm));

  assign output_reg_16 = input_reg_tpm;
  Window_reg_13_block Window_reg_13_component_2(
    .Window_reg_13_push(push_reg_2),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_2),
    .Window_reg_13_output(input_reg_3));

  assign output_reg_2 = input_reg_2;
  Window_reg_13_block Window_reg_13_component_3(
    .Window_reg_13_push(push_reg_3),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_3),
    .Window_reg_13_output(input_reg_4));

  assign output_reg_3 = input_reg_4;
  Window_reg_13_block Window_reg_13_component_4(
    .Window_reg_13_push(push_reg_4),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_4),
    .Window_reg_13_output(input_reg_5));

  assign output_reg_4 = input_reg_5;
  Window_reg_13_block Window_reg_13_component_5(
    .Window_reg_13_push(push_reg_5),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_5),
    .Window_reg_13_output(input_reg_6));

  assign output_reg_5 = input_reg_6;
  Window_reg_13_block Window_reg_13_component_6(
    .Window_reg_13_push(push_reg_6),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_6),
    .Window_reg_13_output(input_reg_7));

  assign output_reg_6 = input_reg_7;
  Window_reg_13_block Window_reg_13_component_7(
    .Window_reg_13_push(push_reg_7),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_7),
    .Window_reg_13_output(input_reg_8));

  assign output_reg_7 = input_reg_8;
  Window_reg_13_block Window_reg_13_component_8(
    .Window_reg_13_push(push_reg_8),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_8),
    .Window_reg_13_output(input_reg_9));

  assign output_reg_8 = input_reg_9;
  Window_reg_13_block Window_reg_13_component_10(
    .Window_reg_13_push(push_reg_10),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_10),
    .Window_reg_13_output(input_reg_11));

  assign output_reg_10 = input_reg_11;
  Window_reg_13_block Window_reg_13_component_11(
    .Window_reg_13_push(push_reg_11),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_11),
    .Window_reg_13_output(input_reg_12));

  assign output_reg_11 = input_reg_12;
  Window_reg_13_block Window_reg_13_component_12(
    .Window_reg_13_push(push_reg_12),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_12),
    .Window_reg_13_output(input_reg_13));

  assign output_reg_12 = input_reg_13;
  Window_reg_13_block Window_reg_13_component_13(
    .Window_reg_13_push(push_reg_13),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_13),
    .Window_reg_13_output(input_reg_14));

  assign output_reg_13 = input_reg_14;
  Window_reg_13_block Window_reg_13_component_14(
    .Window_reg_13_push(push_reg_14),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_14),
    .Window_reg_13_output(input_reg_15));

  assign output_reg_14 = input_reg_15;
  Window_reg_13_block Window_reg_13_component_15(
    .Window_reg_13_push(push_reg_15),
    .Window_reg_13_reset(Window_block_reset),
    .Window_reg_13_input(input_reg_15),
    .Window_reg_13_output(input_reg_16));

  assign output_reg_15 = input_reg_16;
  assign Window_block_output_data = input_reg_tpm;

endmodule
