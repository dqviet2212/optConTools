function link12Pos = getLink12Position(in1,in2)
%GETLINK12POSITION
%    LINK12POS = GETLINK12POSITION(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:43:17

%======================================================================%
% Description: This function computes the position of the link12
% link12Pos = getLink12Position(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% link12Pos: Position of the link12 - column vector
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
l12po = in1(37,:);
l12ro = in1(36,:);
l12xp = in1(33,:);
l12yo = in1(38,:);
l12yp = in1(34,:);
l12zp = in1(35,:);
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
t11 = cos(l12yo);
t12 = sin(l12ro);
t13 = cos(l12ro);
t14 = sin(l12po);
t15 = sin(l12yo);
t16 = t7.*t9;
t29 = t3.*t5.*t8;
t17 = t16-t29;
t18 = t3.*t17;
t19 = t5.^2;
t20 = t10.*t19;
t21 = t7.*t8;
t22 = t3.*t5.*t9;
t23 = t21+t22;
t30 = t4.*t7.*t23;
t24 = t18+t20-t30;
t25 = t7.*t9.*t10;
t26 = t3.*t4.*t8;
t27 = t3.*t4.*t5;
t28 = t25+t26+t27;
t31 = t2.*t24;
t47 = t6.*t28;
t32 = t31-t47;
t33 = cos(l12po);
t34 = t6.*t24;
t35 = t2.*t28;
t36 = t34+t35;
t37 = t5.*t9;
t38 = t3.*t7.*t8;
t39 = t37+t38;
t40 = t5.*t7.*t10;
t41 = t5.*t8;
t46 = t3.*t7.*t9;
t42 = t41-t46;
t43 = t4.*t7.*t42;
t45 = t3.*t39;
t44 = t40+t43-t45;
t48 = cos(q12);
t49 = t14.*t32;
t50 = t13.*t33.*t36;
t51 = t12.*t33.*t44;
t52 = t49+t50+t51;
t53 = sin(q12);
t54 = t13.*t15;
t55 = t11.*t12.*t14;
t56 = t54+t55;
t57 = t12.*t15;
t83 = t11.*t13.*t14;
t58 = t57-t83;
t59 = t36.*t58;
t60 = t11.*t32.*t33;
t61 = t59+t60-t44.*t56;
t62 = t11.*t12;
t63 = t13.*t14.*t15;
t64 = t62+t63;
t65 = t11.*t13;
t91 = t12.*t14.*t15;
t66 = t65-t91;
t67 = t23.*t42;
t68 = t4.*t5.*t23;
t73 = t4.*t9.*t17;
t69 = t67+t68-t73;
t70 = t8.*t9.*t10;
t71 = t4.*t9.*t42;
t75 = t3.*t23;
t72 = t70+t71-t75;
t74 = t2.*t69;
t76 = t6.*t72;
t77 = t74+t76;
t78 = t42.^2;
t79 = t4.*t9.*t39;
t80 = t30-t78+t79;
t81 = t2.*t72;
t84 = t6.*t69;
t82 = t81-t84;
t85 = t14.*t77;
t86 = t12.*t33.*t80;
t87 = t85+t86-t13.*t33.*t82;
t88 = t58.*t82;
t89 = t56.*t80;
t90 = t88+t89-t11.*t33.*t77;
t92 = t23.*t39;
t93 = t4.*t8.*t17;
t94 = t4.*t5.*t17;
t95 = t92+t93+t94;
t96 = t8.^2;
t97 = t10.*t96;
t98 = t18-t79+t97;
t99 = t2.*t95;
t108 = t6.*t98;
t100 = t99-t108;
t101 = t39.*t42;
t102 = t4.*t8.*t39;
t107 = t4.*t7.*t17;
t103 = t101+t102-t107;
t104 = t2.*t98;
t105 = t6.*t95;
t106 = t104+t105;
t109 = t14.*t100;
t110 = t13.*t33.*t106;
t111 = t109+t110-t12.*t33.*t103;
t112 = t58.*t106;
t113 = t56.*t103;
t114 = t11.*t33.*t100;
t115 = t112+t113+t114;
link12Pos = [j11xp-j12xp.*(t3.*t6-t2.*t4.*t5)+j12zp.*(t2.*t3+t4.*t5.*t6)-l12yp.*(-t36.*t64+t44.*t66+t15.*t32.*t33)-l12xp.*(t52.*t53-t48.*t61)+l12zp.*(t48.*t52+t53.*t61)-j12yp.*t4.*t7;j11yp+j12xp.*(t2.*t23+t4.*t6.*t9)+j12zp.*(t6.*t23-t2.*t4.*t9)+j12yp.*t42-l12yp.*(t64.*t82+t66.*t80+t15.*t33.*t77)-l12xp.*(t48.*t90+t53.*t87)+l12zp.*(t48.*t87-t53.*t90);j11zp+j12xp.*(t2.*t17-t4.*t6.*t8)+j12zp.*(t6.*t17+t2.*t4.*t8)+j12yp.*t39+l12yp.*(t66.*t103+t64.*t106-t15.*t33.*t100)+l12xp.*(t48.*t115-t53.*t111)+l12zp.*(t48.*t111+t53.*t115)];
