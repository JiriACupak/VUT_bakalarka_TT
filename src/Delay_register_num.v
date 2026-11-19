// File Delay_register_num.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Delay_register_num(
input wire Delay_register_num_en,
input wire Delay_register_num_reset,
input wire [7:0] Delay_register_num_NUM,
output reg [7:0] Delay_register_num_OUT
);





  always @(posedge Delay_register_num_en, posedge Delay_register_num_reset) begin
    if(Delay_register_num_reset == 1'b1) begin
      Delay_register_num_OUT <= {8{1'b0}};
    end else begin
      Delay_register_num_OUT <= Delay_register_num_NUM;
    end
  end


endmodule
