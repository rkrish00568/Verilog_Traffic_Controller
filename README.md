# 🚦 Traffic Light Controller – Verilog Project

This repository contains the Verilog implementation and testbench for a **multi-way Traffic Light Controller** using an FSM (Finite State Machine). The design simulates traffic signal control logic for four lanes:
- `M1` and `M2`: Main roads,
- `MT`: Main turning lane,
- `S`: Side road.

## 📁 Files Included

- `Traffic_Light_Controller.v`: The RTL (Register Transfer Level) Verilog code for the traffic light controller module.
- `traffic_light_tb.v`: The testbench to simulate and verify the behavior of the controller.


---

## 🔧 Features

- **6-state FSM** controlling traffic light sequences based on time durations.
- Lights are encoded as:
  - `3'b001` – Green
  - `3'b010` – Yellow
  - `3'b100` – Red
- Adjustable timing via parameters:
  - `sec7 = 7`, `sec5 = 5`, `sec3 = 3`, `sec2 = 2`
- Resettable system with synchronized state transitions using a clock signal.

---

## 🔄 State Description

| State | Description                          | Duration (clock cycles) |
|-------|--------------------------------------|--------------------------|
| S1    | M1 & M2: Green, MT & S: Red          | 7                        |
| S2    | M2: Yellow                           | 2                        |
| S3    | MT: Green                            | 5                        |
| S4    | MT: Yellow                           | 2                        |
| S5    | S: Green                             | 3                        |
| S6    | S: Yellow                            | 2                        |

![Traffic Light FSM](images/traff.png)






