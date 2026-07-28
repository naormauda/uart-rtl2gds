// -------------------------------------------------------------------------
// Design: UART Transmitter (TX)
// Function: Converts 8-bit parallel data into a serial UART frame
//           Frame format: 1 Start bit (0), 8 Data bits (LSB first), 1 Stop bit (1)
// -------------------------------------------------------------------------

module uart_tx (
    input  logic       clk,        // Main system clock
    input  logic       rst_n,      // Asynchronous active-low reset
    input  logic       tx_start,   // Command to start transmission
    input  logic       tx_tick,    // Time pulse from Baud Rate Generator
    input  logic [7:0] tx_data,    // 8-bit parallel data to transmit
    output logic       tx_done,    // High for 1 cycle when transmission finishes
    output logic       tx          // Serial data output line
);

    // FSM State Encoding using Enumerated Types
    typedef enum logic [1:0] {
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11
    } state_t;

    // FSM Registers
    state_t state_reg, state_next;

    // Internal Registers to store current transmission progress
    logic [2:0] bit_count_reg, bit_count_next; // Tracks which of the 8 bits is being sent
    logic [7:0] shift_reg, shift_next;         // Holds the data byte and shifts it out
    logic       tx_reg, tx_next;               // Buffers the output line to avoid glitches

    // 1. FSM Sequential Logic (State and Register Updates)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_reg     <= IDLE;
            bit_count_reg <= '0;
            shift_reg     <= '0;
            tx_reg        <= 1'b1; // UART line is High (1) when idle
        end else begin
            state_reg     <= state_next;
            bit_count_reg <= bit_count_next;
            shift_reg     <= shift_next;
            tx_reg        <= tx_next;
        end
    end

    // 2. FSM Combinational Logic (Next State and Output Actions)
    always_comb begin
        // Default assignments to prevent unwanted latches
        state_next     = state_reg;
        bit_count_next = bit_count_reg;
        shift_next     = shift_reg;
        tx_next        = tx_reg;
        tx_done        = 1'b0;

        case (state_reg)
            IDLE: begin
                tx_next = 1'b1; // Keep line High
                if (tx_start) begin
                    state_next = START;
                    shift_next = tx_data; // Capture input data into the shift register
                end
            end

            START: begin
                tx_next = 1'b0; // Drive line Low for the Start bit
                if (tx_tick) begin
                    state_next     = DATA;
                    bit_count_next = '0; // Reset bit counter before entering DATA state
                end
            end

            DATA: begin
                tx_next = shift_reg[0]; // Always transmit the lowest bit (LSB first)
                if (tx_tick) begin
                    if (bit_count_reg == 3'd7) begin
                        state_next = STOP; // Sent all 8 bits, move to Stop bit
                    end else begin
                        shift_next     = shift_reg >> 1; // Shift right to bring next bit to index 0
                        bit_count_next = bit_count_reg + 1'b1;
                    end
                end
            end

            STOP: begin
                tx_next = 1'b1; // Drive line High for the Stop bit
                if (tx_tick) begin
                    state_next = IDLE;
                    tx_done    = 1'b1; // Pulse high to signal that the transmitter is now free
                end
            end
        endcase
    end

    // Continuous assignment connecting the buffered register to the physical output pin
    assign tx = tx_reg;

endmodule