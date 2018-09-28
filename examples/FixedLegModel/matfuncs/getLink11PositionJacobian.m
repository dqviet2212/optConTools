function link11PosJaco = getLink11PositionJacobian(in1,in2)
%GETLINK11POSITIONJACOBIAN
%    LINK11POSJACO = GETLINK11POSITIONJACOBIAN(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    28-Sep-2018 18:20:58

%======================================================================%
% Description: This function computes the position jacobian of the link11
% link11Pos = getLink11PositionJacobian(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% link11Pos: Position jacobian of the link11 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j11po = in1(6,:);
j11ro = in1(5,:);
j11yo = in1(7,:);
l11xp = in1(14,:);
l11zp = in1(16,:);
q11 = in2(1,:);
t2 = sparse(sin(j11po));
t3 = sparse(sin(q11));
t4 = sparse(cos(j11po));
t5 = sparse(cos(j11yo));
t6 = sparse(cos(q11));
t7 = sparse(sin(j11ro));
t8 = sparse(cos(j11ro));
t9 = sparse(sin(j11yo));
t10 = sparse(t8.*t9);
t11 = sparse(t2.*t5.*t7);
t12 = sparse(t10+t11);
t13 = sparse(t7.*t9);
t14 = sparse(t13-t2.*t5.*t8);
link11PosJaco = sparse([1,2,3],[1,1,1],[-l11xp.*(t2.*t6+t3.*t4.*t5)-l11zp.*(t2.*t3-t4.*t5.*t6),-l11xp.*(t3.*t12-t4.*t6.*t7)+l11zp.*(t6.*t12+t3.*t4.*t7),-l11xp.*(t3.*t14+t4.*t6.*t8)+l11zp.*(t6.*t14-t3.*t4.*t8)],3,2);