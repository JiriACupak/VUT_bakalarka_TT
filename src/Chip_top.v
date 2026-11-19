module tt_um_Chip_top(
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // Převod aktivního nulového resetu (rst_n) na aktivní jedničkový reset pro tvé bloky
    wire rst = ~rst_n;

    // Piny uio nastavíme jako vstupy (0 = vstup, 1 = výstup)
    assign uio_oe  = 8'b00000000;
    assign uio_out = 8'b00000000;

    // Interní signály
    wire [7:0]  IN_block_in_signal;
    wire [11:0] IN_block_out_signal;
    wire [2:0]  IN_block_sel_signal;

    wire [11:0] OUT_block_in_signal;
    wire [7:0]  OUT_block_out_signal;
    wire [2:0]  OUT_block_sel_signal;

    wire [11:0] change_block_in_signal;
    wire [11:0] change_block_out_signal;
    wire [20:0] change_block_sel_signal;

    // Řídicí signály pro konfigurační registry (musíš je napojit na uio_in!)
    wire        IN_block_reg_en_signal;
    wire [2:0]  IN_block_reg_in_signal;

    wire        OUT_block_reg_en_signal;
    wire [2:0]  OUT_block_reg_in_signal;

    wire        Change_block_reg_en_signal;
    wire [20:0] Change_block_reg_in_signal;

    // Řídicí signály pro Delay_block (musíš je napojit!)
    wire        Delay_block_step_signal;
    wire        Delay_block_num_en_signal;
    wire [7:0]  Delay_block_num_signal;

    // =========================================================================
    // Mapování pinů (Příklad - uprav podle svého rozložení uio_in[7:0])
    // =========================================================================
    assign IN_block_in_signal = ui_in;
    assign uo_out             = OUT_block_out_signal;

    // Příklad napojení řídicích signálů z uio_in, aby nevisely ve vzduchu:
    assign IN_block_reg_in_signal     = uio_in[2:0];
    assign OUT_block_reg_in_signal    = uio_in[2:0];
    assign Change_block_reg_in_signal = {18'b0, uio_in[2:0]}; // Zde si napoj posuvný registr nebo sběrnici

    assign IN_block_reg_en_signal     = uio_in[3];
    assign OUT_block_reg_en_signal    = uio_in[4];
    assign Change_block_reg_en_signal = uio_in[5];

    assign Delay_block_step_signal    = clk;       // Krok navázaný na hodiny
    assign Delay_block_num_en_signal  = uio_in[6];
    assign Delay_block_num_signal     = ui_in;     // Hodnota zpoždění sdílená se vstupem

    // =========================================================================
    // Instanciace modulů (všude použit invertovaný reset 'rst')
    // =========================================================================
    IN_block IN_component(
        .IN_block_in(IN_block_in_signal),
        .IN_block_out(IN_block_out_signal),
        .IN_block_sel(IN_block_sel_signal)
    );

    OUT_block OUT_component(
        .OUT_block_in(OUT_block_in_signal),
        .OUT_block_out(OUT_block_out_signal),
        .OUT_block_sel(OUT_block_sel_signal)
    );

    Change_block change_component(
        .change_block_in(change_block_in_signal),
        .change_block_out(change_block_out_signal),
        .change_block_sel(change_block_sel_signal),
        .change_block_clk(clk)
    );

    Register_3_block register_IN_block(
        .clk(clk),
        .rst(rst),
        .en(IN_block_reg_en_signal),
        .d_in(IN_block_reg_in_signal),
        .d_out(IN_block_sel_signal)
    );

    Register_3_block register_OUT_block(
        .clk(clk),
        .rst(rst),
        .en(OUT_block_reg_en_signal),
        .d_in(OUT_block_reg_in_signal),
        .d_out(OUT_block_sel_signal)
    );

    Register_21_block register_change_block(
        .clk(clk),
        .rst(rst),
        .en(Change_block_reg_en_signal),
        .d_in(Change_block_reg_in_signal),
        .d_out(change_block_sel_signal)
    );

    Delay_block Delay_component(
        .Delay_block_step(Delay_block_step_signal),
        .Delay_block_reset(rst),
        .Delay_block_IN(IN_block_out_signal),
        .Delay_block_num(Delay_block_num_signal),
        .Delay_block_num_en(Delay_block_num_en_signal),
        .Delay_block_OUT(change_block_in_signal)
    );

    Window_block Window_component(
        .Window_block_input_data(change_block_out_signal),
        .Window_block_output_data(OUT_block_in_signal),
        .Window_block_reset(rst)
    );

    // Potlačení varování o nepoužitém pinu ena
    wire _unused = &{ena, uio_in[7], 1'b0};

endmodule
