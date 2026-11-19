// File Window_reg_3_block.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
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

module Window_reg_3_block(
input wire Window_reg_3_push,
input wire Window_reg_3_plus,
input wire Window_reg_3_reset,
input wire [11:0] Window_reg_3_input,
input wire [11:0] Window_reg_3_input_plus,
output wire [11:0] Window_reg_3_output
);




reg [11:0] reg_data;
wire [11:0] next_data;
wire combined_clk;

  assign combined_clk = Window_reg_3_push | Window_reg_3_plus;
  assign next_data = (Window_reg_3_push == 1'b1) ? Window_reg_3_input : reg_data + (Window_reg_3_input_plus);
  always @(posedge combined_clk, posedge Window_reg_3_reset) begin
    if(Window_reg_3_reset == 1'b1) begin
      reg_data <= {12{1'b0}};
    end else begin
      reg_data <= next_data;
    end
  end

  assign Window_reg_3_output = reg_data;

endmodule
