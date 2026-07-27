// -------------------------------------------------------------------------
// Design: Baud Rate Generator (BRG) with Parameterized/Programmable Divisor
// Function: Generates tx_tick and rx_tick (16x oversampling) for UART
// -------------------------------------------------------------------------

module baud_gen (
    input  logic        clk,     // Main system clock
    input  logic        rst_n,   // Asynchronous active-low reset
    input  logic [15:0] dvsr,    // Programmable divisor value from registers
    output logic        tx_tick, // Enable pulse for Transmitter (Baud Rate)
    output logic        rx_tick  // Enable pulse for Receiver (Baud Rate * 16)
);

    // Internal counting registers
    logic [15:0] rx_count_reg;
    logic [3:0]  tx_count_reg; // Modulo-16 counter to divide RX tick by 16

    // 1. Receiver Clock Generator (16x Oversampling)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_count_reg <= '0;
            rx_tick      <= 1'b0;
        end else begin
            if (rx_count_reg == dvsr) begin
                rx_count_reg <= '0;
                rx_tick      <= 1'b1; // Generate a single-cycle pulse
            end else begin
                rx_count_reg <= rx_count_reg + 1'b1;
                rx_tick      <= 1'b0;
            end
        end
    end

    // 2. Transmitter Clock Generator (Derived from RX tick)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_count_reg <= '0;
            tx_tick      <= 1'b0;
        end else begin
            if (rx_tick) begin // Triggered only when an RX tick occurs
                if (tx_count_reg == 4'd15) begin
                    tx_count_reg <= '0;
                    tx_tick      <= 1'b1; // Generate a single-cycle pulse for TX
                end else begin
                    tx_count_reg <= tx_count_reg + 1'b1;
                    tx_tick      <= 1'b0;
                end
            end else begin
                tx_tick <= 1'b0; // Ensure pulse lasts only for one system clock cycle
            end
        end
    end

endmodule