%% presets
clear all; close all; clc;

%% parameters of 2dof system
Ra = 0.3 ; % armature resistance 
La = 10e-3; % armature inductance
Te = La/Ra; % armature time constant
kphi = 0.085; % motor constant for fixed magnetic flow
beta = kphi^2/Ra; % slope of motor mechanical curve
J1 = 0.01 ; % inertia 1
J2 = 0.02; % inertia 2
c12 = 0.1; % spring coefficient
b12 = 2e-4; % damping coefficient

%% state space matrices
A = [0 1 -1 0;
    -c12/J1 -b12/J1 b12/J1 1/J1;
    c12/J2 b12/J2 -b12/J2 0;
    0 -beta/Te 0 -1/Te];

B = [0; 0; 0; beta/(kphi*Te)];

E = [0; 0; -1/J2; 0];

C = [0 1 0 0];

xhat_0 = [0; 100; 100; 0];

%% Luenberger observer
% observability
O = obsv(A,C);
r = rank(O)

% observer
% desired eigenvalues of the error system (A-L*C)
lambda_tilde=[-50 -2 -3 -4];

% observer design by controller design for dual system
L=place(A.',C.',lambda_tilde).';


%% Disturbanca model
Ad = [0 1;-0.25 0];
Cd = [1 0];

% resulting model
A1 = [A,E*Cd; zeros(length(Ad),length(A)), Ad];
B1 = [B;zeros(length(Ad),1)];
C1 = [C,zeros(1,length(Ad))];

xhat1_0 = [0; 100; 100; 0; 1; 0];

% observer
% desired eigenvalues of the error system (A-L*C)
lambda_tilde1=[-50 -2 -3 -4 -5 -6];

% observer design by controller design for dual system
L1=place(A1.',C1.',lambda_tilde1).';




