function jointTorq = getInverseDynamics(in1,in2,in3)
%GETINVERSEDYNAMICS
%    JOINTTORQ = GETINVERSEDYNAMICS(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:24:07

%======================================================================%
% Description: This function gives the inverse(backward) dynamics of robot
% jointTorq = getInverseDynamics([M, C, G], states, accelerations)
% @Inputs:
% M: Inertia matrix of the dynamical system
% C: Coriolis matrix of the dynamical system
% G: Gravity matrix of the dynamical system
% states: State variable of the dynamical system - column vector
% accelerations: Accelerations of the dynamical system - column vector
% @Output:
% jointTorq: Torques of joint variables of the dynamical system
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
C1_1 = in1(5);
C1_2 = in1(7);
C2_1 = in1(6);
C2_2 = in1(8);
G1 = in1(9);
G2 = in1(10);
M1_1 = in1(1);
M1_2 = in1(3);
M2_1 = in1(2);
M2_2 = in1(4);
d2q11 = in3(1,:);
d2q21 = in3(2,:);
dq11 = in2(3,:);
dq21 = in2(4,:);
jointTorq = [G1+C1_1.*dq11+C1_2.*dq21+M1_1.*d2q11+M1_2.*d2q21;G2+C2_1.*dq11+C2_2.*dq21+M2_1.*d2q11+M2_2.*d2q21];
