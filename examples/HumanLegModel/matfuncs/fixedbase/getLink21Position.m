function link21Pos = getLink21Position(in1,in2)
%GETLINK21POSITION
%    LINK21POS = GETLINK21POSITION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:24:04

%======================================================================%
% Description: This function computes the position of the link21
% link21Pos = getLink21Position(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% link21Pos: Position of the link21 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j21po = in1(12,:);
j21ro = in1(11,:);
j21xp = in1(8,:);
j21yo = in1(13,:);
j21yp = in1(9,:);
j21zp = in1(10,:);
l21xp = in1(27,:);
l21yp = in1(28,:);
l21zp = in1(29,:);
q21 = in2(2,:);
t2 = cos(q21);
t3 = sin(j21po);
t4 = cos(j21po);
t5 = cos(j21yo);
t6 = sin(q21);
t7 = sin(j21yo);
t8 = cos(j21ro);
t9 = sin(j21ro);
t10 = t7.*t8;
t11 = t3.*t5.*t9;
t12 = t10+t11;
t13 = t7.*t9;
t14 = t13-t3.*t5.*t8;
link21Pos = [j21xp-l21xp.*(t3.*t6-t2.*t4.*t5)+l21zp.*(t2.*t3+t4.*t5.*t6)-l21yp.*t4.*t7;j21yp+l21xp.*(t2.*t12+t4.*t6.*t9)+l21yp.*(t5.*t8-t3.*t7.*t9)+l21zp.*(t6.*t12-t2.*t4.*t9);j21zp+l21yp.*(t5.*t9+t3.*t7.*t8)+l21xp.*(t2.*t14-t4.*t6.*t8)+l21zp.*(t6.*t14+t2.*t4.*t8)];
