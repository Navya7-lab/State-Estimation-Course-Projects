# State Estimation Course Projects - OVGU Magdeburg

This repository contains my implementations for the "State Estimation" course at Otto-von-Guericke University Magdeburg. The projects cover various observer and filter designs for linear and nonlinear systems.

## Repository Structure

### 01. Maglev Train (Luenberger Observer & Kalman Filter)
Design and implementation of state estimators for a Magnetic Levitation (Maglev) train system.
- **System**: 5th order linear state-space model representing magnet/cabin distances and magnetic force.
- **Tasks**: State feedback control, observability analysis, Luenberger Observer design, and Linear Kalman Filter implementation.

### 02. Drilling System (Disturbance Observer)
Implementation of a disturbance observer for a 2-DOF electromechanical drilling system.
- **System**: Electromechanical plant with unknown friction torque.
- **Tasks**: Plant implementation, Luenberger observer design, and augmented disturbance observer to reconstruct unknown drilling torque.

### 03. CSTR Reactor (Extended Kalman Filter)
State estimation for an exothermic Continuous Stirred Tank Reactor (CSTR).
- **System**: Nonlinear reactor model with periodic oscillations.
- **Tasks**: Discretization of nonlinear dynamics, Jacobian computation, and implementation of a Continuous-Discrete Extended Kalman Filter (EKF) in Simulink.

## How to Run
**IMPORTANT**: You must run the initialization script (`.m` file) before opening or running the Simulink model (`.slx`).
1. Navigate to the project directory.
2. Run the `.m` script in MATLAB to load parameters into the workspace.
3. Open the corresponding `.slx` Simulink model.
4. Ensure your MATLAB working directory is set correctly to avoid "Path length limit" errors in Simulink.

## Software Requirements
- MATLAB / Simulink
- Control System Toolbox
