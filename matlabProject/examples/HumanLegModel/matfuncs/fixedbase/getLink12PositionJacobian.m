function link12PosJaco = getLink12PositionJacobian(in1,in2)
%GETLINK12POSITIONJACOBIAN
%    LINK12POSJACO = GETLINK12POSITIONJACOBIAN(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:43:21

%======================================================================%
% Description: This function computes the position jacobian of the link12
% link12Pos = getLink12PositionJacobian(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% link12Pos: Position jacobian of the link12 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
j11po = in1(6,:);
j11ro = in1(5,:);
j11yo = in1(7,:);
j12xp = in1(8,:);
j12zp = in1(10,:);
l12po = in1(37,:);
l12ro = in1(36,:);
l12xp = in1(33,:);
l12yo = in1(38,:);
l12yp = in1(34,:);
l12zp = in1(35,:);
q11 = in2(1,:);
q12 = in2(2,:);
t2 = sin(j11po);
t3 = cos(j11po);
t4 = cos(j11yo);
t5 = sin(j11yo);
t6 = cos(j11ro);
t7 = sin(j11ro);
t8 = t3.^2;
t9 = cos(q11);
t10 = t5.*t7;
t24 = t2.*t4.*t6;
t11 = t10-t24;
t12 = t2.*t11;
t13 = t4.^2;
t14 = t8.*t13;
t15 = t5.*t6;
t16 = t2.*t4.*t7;
t17 = t15+t16;
t25 = t3.*t5.*t17;
t18 = t12+t14-t25;
t19 = sin(q11);
t20 = t5.*t7.*t8;
t21 = t2.*t3.*t6;
t22 = t2.*t3.*t4;
t23 = t20+t21+t22;
t26 = t9.*t18;
t37 = t19.*t23;
t27 = t26-t37;
t28 = cos(l12ro);
t29 = sin(l12po);
t30 = cos(l12po);
t31 = cos(l12yo);
t32 = t18.*t19;
t33 = t9.*t23;
t34 = t32+t33;
t35 = cos(q12);
t36 = t29.*t34;
t38 = t36-t27.*t28.*t30;
t39 = sin(q12);
t40 = sin(l12ro);
t41 = sin(l12yo);
t42 = t40.*t41;
t54 = t28.*t29.*t31;
t43 = t42-t54;
t44 = t27.*t43;
t45 = t44-t30.*t31.*t34;
t46 = t4.*t7;
t47 = t2.*t5.*t6;
t48 = t46+t47;
t49 = t4.*t5.*t8;
t50 = t4.*t6;
t58 = t2.*t5.*t7;
t51 = t50-t58;
t52 = t3.*t5.*t51;
t57 = t2.*t48;
t53 = t49+t52-t57;
t55 = t27.*t29;
t56 = t28.*t30.*t34;
t59 = t30.*t40.*t53;
t60 = t55+t56+t59;
t61 = t28.*t41;
t62 = t29.*t31.*t40;
t63 = t61+t62;
t64 = t34.*t43;
t65 = t27.*t30.*t31;
t66 = t64+t65-t53.*t63;
t67 = t31.*t40;
t68 = t28.*t29.*t41;
t69 = t67+t68;
t70 = t17.*t51;
t71 = t3.*t4.*t17;
t76 = t3.*t7.*t11;
t72 = t70+t71-t76;
t73 = t6.*t7.*t8;
t74 = t3.*t7.*t51;
t78 = t2.*t17;
t75 = t73+t74-t78;
t77 = t9.*t72;
t79 = t19.*t75;
t80 = t77+t79;
t81 = t9.*t75;
t84 = t19.*t72;
t82 = t81-t84;
t83 = t43.*t80;
t85 = t29.*t82;
t86 = t28.*t30.*t80;
t87 = t51.^2;
t88 = t3.*t7.*t48;
t89 = t25-t87+t88;
t90 = t29.*t80;
t91 = t30.*t40.*t89;
t92 = t90+t91-t28.*t30.*t82;
t93 = t43.*t82;
t94 = t63.*t89;
t95 = t93+t94-t30.*t31.*t80;
t96 = t6.^2;
t97 = t8.*t96;
t98 = t12-t88+t97;
t99 = t17.*t48;
t100 = t3.*t6.*t11;
t101 = t3.*t4.*t11;
t102 = t99+t100+t101;
t103 = t9.*t98;
t104 = t19.*t102;
t105 = t103+t104;
t106 = t9.*t102;
t108 = t19.*t98;
t107 = t106-t108;
t109 = t43.*t107;
t110 = t109-t30.*t31.*t105;
t111 = t29.*t105;
t112 = t111-t28.*t30.*t107;
t113 = t48.*t51;
t114 = t3.*t6.*t48;
t117 = t3.*t5.*t11;
t115 = t113+t114-t117;
t116 = t29.*t107;
t118 = t28.*t30.*t105;
t119 = t116+t118-t30.*t40.*t115;
t120 = t43.*t105;
t121 = t63.*t115;
t122 = t30.*t31.*t107;
t123 = t120+t121+t122;
link12PosJaco = reshape([-j12xp.*(t2.*t9+t3.*t4.*t19)-j12zp.*(t2.*t19-t3.*t4.*t9)+l12yp.*(t27.*t69+t30.*t34.*t41)+l12xp.*(t38.*t39+t35.*t45)-l12zp.*(t35.*t38-t39.*t45),-j12xp.*(t17.*t19-t3.*t7.*t9)+j12zp.*(t9.*t17+t3.*t7.*t19)+l12yp.*(t69.*t80-t30.*t41.*t82)-l12xp.*(t39.*(t85+t86)-t35.*(t83+t30.*t31.*t82))+l12zp.*(t35.*(t85+t86)+t39.*(t83+t30.*t31.*(t81-t84))),-j12xp.*(t11.*t19+t3.*t6.*t9)+j12zp.*(t9.*t11-t3.*t6.*t19)+l12yp.*(t69.*t107+t30.*t41.*t105)+l12xp.*(t35.*t110+t39.*t112)-l12zp.*(t35.*t112-t39.*t110),-l12xp.*(t35.*t60+t39.*t66)-l12zp.*(t39.*t60-t35.*t66),-l12xp.*(t35.*t92-t39.*t95)-l12zp.*(t35.*t95+t39.*t92),-l12xp.*(t35.*t119+t39.*t123)+l12zp.*(t35.*t123-t39.*t119),0.0,0.0,0.0],[3,3]);
