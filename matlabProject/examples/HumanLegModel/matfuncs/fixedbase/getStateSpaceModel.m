function dStates = getStateSpaceModel(in1,in2,in3)
%GETSTATESPACEMODEL
%    DSTATES = GETSTATESPACEMODEL(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    02-Oct-2018 03:32:42

%======================================================================%
% Description: This function gives the state-space model of robot
% dStates = getStateSpaceModel([M, C, G], states, controls)
% @Inputs:
% M: Inertia matrix of the dynamical system
% C: Coriolis matrix of the dynamical system
% G: Gravity matrix of the dynamical system
% states: State variable of the dynamical system - column vector
% controls: Control inputs of the dynamical system - column vector
% @Output:
% dStates: Time derivative of state variable of the dynamical system
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
C1_1 = in1(10);
C1_2 = in1(13);
C1_3 = in1(16);
C2_1 = in1(11);
C2_2 = in1(14);
C2_3 = in1(17);
C3_1 = in1(12);
C3_2 = in1(15);
C3_3 = in1(18);
G1 = in1(19);
G2 = in1(20);
G3 = in1(21);
M1_1 = in1(1);
M1_2 = in1(4);
M1_3 = in1(7);
M2_1 = in1(2);
M2_2 = in1(5);
M2_3 = in1(8);
M3_1 = in1(3);
M3_2 = in1(6);
M3_3 = in1(9);
dq11 = in2(4,:);
dq12 = in2(5,:);
dq13 = in2(6,:);
u11 = in3(1,:);
u12 = in3(2,:);
u13 = in3(3,:);
t2 = M1_1.*M2_2.*M3_3;
t3 = M1_2.*M2_3.*M3_1;
t4 = M1_3.*M2_1.*M3_2;
t7 = M1_1.*M2_3.*M3_2;
t8 = M1_2.*M2_1.*M3_3;
t9 = M1_3.*M2_2.*M3_1;
t5 = t2+t3+t4-t7-t8-t9;
t6 = 1.0./t5;
dStates = [dq11;dq12;dq13;-t6.*(G3.*M1_2.*M2_3-G3.*M1_3.*M2_2-G2.*M1_2.*M3_3+G2.*M1_3.*M3_2+G1.*M2_2.*M3_3-G1.*M2_3.*M3_2-M1_2.*M2_3.*u13+M1_3.*M2_2.*u13+M1_2.*M3_3.*u12-M1_3.*M3_2.*u12-M2_2.*M3_3.*u11+M2_3.*M3_2.*u11+C1_1.*M2_2.*M3_3.*dq11-C1_1.*M2_3.*M3_2.*dq11-C2_1.*M1_2.*M3_3.*dq11+C2_1.*M1_3.*M3_2.*dq11+C3_1.*M1_2.*M2_3.*dq11-C3_1.*M1_3.*M2_2.*dq11+C1_2.*M2_2.*M3_3.*dq12-C1_2.*M2_3.*M3_2.*dq12-C2_2.*M1_2.*M3_3.*dq12+C2_2.*M1_3.*M3_2.*dq12+C3_2.*M1_2.*M2_3.*dq12-C3_2.*M1_3.*M2_2.*dq12+C1_3.*M2_2.*M3_3.*dq13-C1_3.*M2_3.*M3_2.*dq13-C2_3.*M1_2.*M3_3.*dq13+C2_3.*M1_3.*M3_2.*dq13+C3_3.*M1_2.*M2_3.*dq13-C3_3.*M1_3.*M2_2.*dq13);t6.*(G3.*M1_1.*M2_3-G3.*M1_3.*M2_1-G2.*M1_1.*M3_3+G2.*M1_3.*M3_1+G1.*M2_1.*M3_3-G1.*M2_3.*M3_1-M1_1.*M2_3.*u13+M1_3.*M2_1.*u13+M1_1.*M3_3.*u12-M1_3.*M3_1.*u12-M2_1.*M3_3.*u11+M2_3.*M3_1.*u11+C1_1.*M2_1.*M3_3.*dq11-C1_1.*M2_3.*M3_1.*dq11-C2_1.*M1_1.*M3_3.*dq11+C2_1.*M1_3.*M3_1.*dq11+C3_1.*M1_1.*M2_3.*dq11-C3_1.*M1_3.*M2_1.*dq11+C1_2.*M2_1.*M3_3.*dq12-C1_2.*M2_3.*M3_1.*dq12-C2_2.*M1_1.*M3_3.*dq12+C2_2.*M1_3.*M3_1.*dq12+C3_2.*M1_1.*M2_3.*dq12-C3_2.*M1_3.*M2_1.*dq12+C1_3.*M2_1.*M3_3.*dq13-C1_3.*M2_3.*M3_1.*dq13-C2_3.*M1_1.*M3_3.*dq13+C2_3.*M1_3.*M3_1.*dq13+C3_3.*M1_1.*M2_3.*dq13-C3_3.*M1_3.*M2_1.*dq13);-t6.*(G3.*M1_1.*M2_2-G3.*M1_2.*M2_1-G2.*M1_1.*M3_2+G2.*M1_2.*M3_1+G1.*M2_1.*M3_2-G1.*M2_2.*M3_1-M1_1.*M2_2.*u13+M1_2.*M2_1.*u13+M1_1.*M3_2.*u12-M1_2.*M3_1.*u12-M2_1.*M3_2.*u11+M2_2.*M3_1.*u11+C1_1.*M2_1.*M3_2.*dq11-C1_1.*M2_2.*M3_1.*dq11-C2_1.*M1_1.*M3_2.*dq11+C2_1.*M1_2.*M3_1.*dq11+C3_1.*M1_1.*M2_2.*dq11-C3_1.*M1_2.*M2_1.*dq11+C1_2.*M2_1.*M3_2.*dq12-C1_2.*M2_2.*M3_1.*dq12-C2_2.*M1_1.*M3_2.*dq12+C2_2.*M1_2.*M3_1.*dq12+C3_2.*M1_1.*M2_2.*dq12-C3_2.*M1_2.*M2_1.*dq12+C1_3.*M2_1.*M3_2.*dq13-C1_3.*M2_2.*M3_1.*dq13-C2_3.*M1_1.*M3_2.*dq13+C2_3.*M1_2.*M3_1.*dq13+C3_3.*M1_1.*M2_2.*dq13-C3_3.*M1_2.*M2_1.*dq13)];
