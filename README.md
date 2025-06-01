# Verilog Implementation and Analysis of Adder Architectures

This project presents a comparative study of four 4-bit adder architectures implemented in Verilog HDL. Each design is analyzed based on timing performance, power consumption, and hardware resource utilization after synthesis using Vivado.

## Architectures Implemented

- Ripple Carry Adder (RCA)
- Carry Lookahead Adder (CLA)
- Carry Skip Adder (CSKA)
- Carry Select Adder (CSA)

## Tools and Setup

- **Design Language**: Verilog HDL
- **Synthesis Tool**: Xilinx Vivado
- **Clock Period**: 10 ns

## Summary of Results

### Timing Analysis
| Adder Type         | Delay (ns) | Worst Negative Slack (ns) |
|--------------------|------------|----------------------------|
| Ripple Carry Adder | 2.188      | 7.812                      |
| Carry Lookahead    | 1.718      | 8.282                      |
| Carry Skip Adder   | 2.069      | 7.931                      |
| Carry Select Adder | 1.917      | 8.083                      |

### Power Consumption
| Adder Type         | Dynamic Power (W) | Static Power (W) |
|--------------------|-------------------|------------------|
| Ripple Carry Adder | 0.003             | 0.070            |
| Carry Lookahead    | 0.004             | 0.112            |
| Carry Skip Adder   | 0.003             | 0.070            |
| Carry Select Adder | 0.007             | 0.081            |

### Resource Utilization
| Adder Type         | LUTs | Registers | IOBs |
|--------------------|------|-----------|------|
| Ripple Carry Adder | 5    | 14        | 16   |
| Carry Lookahead    | 6    | 14        | 16   |
| Carry Skip Adder   | 6    | 14        | 16   |
| Carry Select Adder | 11   | 14        | 16   |

## Key Observations

- **Fastest**: Carry Lookahead Adder (lowest delay)
- **Most power-efficient**: RCA and CSKA (lowest dynamic power)
- **Most area-efficient**: RCA (uses only 5 LUTs)
- **CSA** is the least efficient in 4-bit implementations due to redundant hardware with no significant timing benefit

## Directory Overview (Expected)

- `src/` – Verilog source files for each adder
- `reports/` – Individual synthesis reports for each architecture (PDF)
- `main_report/` – Combined LaTeX report and comparison charts
- `README.md` – This documentation file

## Author

**Sreenesh K.S**  
Rajagiri School of Engineering & Technology (RSET)  
Email: u2201199@rajagiri.edu.in or sreeneshsreeshu2641@gmail.com
