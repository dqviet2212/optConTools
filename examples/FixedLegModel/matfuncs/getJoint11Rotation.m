function joint11Rot = getJoint11Rotation(in1,in2)
%GETJOINT11ROTATION
%    JOINT11ROT = GETJOINT11ROTATION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    28-Sep-2018 18:20:58

%======================================================================%
% Description: This function computes the rotation matrix of joint11
% joint11Rot = getJoint11Rotation(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint11Rot: Rotation matrix of the joint11 - 3x3 matrix
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j11po = in1(6,:);
j11ro = in1(5,:);
j11yo = in1(7,:);
t2 = sparse(cos(j11po));
t3 = sparse(sin(j11yo));
t4 = sparse(cos(j11yo));
t5 = sparse(sin(j11po));
t6 = sparse(cos(j11ro));
t7 = sparse(sin(j11ro));
joint11Rot = sparse([1,2,3,1,2,3,1,2,3],[1,1,1,2,2,2,3,3,3],[t2.*t4,t3.*t6+t4.*t5.*t7,t3.*t7-t4.*t5.*t6,-t2.*t3,t4.*t6-t3.*t5.*t7,t4.*t7+t3.*t5.*t6,t5,-t2.*t7,t2.*t6],3,3);