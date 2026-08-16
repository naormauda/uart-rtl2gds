// -------------------------------------------------------------------------
// Design: UART Top-Level Module (uart_top)
// Function: Integrates Baud Rate Generator, Transmitter, and Receiver
// -------------------------------------------------------------------------

module uart_top #(
    parameter int DVSR_WIDTH = 16 // Width of the divisor counter
)(
    // Clock and Asynchronous Active-Low Reset
    input  logic                  clk,
    input  logic                  rst_n,

    // Configuration
    input  logic [DVSR_WIDTH-1:0] dvsr,      // Baud rate divisor value

    // Transmitter Interface
    input  logic                  tx_start,  // Trigger to start transmission
    input  logic [7:0]            tx_data,   // Parallel byte to transmit
    output logic                  tx_done,   // Transmission completed flag
    output logic                  tx,        // Serial output line

    // Receiver Interface
    input  logic                  rx,        // Serial input line
    output logic                  rx_done,   // Reception completed flag
    output logic [7:0]            rx_data    // Received parallel byte
);

    // Internal Signals for Baud Rate Ticks
    logic tx_tick, rx_tick;

    // Instantiate Baud Rate Generator
    baud_gen baud_gen_inst (
        .clk(clk),
        .rst_n(rst_n),
        .dvsr(dvsr),
        .tx_tick(tx_tick),
        .rx_tick(rx_tick)
    );

    // Instantiate UART Transmitter
    uart_tx uart_tx_inst (
        .clk(clk),
        .rst_n(rst_n),
        .tx_start(tx_start),
        .tx_tick(tx_tick),
        .tx_data(tx_data),
        .tx_done(tx_done),
        .tx(tx)
    );

    // Instantiate UART Receiver
    uart_rx uart_rx_inst (
        .clk(clk),
        .rst_n(rst_n),
        .rx(rx),
        .rx_tick(rx_tick),
        .rx_done(rx_done),
        .rx_data(rx_data)
    );

endmodule