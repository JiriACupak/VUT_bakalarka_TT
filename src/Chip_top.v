// File Chip_top.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module tt_um_example(
input wire [7:0] ui_in,
output wire [7:0] uo_out,
input wire [7:0] uio_in,
output wire [7:0] uio_out,
output wire [7:0] uio_oe,
input wire ena,
input wire clk,
input wire rst_n
);

// Vyhrazené vstupy
// Vyhrazené výstupy
// IOs: Vstupní cesta
// IOs: Výstupní cesta
// IOs: Řízení směru (1=výstup, 0=vstup)
// Logická 1 při napájení
// Hodinový signál
// Reset (aktivní v log. 0)



wire [7:0] IN_block_in_signal;
wire [11:0] IN_block_out_signal;
wire [2:0] IN_block_sel_signal;
wire [11:0] OUT_block_in_signal;
wire [7:0] OUT_block_out_signal;
wire [2:0] OUT_block_sel_signal;
wire [11:0] change_block_in_signal;
wire [11:0] change_block_out_signal;
wire [20:0] change_block_sel_signal;
wire OUT_block_reg_clk_signal;
wire OUT_block_reg_rst_signal;
wire OUT_block_reg_en_signal;
wire [2:0] OUT_block_reg_in_signal;
wire [2:0] OUT_block_reg_out_signal;
wire IN_block_reg_clk_signal;
wire IN_block_reg_rst_signal;
wire IN_block_reg_en_signal;
wire [2:0] IN_block_reg_in_signal;
wire [2:0] IN_block_reg_out_signal;
wire Change_block_reg_clk_signal;
wire Change_block_reg_rst_signal;
wire Change_block_reg_en_signal;
wire [20:0] Change_block_reg_in_signal;
wire [20:0] Change_block_reg_out_signal;
  wire [20:0] Change_block_sel_signal;

  IN_block IN_component(
    .IN_block_in(IN_block_in_signal),
    .IN_block_out(IN_block_out_signal),
    .IN_block_sel(IN_block_sel_signal));

  OUT_block OUT_component(
    .OUT_block_in(OUT_block_in_signal),
    .OUT_block_out(OUT_block_out_signal),
    .OUT_block_sel(OUT_block_sel_signal));

  Change_block change_component(
    .change_block_in(change_block_in_signal),
    .change_block_out(change_block_out_signal),
    .change_block_sel(change_block_sel_signal));

  Register_3_block register_IN_block(
    .clk(IN_block_reg_clk_signal),
    .rst(IN_block_reg_rst_signal),
    .en(IN_block_reg_en_signal),
    .d_in(IN_block_reg_in_signal),
    .d_out(IN_block_reg_out_signal));

  Register_3_block register_OUT_block(
    .clk(OUT_block_reg_clk_signal),
    .rst(OUT_block_reg_rst_signal),
    .en(OUT_block_reg_en_signal),
    .d_in(OUT_block_reg_in_signal),
    .d_out(OUT_block_reg_out_signal));

  Register_21_block register_change_block(
    .clk(Change_block_reg_clk_signal),
    .rst(Change_block_reg_rst_signal),
    .en(Change_block_reg_en_signal),
    .d_in(Change_block_reg_in_signal),
    .d_out(Change_block_reg_out_signal));

  assign IN_block_in_signal = ui_in;
  assign uo_out = OUT_block_out_signal;
  assign IN_block_reg_clk_signal = clk;
  assign IN_block_reg_rst_signal = rst_n;
  assign IN_block_sel_signal = IN_block_reg_out_signal;
  assign OUT_block_reg_clk_signal = clk;
  assign OUT_block_reg_rst_signal = rst_n;
  assign OUT_block_sel_signal = OUT_block_reg_out_signal;
  assign Change_block_reg_clk_signal = clk;
  assign Change_block_reg_rst_signal = rst_n;
  assign Change_block_sel_signal = Change_block_reg_out_signal;
  assign change_block_in_signal = IN_block_out_signal;
  assign OUT_block_in_signal = change_block_out_signal;




  assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

endmodule
