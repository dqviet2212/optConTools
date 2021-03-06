function joint13Pos = getJoint13Position(in1,in2)
%GETJOINT13POSITION
%    JOINT13POS = GETJOINT13POSITION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:43:28

%======================================================================%
% Description: This function computes the position of joint13
% joint13Pos = getJoint13Position(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint13Pos: Position of the joint13 - column vector
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
j13xp = in1(14,:);
j12zp = in1(10,:);
j13yp = in1(15,:);
j13zp = in1(16,:);
q11 = in2(1,:);
q12 = in2(2,:);
t2 = cos(q11);
t3 = sin(j11po);
t4 = cos(j11po);
t5 = cos(j11yo);
t6 = sin(q11);
t7 = sin(j11yo);
t8 = cos(j11ro);
t9 = sin(j11ro);
t10 = t4.^2;
t11 = t7.*t9;
t25 = t3.*t5.*t8;
t12 = t11-t25;
t13 = t3.*t12;
t14 = t5.^2;
t15 = t10.*t14;
t16 = t7.*t8;
t17 = t3.*t5.*t9;
t18 = t16+t17;
t26 = t4.*t7.*t18;
t19 = t13+t15-t26;
t20 = t7.*t9.*t10;
t21 = t3.*t4.*t8;
t22 = t3.*t4.*t5;
t23 = t20+t21+t22;
t24 = cos(q12);
t27 = t6.*t19;
t28 = t2.*t23;
t29 = t27+t28;
t30 = sin(q12);
t31 = t2.*t19;
t32 = t31-t6.*t23;
t33 = t5.*t8;
t35 = t3.*t7.*t9;
t34 = t33-t35;
t36 = t18.*t34;
t37 = t4.*t5.*t18;
t42 = t4.*t9.*t12;
t38 = t36+t37-t42;
t39 = t8.*t9.*t10;
t40 = t4.*t9.*t34;
t43 = t3.*t18;
t41 = t39+t40-t43;
t44 = t2.*t41;
t45 = t44-t6.*t38;
t46 = t2.*t38;
t47 = t6.*t41;
t48 = t46+t47;
t49 = t5.*t9;
t50 = t3.*t7.*t8;
t51 = t49+t50;
t52 = t4.*t9.*t51;
t53 = t8.^2;
t54 = t10.*t53;
t55 = t13-t52+t54;
t56 = t18.*t51;
t57 = t4.*t8.*t12;
t58 = t4.*t5.*t12;
t59 = t56+t57+t58;
t60 = t2.*t55;
t61 = t6.*t59;
t62 = t60+t61;
t63 = t2.*t59;
t64 = t63-t6.*t55;
joint13Pos = [j11xp-j12xp.*(t3.*t6-t2.*t4.*t5)+j12zp.*(t2.*t3+t4.*t5.*t6)+j13xp.*(t24.*t32-t29.*t30)+j13zp.*(t24.*t29+t30.*t32)-j13yp.*(-t3.*t51+t5.*t7.*t10+t4.*t7.*t34)-j12yp.*t4.*t7;j11yp+j12xp.*(t2.*t18+t4.*t6.*t9)+j12zp.*(t6.*t18-t2.*t4.*t9)+j12yp.*t34-j13yp.*(t26+t52-t34.^2)+j13xp.*(t24.*t48+t30.*t45)-j13zp.*(t24.*t45-t30.*t48);j11zp+j12xp.*(t2.*t12-t4.*t6.*t8)+j12zp.*(t6.*t12+t2.*t4.*t8)+j12yp.*t51+j13xp.*(t24.*t64-t30.*t62)+j13zp.*(t24.*t62+t30.*t64)+j13yp.*(t34.*t51-t4.*t7.*t12+t4.*t8.*t51)];
