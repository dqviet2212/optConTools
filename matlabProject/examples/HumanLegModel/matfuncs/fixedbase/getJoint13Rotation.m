function joint13Rot = getJoint13Rotation(in1,in2)
%GETJOINT13ROTATION
%    JOINT13ROT = GETJOINT13ROTATION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:43:33

%======================================================================%
% Description: This function computes the rotation matrix of joint13
% joint13Rot = getJoint13Rotation(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% joint13Rot: Rotation matrix of the joint13 - 3x3 matrix
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j11po = in1(6,:);
j12po = in1(12,:);
j11ro = in1(5,:);
j12ro = in1(11,:);
j11yo = in1(7,:);
j12yo = in1(13,:);
q11 = in2(1,:);
q12 = in2(2,:);
t2 = sin(j11po);
t3 = cos(j11po);
t4 = cos(j11yo);
t5 = sin(j11yo);
t6 = cos(j11ro);
t7 = sin(j11ro);
t8 = t3.^2;
t9 = sin(q11);
t10 = t5.*t7;
t36 = t2.*t4.*t6;
t11 = t10-t36;
t12 = t2.*t11;
t13 = t4.^2;
t14 = t8.*t13;
t15 = t5.*t6;
t16 = t2.*t4.*t7;
t17 = t15+t16;
t37 = t3.*t5.*t17;
t18 = t12+t14-t37;
t19 = cos(q11);
t20 = t5.*t7.*t8;
t21 = t2.*t3.*t6;
t22 = t2.*t3.*t4;
t23 = t20+t21+t22;
t24 = cos(j12po);
t25 = cos(j12ro);
t26 = sin(j12po);
t27 = sin(j12ro);
t28 = t4.*t7;
t29 = t2.*t5.*t6;
t30 = t28+t29;
t31 = t4.*t5.*t8;
t32 = t4.*t6;
t46 = t2.*t5.*t7;
t33 = t32-t46;
t34 = t3.*t5.*t33;
t45 = t2.*t30;
t35 = t31+t34-t45;
t38 = t9.*t18;
t39 = t19.*t23;
t40 = t38+t39;
t41 = sin(j12yo);
t42 = cos(j12yo);
t43 = t9.*t23;
t47 = t18.*t19;
t44 = t43-t47;
t48 = cos(q12);
t49 = t24.*t25.*t40;
t50 = t24.*t27.*t35;
t51 = t49+t50-t26.*t44;
t52 = sin(q12);
t53 = t25.*t41;
t54 = t26.*t27.*t42;
t55 = t53+t54;
t56 = t35.*t55;
t57 = t27.*t41;
t67 = t25.*t26.*t42;
t58 = t57-t67;
t59 = t24.*t42.*t44;
t60 = t56+t59-t40.*t58;
t61 = t17.*t33;
t62 = t3.*t4.*t17;
t68 = t3.*t7.*t11;
t63 = t61+t62-t68;
t64 = t6.*t7.*t8;
t65 = t3.*t7.*t33;
t70 = t2.*t17;
t66 = t64+t65-t70;
t69 = t9.*t63;
t81 = t19.*t66;
t71 = t69-t81;
t72 = t33.^2;
t73 = t3.*t7.*t30;
t74 = t37-t72+t73;
t75 = t19.*t63;
t76 = t9.*t66;
t77 = t75+t76;
t78 = t27.*t42;
t79 = t25.*t26.*t41;
t80 = t78+t79;
t82 = t25.*t42;
t106 = t26.*t27.*t41;
t83 = t82-t106;
t84 = t26.*t77;
t85 = t24.*t27.*t74;
t86 = t24.*t25.*t71;
t87 = t84+t85+t86;
t88 = t58.*t71;
t89 = t24.*t42.*t77;
t90 = t88+t89-t55.*t74;
t91 = t6.^2;
t92 = t8.*t91;
t93 = t12-t73+t92;
t94 = t17.*t30;
t95 = t3.*t6.*t11;
t96 = t3.*t4.*t11;
t97 = t94+t95+t96;
t98 = t19.*t93;
t99 = t9.*t97;
t100 = t98+t99;
t101 = t30.*t33;
t102 = t3.*t6.*t30;
t107 = t3.*t5.*t11;
t103 = t101+t102-t107;
t104 = t9.*t93;
t108 = t19.*t97;
t105 = t104-t108;
t109 = t26.*t105;
t110 = t24.*t27.*t103;
t111 = t109+t110-t24.*t25.*t100;
t112 = t58.*t100;
t113 = t55.*t103;
t114 = t112+t113-t24.*t42.*t105;
joint13Rot = reshape([-t51.*t52-t48.*t60,t48.*t90-t52.*t87,t48.*t114+t52.*t111,-t35.*t83+t40.*t80+t24.*t41.*(t43-t47),t71.*t80-t74.*t83-t24.*t41.*t77,t80.*t100+t83.*t103+t24.*t41.*(t104-t108),t48.*t51-t52.*t60,t48.*t87+t52.*t90,-t48.*t111+t52.*t114],[3,3]);
