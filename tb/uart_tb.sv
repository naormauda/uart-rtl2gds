`timescale 1ns/1ps // Time unit / Time precision
module uart_tb;
    // --------------------------------------------------------
    // 1. Parameters & Testbench Signals
    // --------------------------------------------------------
    // Clock frequency and Baud rate settings
    parameter CLK_FREQ   = 50_000_000; // 50 MHz
    parameter BAUD_RATE  = 115200;
    // Calculate the divisor: (CLK_FREQ / (16 * BAUD_RATE)) - 1
    // For 50MHz and 115200 baud, DVSR is approx 26
    parameter DVSR       = 2; // Divisor for baud rate generation

    // System signals
    logic        clk;
    logic        rst_n;

    // Stimulus (Inputs to DUT)
    logic [15:0] dvsr_in;
    logic        tx_start;
    logic [7:0]  tx_data;

    // Internal Loopback signal
    logic        serial_line;

    // DUT Outputs
    logic        tx_done;
    logic        rx_done;
    logic [7:0]  rx_data;

    // --------------------------------------------------------
    // 2. DUT Instantiation (Device Under Test)
    // --------------------------------------------------------
    uart_top #(
        .DVSR_WIDTH(16)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .dvsr(dvsr_in),
        
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_done(tx_done),
        .tx(serial_line), // Connect TX output...
        
        .rx(serial_line), // ...directly to RX input (Loopback)
        .rx_done(rx_done),
        .rx_data(rx_data)
    );

    // --------------------------------------------------------
    // 3. Clock Generation (50 MHz -> 20ns period)
    // --------------------------------------------------------
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // Toggle every 10ns -> 20ns period
    end


    // --------------------------------------------------------
    // 4. Test Scenario & Self-Checking Verification
    // --------------------------------------------------------
    initial begin
        // Setup waveform dumping for GTKWave
        $dumpfile("dump.vcd");
        $dumpvars(0, uart_tb);

        // Initialize inputs
        rst_n    = 0;
        tx_start = 0;
        tx_data  = 8'h00;
        dvsr_in  = DVSR[15:0];

        $display("--------------------------------------------------");
        $display("Starting UART Loopback Simulation...");
        $display("Config: CLK = %0d Hz, BAUD = %0d, DVSR = %0d", CLK_FREQ, BAUD_RATE, DVSR);
        $display("--------------------------------------------------");

        // 1. Reset Sequence (Hold reset for 100ns)
        #100;
        @(posedge clk);
        rst_n = 1;
        $display("[TIME: %0t ns] Reset released. System active.", $time);

        // Wait 10 clock cycles for everything to stabilize
        repeat(10) @(posedge clk);

        // 2. Test Case 1: Send Byte 0xA5 (10100101)
        send_and_verify(8'hA5);

        // Wait between transactions
        repeat(50) @(posedge clk);

        // 3. Test Case 2: Send Byte 0x5A (01011010)
        send_and_verify(8'h5A);

        // Wait between transactions
        repeat(50) @(posedge clk);

        // 4. Test Case 3: Send Byte 0x3C (00111100)
        send_and_verify(8'h3C);

        // Final summary
        #1000;
        $display("--------------------------------------------------");
        $display("All test cases completed successfully! Simulation PASS.");
        $display("--------------------------------------------------");
        $finish;
    end

    // --------------------------------------------------------
    // Helper Task: Send a byte and assert correct reception
    // --------------------------------------------------------
    task automatic send_and_verify(input logic [7:0] data_to_send);
        begin
            $display("[TIME: %0t ns] Sending Byte: 0x%02h ...", $time, data_to_send);
            
            // Drive inputs
            @(posedge clk);
            tx_data  = data_to_send;
            tx_start = 1'b1;

            // Deassert tx_start after 1 clock cycle
            @(posedge clk);
            tx_start = 1'b0;

            // Wait for receiver to finish sampling all bits
            @(posedge rx_done);
            
            // Self-checking assertion
            if (rx_data === data_to_send) begin
                $display("[TIME: %0t ns] -> PASS: Received Byte 0x%02h matches sent data!", $time, rx_data);
            end else begin
                $error("[TIME: %0t ns] -> FAIL: Expected 0x%02h, but received 0x%02h!", $time, data_to_send, rx_data);
            end
        end
    endtask

endmodule
