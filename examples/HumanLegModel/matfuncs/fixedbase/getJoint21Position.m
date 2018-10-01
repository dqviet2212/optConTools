function joint21Pos = getJoint21Position(in1,in2)
%GETJOINT21POSITION
%    JOINT21POS = GETJOINT21POSITION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:24:03

%======================================================================%
% Description: This function computes the position of joint21
% joint21Pos = getJoint21Position(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint21Pos: Position of the joint21 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j21xp = in1(8,:);
j21yp = in1(9,:);
j21zp = in1(10,:);
joint21Pos = [j21xp;j21yp;j21zp];
