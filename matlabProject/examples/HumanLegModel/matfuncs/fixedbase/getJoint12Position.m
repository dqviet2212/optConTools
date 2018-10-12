function joint12Pos = getJoint12Position(in1,in2)
%GETJOINT12POSITION
%    JOINT12POS = GETJOINT12POSITION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:43:14

%======================================================================%
% Description: This function computes the position of joint12
% joint12Pos = getJoint12Position(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint12Pos: Position of the joint12 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j11po = in1(6,:);
j11ro = in1(5,:);
j11xp = in1(2,:);
j11yo = in1(7,:);
j11yp = in1(3,:);
j12xp = in1(8,:);
j11zp = in1(4,:);
j12yp = in1(9,:);
j12zp = in1(10,:);
q11 = in2(1,:);
t2 = cos(q11);
t3 = sin(j11po);
t4 = cos(j11po);
t5 = cos(j11yo);
t6 = sin(q11);
t7 = sin(j11yo);
t8 = cos(j11ro);
t9 = sin(j11ro);
t10 = t7.*t8;
t11 = t3.*t5.*t9;
t12 = t10+t11;
t13 = t7.*t9;
t14 = t13-t3.*t5.*t8;
joint12Pos = [j11xp-j12xp.*(t3.*t6-t2.*t4.*t5)+j12zp.*(t2.*t3+t4.*t5.*t6)-j12yp.*t4.*t7;j11yp+j12xp.*(t2.*t12+t4.*t6.*t9)+j12yp.*(t5.*t8-t3.*t7.*t9)+j12zp.*(t6.*t12-t2.*t4.*t9);j11zp+j12yp.*(t5.*t9+t3.*t7.*t8)+j12xp.*(t2.*t14-t4.*t6.*t8)+j12zp.*(t6.*t14+t2.*t4.*t8)];
