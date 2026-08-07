# Digital Clock using Verilog

## Overview

This project implements a 24-hour digital clock using Verilog HDL.

Features:
- 24-hour format
- Seconds counter
- Minutes counter
- Hours counter
- Reset functionality
- Testbench included
- Simulation waveform

## Files

src/
- digital_clock.v
- clock_divider.v

tb/
- digital_clock_tb.v

simulation/
- digital_clock.vcd
- waveform.png

## Simulation

Compile

iverilog -o clock digital_clock.v digital_clock_tb.v

Run

vvp clock

Generate waveform

gtkwave digital_clock.vcd

## Outputs

Hour : 0-23

Minute : 0-59

Second : 0-59

## Applications

- FPGA Digital Clock
- Embedded Systems
- VLSI RTL Design
- Digital Electronics