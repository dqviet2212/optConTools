function joint11Pos = getJoint11Position(in1,in2)
%GETJOINT11POSITION
%    JOINT11POS = GETJOINT11POSITION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:39:06

%======================================================================%
% Description: This function computes the position of joint11
% joint11Pos = getJoint11Position(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint11Pos: Position of the joint11 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j11xp = in1(9,:);
j11yp = in1(10,:);
j11zp = in1(11,:);
po = in2(5,:);
px = in2(1,:);
py = in2(2,:);
pz = in2(3,:);
ro = in2(4,:);
yo = in2(6,:);
t2 = cos(po);
t3 = sin(yo);
t4 = cos(yo);
t5 = sin(po);
t6 = cos(ro);
t7 = sin(ro);
joint11Pos = [px+j11zp.*t5+j11xp.*t2.*t4-j11yp.*t2.*t3;py+j11xp.*(t3.*t6+t4.*t5.*t7)+j11yp.*(t4.*t6-t3.*t5.*t7)-j11zp.*t2.*t7;pz+j11xp.*(t3.*t7-t4.*t5.*t6)+j11yp.*(t4.*t7+t3.*t5.*t6)+j11zp.*t2.*t6];