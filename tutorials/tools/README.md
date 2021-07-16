# Tools

## MacOS

- [Verilator](https://www.veripool.org/verilator/): Verilog Simulator and Linter
- [Icarus Verilog](http://iverilog.icarus.com): Verilog simulation and synthesis tool
- [GTKWave](http://gtkwave.sourceforge.net/): VCD viewer
- [Scansion](http://www.logicpoet.com/scansion/): VCD viewer

### Installation

```bash
brew install verilator
brew install icarus-verilog
brew install gtkwave
```

### Usage

```bash
# using verilator for linting only
verilator -Wall --lint-only <FILE.v>

# Compile verilog
iverilog -o <OUTPUT> <TESTBENCH.v> <VERILOG.v>

# simulate (create vcd or command line output)
vvp <OUTPUT>
```
---

## Linux

- [Icarus Verilog](http://iverilog.icarus.com): Verilog simulation and synthesis tool
- [Verilator](https://www.veripool.org/verilator/): Verilog Simulator and Linter
- [GTKWave](http://gtkwave.sourceforge.net/): VCD viewer

---

## Windowss

- [GTKWave](http://gtkwave.sourceforge.net/): VCD viewer