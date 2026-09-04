# SkyWater 130nm UART Controller: RTL-to-GDSII Physical Design Flow

A production-grade, open-source ASIC physical design implementation of a complete UART (Universal Asynchronous Receiver/Transmitter) core, targeting the **SkyWater 130nm High-Density Standard Cell Library (`sky130_fd_sc_hd`)** via **OpenLane 2** and **OpenROAD**.

The design achieves 100% sign-off quality with zero DRC/LVS violations, closed static timing constraints (Setup/Hold clean), and zero process antenna violations.

---

## 1. Key PPA & Sign-off Metrics

| Metric | Value | Unit / Status |
| :--- | :--- | :--- |
| **PDK / Technology Node** | SkyWater 130nm (`sky130_fd_sc_hd`) | 1.8V Standard Logic |
| **Die Area** | 10,938.6 | $\mu\text{m}^2$ (~0.011 $\text{mm}^2$) |
| **Core Area** | 7,687.37 | $\mu\text{m}^2$ (~0.008 $\text{mm}^2$) |
| **Core Utilization** | ~70.3% | Target density |
| **Total Standard Cells** | 441 | Logic gates, DFFs, buffers, fillers |
| **Total Interconnect Nets** | 369 | Routed nets |
| **Total Routed Wirelength** | 6,121 | $\mu\text{m}$ |
| **Worst Setup Slack (WSS)** | +12.13 | ns (Zero Setup Violations) |
| **Worst Hold Slack (WHS)** | +0.108 | ns (Zero Hold Violations) |
| **Total Negative Slack (TNS)** | 0.00 | ns |
| **Total Power Consumption** | ~0.387 | mW (@ nom_tt_025C_1v80) |
| **Physical Verification (DRC)** | Clean (0 violations) | Magic & KLayout DRC |
| **Layout vs. Schematic (LVS)** | Clean (`Circuits match uniquely`) | Netgen |
| **Antenna Violations** | 0 violating nets | Diode insertion verified |

---

## 2. Chip Layout Visualization

The physical layout was verified and rendered using **KLayout**:

![UART Physical Layout](docs/images/layout_preview.png)

* **Routing Metal Stack**: Local interconnects on `met1` & `met2`; global signal and bus distribution on `met3` & `met4`.
* **Power Distribution Network (PDN)**: Standard cell rails on `met1` tied with vertical power straps on upper metal layers to guarantee low IR drop across all operating corners.

---

## 3. Architecture Overview

The UART core consists of three primary functional blocks implemented in synthesizable SystemVerilog:
* **Baud Rate Generator**: Fractional/integer frequency divider generating precise sampling ticks (`baud_tick`) from system clock.
* **UART Transmitter (TX)**: Synchronous FSM orchestrating START bit assertion, 8-bit data serialization (LSB first), optional parity, and STOP bit delivery.
* **UART Receiver (RX)**: 16x oversampling engine featuring digital majority voting and glitch filtering for robust noise immunity.
* **Status & Configuration Registers**: Hardware-level framing error, parity error, and buffer overrun flags.

---

## 4. Physical Design Implementation Steps

The automated RTL-to-GDSII flow was executed using OpenLane 2:

1. **Synthesis**: RTL mapped to `sky130_fd_sc_hd` primitives using **Yosys** with ABC technology mapping.
2. **Floorplanning & PDN**: Core and die margins allocated; VDD/VGND power rings and vertical straps synthesized by **OpenROAD**.
3. **Placement**: Global placement followed by detailed placement optimization and cell alignment.
4. **Clock Tree Synthesis (CTS)**: Synthesized clock buffers (`clkbuf`) balancing insertion delay and skew across 55 sequential elements.
5. **Routing**: FastRoute-based global routing and TritonRoute detailed routing with automated antenna diode insertion.
6. **Parasitic Extraction (RCX)**: Parasitics extracted to SPEF format across multiple corner conditions (`nom_tt_025C_1v80`, `max_ss_100C_1v60`, `min_ff_n40C_1v95`).
7. **Sign-off**: Multi-corner Static Timing Analysis (STA), Netgen LVS comparison against extracted gate netlist, and Magic DRC checks.

---

## 5. Repository Structure

```text
├── rtl/                # Synthesizable SystemVerilog source files
├── openlane/           # Flow configurations and SDC timing constraints
│   └── uart_top/
│       └── config.json
├── signoff/            # Clean tapeout deliverables
│   ├── uart_top.gds    # Final GDSII layout stream
│   ├── uart_top.nl.v   # Post-routing gate-level netlist
│   ├── uart_top.spef   # Extracted parasitic delays
│   └── metrics.json    # Consolidated PPA and signoff metrics
├── docs/images/        # Layout snapshots and visual assets
└── README.md           # Engineering report and documentation

---

## 6. How to Reproduce

### Prerequisites
* Linux environment (Ubuntu 22.04 LTS recommended or WSL2)
* Docker Engine
* OpenLane 2

### Run RTL-to-GDS Flow
```bash
openlane --pdk sky130A openlane/uart_top/config.json
```bash
cat << 'EOF' > .gitignore
openlane/**/runs/
*.log
*.pyc
__pycache__/
.DS_Store
