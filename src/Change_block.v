// File Change_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Change_block(
output wire [11:0] change_block_out,
input wire [11:0] change_block_in,
input wire [20:0] change_block_sel
);




wire [11:0] invert_12_block_in_signal;
wire [11:0] invert_12_block_out_signal;
wire invert_12_block_en_signal;
wire [11:0] plus_12_block_in_signal;
wire [11:0] plus_12_block_out_signal;
wire [7:0] plus_12_block_in_1_signal;
wire [11:0] Shift_12_block_in_signal;
wire [11:0] Shift_12_block_out_signal;
wire [3:0] Shift_3_block_sel_signal;
wire [11:0] Demultiplexor_12_3_block_in_signal_1;
wire [11:0] Demultiplexor_12_3_block_out_2_signal_1;
wire [11:0] Demultiplexor_12_3_block_out_1_signal_1;
wire [11:0] Demultiplexor_12_3_block_out_3_signal_1;
wire [1:0] Demultiplexor_12_3_block_sel_signal_1;
wire [11:0] Demultiplexor_12_3_block_in_signal_2;
wire [11:0] Demultiplexor_12_3_block_out_2_signal_2;
wire [11:0] Demultiplexor_12_3_block_out_1_signal_2;
wire [11:0] Demultiplexor_12_3_block_out_3_signal_2;
wire [1:0] Demultiplexor_12_3_block_sel_signal_2;
wire [11:0] Demultiplexor_12_3_block_in_signal_3;
wire [11:0] Demultiplexor_12_3_block_out_2_signal_3;
wire [11:0] Demultiplexor_12_3_block_out_1_signal_3;
wire [11:0] Demultiplexor_12_3_block_out_3_signal_3;
wire [1:0] Demultiplexor_12_3_block_sel_signal_3;
wire [11:0] Demultiplexor_12_3_block_in_signal_4;
wire [11:0] Demultiplexor_12_3_block_out_2_signal_4;
wire [11:0] Demultiplexor_12_3_block_out_1_signal_4;
wire [11:0] Demultiplexor_12_3_block_out_3_signal_4;
wire [1:0] Demultiplexor_12_3_block_sel_signal_4;
wire [11:0] Multiplexor_12_3_block_in_1_signal_1;
wire [11:0] Multiplexor_12_3_block_in_2_signal_1;
wire [11:0] Multiplexor_12_3_block_in_3_signal_1;
wire [11:0] Multiplexor_12_3_block_out_signal_1;
wire [1:0] Multiplexor_12_3_block_sel_signal_1;
wire [11:0] Multiplexor_12_3_block_in_1_signal_2;
wire [11:0] Multiplexor_12_3_block_in_2_signal_2;
wire [11:0] Multiplexor_12_3_block_in_3_signal_2;
wire [11:0] Multiplexor_12_3_block_out_signal_2;
wire [1:0] Multiplexor_12_3_block_sel_signal_2;
wire [11:0] Multiplexor_12_3_block_in_1_signal_3;
wire [11:0] Multiplexor_12_3_block_in_2_signal_3;
wire [11:0] Multiplexor_12_3_block_in_3_signal_3;
wire [11:0] Multiplexor_12_3_block_out_signal_3;
wire [1:0] Multiplexor_12_3_block_sel_signal_3;
wire [11:0] Multiplexor_12_3_block_in_1_signal_4;
wire [11:0] Multiplexor_12_3_block_in_2_signal_4;
wire [11:0] Multiplexor_12_3_block_in_3_signal_4;
wire [11:0] Multiplexor_12_3_block_out_signal_4;
wire [1:0] Multiplexor_12_3_block_sel_signal_4;

  Invert_12_block Invert_12_block_component(
    .invert_12_block_in(invert_12_block_in_signal),
    .invert_12_block_out(invert_12_block_out_signal),
    .invert_12_block_en(invert_12_block_en_signal));

  Plus_12_block Plus_12_block_component(
    .plus_12_block_in(plus_12_block_in_signal),
    .plus_12_block_out(plus_12_block_out_signal),
    .plus_12_block_in_1(plus_12_block_in_1_signal));

  Shift_block Shift_block_component(
    .Shift_12_block_in(Shift_12_block_in_signal),
    .Shift_12_block_out(Shift_12_block_out_signal),
    .Shift_3_block_sel(Shift_3_block_sel_signal));

  Multiplexor_12_3_block Multiplexor_12_3_block_component_1(
    .Multiplexor_12_3_block_in_1(Multiplexor_12_3_block_in_1_signal_1),
    .Multiplexor_12_3_block_in_2(Multiplexor_12_3_block_in_2_signal_1),
    .Multiplexor_12_3_block_in_3(Multiplexor_12_3_block_in_3_signal_1),
    .Multiplexor_12_3_block_out(Multiplexor_12_3_block_out_signal_1),
    .Multiplexor_12_3_block_sel(Multiplexor_12_3_block_sel_signal_1));

  Multiplexor_12_3_block Multiplexor_12_3_block_component_2(
    .Multiplexor_12_3_block_in_1(Multiplexor_12_3_block_in_1_signal_2),
    .Multiplexor_12_3_block_in_2(Multiplexor_12_3_block_in_2_signal_2),
    .Multiplexor_12_3_block_in_3(Multiplexor_12_3_block_in_3_signal_2),
    .Multiplexor_12_3_block_out(Multiplexor_12_3_block_out_signal_2),
    .Multiplexor_12_3_block_sel(Multiplexor_12_3_block_sel_signal_2));

  Multiplexor_12_3_block Multiplexor_12_3_block_component_3(
    .Multiplexor_12_3_block_in_1(Multiplexor_12_3_block_in_1_signal_3),
    .Multiplexor_12_3_block_in_2(Multiplexor_12_3_block_in_2_signal_3),
    .Multiplexor_12_3_block_in_3(Multiplexor_12_3_block_in_3_signal_3),
    .Multiplexor_12_3_block_out(Multiplexor_12_3_block_out_signal_3),
    .Multiplexor_12_3_block_sel(Multiplexor_12_3_block_sel_signal_3));

  Multiplexor_12_3_block Multiplexor_12_3_block_component_4(
    .Multiplexor_12_3_block_in_1(Multiplexor_12_3_block_in_1_signal_4),
    .Multiplexor_12_3_block_in_2(Multiplexor_12_3_block_in_2_signal_4),
    .Multiplexor_12_3_block_in_3(Multiplexor_12_3_block_in_3_signal_4),
    .Multiplexor_12_3_block_out(Multiplexor_12_3_block_out_signal_4),
    .Multiplexor_12_3_block_sel(Multiplexor_12_3_block_sel_signal_4));

  assign Multiplexor_12_3_block_in_3_signal_1 = Demultiplexor_12_3_block_out_1_signal_1;
  assign Multiplexor_12_3_block_in_2_signal_2 = Demultiplexor_12_3_block_out_2_signal_1;
  assign Multiplexor_12_3_block_in_2_signal_3 = Demultiplexor_12_3_block_out_3_signal_1;
  assign Multiplexor_12_3_block_in_1_signal_1 = Demultiplexor_12_3_block_out_1_signal_4;
  assign Multiplexor_12_3_block_in_2_signal_1 = Demultiplexor_12_3_block_out_1_signal_3;
  assign invert_12_block_in_signal = Multiplexor_12_3_block_out_signal_1;
  assign Multiplexor_12_3_block_sel_signal_1 = change_block_sel[1:0];
  assign Multiplexor_12_3_block_in_1_signal_2 = Demultiplexor_12_3_block_out_3_signal_2;
  assign Multiplexor_12_3_block_in_3_signal_2 = Demultiplexor_12_3_block_out_2_signal_4;
  assign plus_12_block_in_signal = Multiplexor_12_3_block_out_signal_2;
  assign Multiplexor_12_3_block_sel_signal_2 = change_block_sel[3:2];
  assign Multiplexor_12_3_block_in_1_signal_3 = Demultiplexor_12_3_block_out_2_signal_2;
  assign Multiplexor_12_3_block_in_3_signal_3 = Demultiplexor_12_3_block_out_3_signal_3;
  assign Shift_12_block_in_signal = Multiplexor_12_3_block_out_signal_3;
  assign Multiplexor_12_3_block_sel_signal_3 = change_block_sel[5:4];
  assign Multiplexor_12_3_block_in_1_signal_4 = Demultiplexor_12_3_block_out_1_signal_2;
  assign Multiplexor_12_3_block_in_2_signal_4 = Demultiplexor_12_3_block_out_2_signal_3;
  assign Multiplexor_12_3_block_in_3_signal_4 = Demultiplexor_12_3_block_out_3_signal_4;
  assign change_block_out = Multiplexor_12_3_block_out_signal_4;
  assign Multiplexor_12_3_block_sel_signal_4 = change_block_sel[7:6];
  assign invert_12_block_en_signal = change_block_sel[8];
  assign plus_12_block_in_1_signal = change_block_sel[16:9];
  assign Shift_3_block_sel_signal = change_block_sel[20:17];
  assign Demultiplexor_12_3_block_out_1_signal_1 = change_block_in;
  assign Demultiplexor_12_3_block_out_2_signal_1 = change_block_in;
  assign Demultiplexor_12_3_block_out_3_signal_1 = change_block_in;
  assign Demultiplexor_12_3_block_out_1_signal_2 = invert_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_2_signal_2 = invert_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_3_signal_2 = invert_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_1_signal_3 = plus_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_2_signal_3 = plus_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_3_signal_3 = plus_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_1_signal_4 = Shift_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_2_signal_4 = Shift_12_block_out_signal;
  assign Demultiplexor_12_3_block_out_3_signal_4 = Shift_12_block_out_signal;

endmodule
