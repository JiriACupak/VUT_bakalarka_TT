// File Window_reg_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Window_reg_13_block(
input wire Window_reg_13_push,
input wire Window_reg_13_reset,
input wire [11:0] Window_reg_13_input,
output reg [11:0] Window_reg_13_output
);





  always @(posedge Window_reg_13_push, posedge Window_reg_13_reset) begin
    if(Window_reg_13_reset == 1'b1) begin
      Window_reg_13_output <= {12{1'b0}};
    end else begin
      Window_reg_13_output <= Window_reg_13_input;
    end
  end


endmodule
