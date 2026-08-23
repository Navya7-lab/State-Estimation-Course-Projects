clear all
%note: you can press the keys ctrl+enter to run a single section of this code

%% matrix definitions (relates to a)

% system matrix
A = [   0   0  1  0   0;
        0   0  0  1   0;
      -50  50 -5  5 -20;
       25 -25  2 -2   0;
     -600   0 20  0  -3];

% input matrix
B = [0; 0; 0; 0; -1.5];

% output matrix
C = [0 0 0 0 1];

% controller matrix
K = [775 48 19 8 -21];

%% pole placement for observer design

% desired pole locations / eigenvalues of the error system (A-L*C)
lambda_tilde=[-30 -25 -20 -15 -10];

% observer design by controller design for dual system
L=place(A.',C.',lambda_tilde).';

%% Kalman Filter
% initial conditions s0 = [x0; P0]
x0 = zeros(5,1);
P0 = diag([1,25,1,1,1]);
p0_vec = reshape(P0,5*5,1);
s0 = [x0;p0_vec];

