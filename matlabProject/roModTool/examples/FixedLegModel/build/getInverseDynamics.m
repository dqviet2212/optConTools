function jointTorq = getInverseDynamics(in1,in2,in3)
%GETINVERSEDYNAMICS
%    JOINTTORQ = GETINVERSEDYNAMICS(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    17-Sep-2018 18:18:27

%======================================================================%
% Description: This function gives the inverse(backward) dynamics of system
% jointTorq = getInverseDynamics(states, accelerations, [M, C, G])
% @Inputs:
% states: State variable of the dynamical system - column vector
% accelerations: Accelerations of the dynamical system - column vector
% M: Inertia matrix of the dynamical system
% C: Coriolis matrix of the dynamical system
% G: Gravity matrix of the dynamical system
% @Output:
% jointTorq: Torques of joint variables of the dynamical system
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
C1_1 = in3(10);
C1_2 = in3(13);
C1_3 = in3(16);
C2_1 = in3(11);
C2_2 = in3(14);
C2_3 = in3(17);
C3_1 = in3(12);
C3_2 = in3(15);
C3_3 = in3(18);
G1 = in3(19);
G2 = in3(20);
G3 = in3(21);
M1_1 = in3(1);
M1_2 = in3(4);
M1_3 = in3(7);
M2_1 = in3(2);
M2_2 = in3(5);
M2_3 = in3(8);
M3_1 = in3(3);
M3_2 = in3(6);
M3_3 = in3(9);
d2q1 = in2(1,:);
d2q2 = in2(2,:);
d2q3 = in2(3,:);
dq1 = in1(4,:);
dq2 = in1(5,:);
dq3 = in1(6,:);
jointTorq = sparse([1,2,3],[1,1,1],[G1+C1_1.*dq1+C1_2.*dq2+C1_3.*dq3+M1_1.*d2q1+M1_2.*d2q2+M1_3.*d2q3,G2+C2_1.*dq1+C2_2.*dq2+C2_3.*dq3+M2_1.*d2q1+M2_2.*d2q2+M2_3.*d2q3,G3+C3_1.*dq1+C3_2.*dq2+C3_3.*dq3+M3_1.*d2q1+M3_2.*d2q2+M3_3.*d2q3],3,1);
