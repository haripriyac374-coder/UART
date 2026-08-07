# UART (Universal Asynchronous Receiver/Transmitter) in Verilog

## Project Overview

This project implements a UART transmitter and receiver using Verilog HDL.

UART is a serial communication protocol that sends data one bit at a time without requiring a clock signal between devices.

The design includes:

- UART Transmitter
- UART Receiver
- Top Module
- Testbench
- Simulation

---

## Features

- 8-bit Data Transmission
- Start Bit Detection
- Stop Bit Generation
- Transmitter Busy Signal
- Receiver Data Valid Signal
- Easy to Simulate

---

## Files

| File | Description |
|------|-------------|
| uart_tx.v | UART Transmitter |
| uart_rx.v | UART Receiver |
| uart_top.v | Top Module |
| uart_tb.v | Testbench |
| README.md | Project Documentation |

---

## Inputs

- clk
- rst
- tx_start
- tx_data[7:0]

## Outputs

- tx
- rx_data[7:0]
- rx_done

---

## Simulation

The testbench transmits one byte from the transmitter to the receiver.

Example:

Transmit Data = 8'hA5

Receiver Output = 8'hA5

Simulation verifies successful communication.

---

## Software Used

- Verilog HDL
- ModelSim / Vivado Simulator / Icarus Verilog

---

## Author

Your Name