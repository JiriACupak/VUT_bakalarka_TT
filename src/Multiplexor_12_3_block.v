// File Multiplexor_12_3_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Multiplexor_12_3_block(
input wire [11:0] Multiplexor_12_3_block_in_1,
input wire [11:0] Multiplexor_12_3_block_in_2,
input wire [11:0] Multiplexor_12_3_block_in_3,
output reg [11:0] Multiplexor_12_3_block_out,
input wire [1:0] Multiplexor_12_3_block_sel
);





  always @(*) begin
    case(Multiplexor_12_3_block_sel)
      2'b00 : Multiplexor_12_3_block_out <= Multiplexor_12_3_block_in_1;
      2'b01 : Multiplexor_12_3_block_out <= Multiplexor_12_3_block_in_2;
      2'b10 : Multiplexor_12_3_block_out <= Multiplexor_12_3_block_in_3;
      default : Multiplexor_12_3_block_out <= {12{1'bx}};
    endcase
  end


endmodule
