// File Comparator.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Comparator_block(
output reg Comparator_block_flop,
output reg Comparator_block_reset,
input wire [7:0] Comparator_block_reg_num,
input wire [7:0] Comparator_block_reg_step
);





  always @(Comparator_block_reg_num, Comparator_block_reg_step) begin
    if(Comparator_block_reg_num == Comparator_block_reg_step) begin
      Comparator_block_reset <= 1'b1;
      Comparator_block_flop <= 1'b1;
    end
    else begin
      Comparator_block_reset <= 1'b0;
      Comparator_block_flop <= 1'b0;
    end
  end


endmodule
