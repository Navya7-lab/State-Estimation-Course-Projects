# State Estimation Course Projects - OVGU Magdeburg

This repository contains my implementations for the "State Estimation" course at Otto-von-Guericke University Magdeburg. The projects cover various observer and filter designs for linear and nonlinear systems.

## Repository Structure

### 01. Maglev Train (Luenberger Observer & Kalman Filter)
Design and implementation of state estimators for a Magnetic Levitation (Maglev) train system.
- **System**: 5th order linear state-space model with state feedback control.
- **Tasks**: Luenberger Observer design via pole placement, and Linear Kalman Filter implementation with covariance propagation.

### 02. Drilling System (Disturbance Observer)
Implementation of a disturbance observer for a 2-DOF electromechanical drilling system.
- **System**: Electromechanical plant with two inertias connected by a spring-damper element.
- **Tasks**: Observability analysis, Luenberger observer design, and augmented disturbance observer to reconstruct unknown drilling torque.

### 03. CSTR Reactor (Extended Kalman Filter)
State estimation for an exothermic Continuous Stirred Tank Reactor (CSTR).
- **System**: Nonlinear reactor model with autonomous periodic oscillations.
- **Tasks**: Analytical Jacobian computation, and implementation of a Continuous-Discrete Extended Kalman Filter (EKF) with continuous-time prediction and discrete-time measurement updates in Simulink.

## How to Run
**IMPORTANT**: You must run the initialization script (`.m` file) before opening or running the Simulink model (`.slx`).
1. Navigate to the project directory.
2. Run the `.m` script in MATLAB to load parameters into the workspace.
3. Open the corresponding `.slx` Simulink model.
4. Ensure your MATLAB working directory is set correctly to avoid "Path length limit" errors in Simulink.

## Software Requirements
- MATLAB / Simulink
- Control System Toolbox
