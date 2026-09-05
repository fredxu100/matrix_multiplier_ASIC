# 8x8 Systolic Array Matrix Multiplier ASIC Peripheral

An 8x8 systolic array hardware accelerator designed as an ASIC peripheral. The design interfaces with a RISC-V host processor via FIFO channels to compute matrix multiplications, targeting the **SkyWater 130nm** open-source PDK.

---

## Key Features & Architecture

* **Matrix Core:** $8 \times 8$ Processing Element (PE) systolic array optimized for matrix-matrix multiplication.
* **Host Interface:** Top buffer interface bridging data movement between the RISC-V core and the matrix array.
* **Pipelined Execution:** Data streams through processing elements concurrently to maximize compute throughput.
* **Target Technology Node:** SkyWater 130nm
  
---

## Verification & Testbench Framework

The architecture is verified using a Universal Verification Methodology (**UVM**) testbench framework to ensure functional correctness and robust coverage.

* **Verification Methodology:** UVM
* **Scoreboard & Predictor:** Reference model predicts and parses expected matrix calculations against staggered DUT output.
* **Coverage:** Constrained-random stimulus generation focusing on boundary values, back-to-back transactions, and full-throughput matrix streams.

---

## Implementation & PPA Metrics

| Metric | Target / Result | Notes |
| :--- | :--- | :--- |
| **Technology Node** | SkyWater 130nm PDK |
| **Max Clock Frequency** | 129.87 Mhz |
| **Setup Slack** | 0.76 ns |
| **Hold Slack** | 0.29 ns |
| **Total Cell Area** | 1.434 mm^2 (1197.8 um x 1196.8 um) |
| **Total Power** | 0.173 W (55.15% switching, 48.5% internal) |
| **EDA Toolchain** | OpenLane |

---

## Directory Structure

```text
├── RTL/                 # Verilog / SystemVerilog RTL design sources
│   ├── MAC_v3.sv        # Individual Processing Element
│   ├── systollic_v3.sv  # 8x8 Systolic Array Core
│   └── MP_v3.sv         # RISC-V Interface
├── Testbench/           # UVM Verification environment
│   ├── testbench files  # UVM Agents, Drivers, Monitors, Scoreboard, etc
│   └── transactions/    # UVM Testcases, transactions, and sequences
├── Tcl/                 # PD constraints files
├── docs/                # Architecture spec and documentation
└── README.md
