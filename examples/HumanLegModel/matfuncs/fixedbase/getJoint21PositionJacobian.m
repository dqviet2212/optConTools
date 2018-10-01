function joint21PosJaco = getJoint21PositionJacobian(in1,in2)
%GETJOINT21POSITIONJACOBIAN
%    JOINT21POSJACO = GETJOINT21POSITIONJACOBIAN(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:24:03

%======================================================================%
% Description: This function computes the position jacobian of joint21
% joint21PosJaco = getJoint21PositionJacobian(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint21PosJaco: Position jacobian of the joint21 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
joint21PosJaco = reshape([0.0,0.0,0.0,0.0,0.0,0.0],[3,2]);