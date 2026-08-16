// -------------------------------------------------------------------------
// Design: UART Receiver (RX)
// Function: Converts serial input stream into an 8-bit parallel byte
// -------------------------------------------------------------------------

module uart_rx (
    input  logic       clk,      // Main system clock
    input  logic       rst_n,    // Asynchronous active-low reset
    input  logic       rx,       // Serial data input line
    input  logic       rx_tick,  // 16x oversampling tick from Baud Rate Generator
    output logic       rx_done,  // High for 1 cycle when byte is fully received
    output logic [7:0] rx_data   // Received 8-bit parallel data
);

    // FSM State Encoding
    typedef enum logic [1:0] {
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11
    } state_t;


    logic       rx_sync_0, rx_sync_1; // Synchronizers for the asynchronous rx input

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_sync_0 <= 1'b1; // Idle state is High
            rx_sync_1 <= 1'b1;
        end else begin
            rx_sync_0 <= rx;
            rx_sync_1 <= rx_sync_0;
        end
    end

    // FSM Registers
    state_t state_reg, state_next;

    logic [3:0] s_next, s_reg; // Counts ticks for oversampling
    logic [2:0] n_next, n_reg; // Counts number of data bits received
    logic [7:0] b_next, b_reg; // Holds the received byte

    // 1. FSM Sequential Logic (State and Register Updates)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_reg <= IDLE;
            s_reg     <= '0;
            n_reg     <= '0;
            b_reg     <= '0;
        end else begin
            state_reg <= state_next;
            s_reg     <= s_next;
            n_reg     <= n_next;
            b_reg     <= b_next;
        end
    end

    // 2. FSM Combinational Logic (Next State and Output Actions)
    always_comb begin
        // Default assignments to prevent unwanted latches
        state_next = state_reg;
        s_next     = s_reg;
        n_next     = n_reg;
        b_next     = b_reg;
        rx_done    = 1'b0;

        case (state_reg)
            IDLE: begin
                if (!rx_sync_1) begin // Detect Start bit (line goes Low)
                    state_next = START;
                    s_next     = 4'd0; // Reset tick counter
                end
            end

            START: begin
                if (rx_tick) begin
                    if (s_reg == 4'd7) begin // Wait for half a bit period (8 ticks)
                        state_next = DATA;
                        s_next     = 4'd0;
                        n_next     = 3'd0; // Reset data bit counter
                    end else begin
                        s_next = s_reg + 1'b1;
                    end
                end
            end

            DATA: begin
                if (rx_tick) begin
                    if (s_reg == 4'd15) begin // Wait for full bit period (16 ticks)
                        b_next[n_reg] = rx_sync_1; // Sample the data bit
                        s_next        = 4'd0;
                        if (n_reg == 3'd7) begin // All 8 bits received
                            state_next = STOP;
                        end else begin
                            n_next = n_reg + 1'b1; // Move to next data bit
                        end
                    end else begin
                        s_next = s_reg + 1'b1;
                    end
                end
            end

            STOP: begin
                if (rx_tick) begin
                    if (s_reg == 4'd15) begin // Wait for full stop bit period (16 ticks)
                        state_next = IDLE;
                        rx_done    = 1'b1; // Indicate byte reception complete
                    end else begin
                        s_next = s_reg + 1'b1;
                    end
                end
            end

            default: state_next = IDLE; // Safety fallback to IDLE state 
         endcase
    end
    
    // Output assignment
    assign rx_data = b_reg;

endmodule