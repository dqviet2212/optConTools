function link11Vel = getLink11Velocity(in1,in2)
%GETLINK11VELOCITY
%    LINK11VEL = GETLINK11VELOCITY(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    01-Oct-2018 18:39:11

%======================================================================%
% Description: This function computes the velocity of the link11
% link11Vel = getLink11Velocity(physicalParams, stateVariable)
% @Inputs:
% physicalParams: Physical parameters of the dynamical system - column vector
% stateVariable: State variable of the dynamical system - column vector
% @Output:
% link11Vel: Velocity of the link11 - column vector
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
dpo = in2(12,:);
dpx = in2(8,:);
dpy = in2(9,:);
dpz = in2(10,:);
dq11 = in2(14,:);
dro = in2(11,:);
dyo = in2(13,:);
j11po = in1(13,:);
j11ro = in1(12,:);
j11xp = in1(9,:);
j11yo = in1(14,:);
j11yp = in1(10,:);
j11zp = in1(11,:);
l11xp = in1(15,:);
l11yp = in1(16,:);
l11zp = in1(17,:);
po = in2(5,:);
q11 = in2(7,:);
ro = in2(4,:);
yo = in2(6,:);
t2 = cos(po);
t3 = cos(j11po);
t4 = sin(po);
t5 = sin(j11ro);
t6 = cos(j11ro);
t7 = sin(j11po);
t8 = sin(yo);
t9 = sin(j11yo);
t10 = cos(j11yo);
t11 = cos(yo);
t12 = cos(q11);
t13 = t4.*t7.*t11;
t14 = t3.*t4.*t5.*t8;
t15 = t13+t14-t2.*t3.*t6;
t16 = sin(q11);
t17 = t5.*t9;
t25 = t6.*t7.*t10;
t18 = t17-t25;
t19 = t2.*t18;
t20 = t6.*t9;
t21 = t5.*t7.*t10;
t22 = t20+t21;
t23 = t4.*t8.*t22;
t24 = t19+t23-t3.*t4.*t10.*t11;
t26 = t3.*t4.*t6;
t27 = t2.*t7.*t11;
t28 = t2.*t3.*t5.*t8;
t29 = t26+t27+t28;
t30 = t4.*t18;
t31 = t2.*t3.*t10.*t11;
t32 = t30+t31-t2.*t8.*t22;
t33 = t2.*t7.*t8;
t34 = t33-t2.*t3.*t5.*t11;
t35 = t2.*t11.*t22;
t36 = t2.*t3.*t8.*t10;
t37 = t35+t36;
t38 = t6.*t10;
t51 = t5.*t7.*t9;
t39 = t38-t51;
t40 = sin(ro);
t41 = t4.*t18.*t40;
t42 = t2.*t3.*t10.*t11.*t40;
t43 = t41+t42-t2.*t8.*t22.*t40;
t44 = t3.*t4.*t6.*t40;
t45 = t2.*t7.*t11.*t40;
t46 = t2.*t3.*t5.*t8.*t40;
t47 = t44+t45+t46;
t48 = t5.*t10;
t49 = t6.*t7.*t9;
t50 = t48+t49;
t52 = cos(ro);
t53 = t11.*t52;
t58 = t4.*t8.*t40;
t54 = t53-t58;
t55 = t8.*t52;
t56 = t4.*t11.*t40;
t57 = t55+t56;
t59 = t3.*t5.*t54;
t60 = t2.*t3.*t6.*t40;
t101 = t7.*t57;
t61 = t59+t60-t101;
t62 = t22.*t54;
t63 = t3.*t10.*t57;
t103 = t2.*t18.*t40;
t64 = t62+t63-t103;
t65 = t8.*t40;
t70 = t4.*t11.*t52;
t66 = t65-t70;
t67 = t11.*t40;
t68 = t4.*t8.*t52;
t69 = t67+t68;
t71 = t7.*t66;
t72 = t2.*t3.*t6.*t52;
t83 = t3.*t5.*t69;
t73 = t71+t72-t83;
t74 = t22.*t69;
t75 = t2.*t18.*t52;
t76 = t3.*t10.*t66;
t77 = t74+t75+t76;
t78 = t22.*t57;
t79 = t78-t3.*t10.*t54;
t80 = t7.*t54;
t81 = t3.*t5.*t57;
t82 = t80+t81;
t84 = t12.*t73;
t85 = t16.*t77;
t86 = t84+t85;
t87 = t12.*t77;
t88 = t87-t16.*t73;
t89 = t3.*t4.*t6.*t52;
t90 = t2.*t7.*t11.*t52;
t91 = t2.*t3.*t5.*t8.*t52;
t92 = t89+t90+t91;
t93 = t4.*t18.*t52;
t94 = t2.*t3.*t10.*t11.*t52;
t95 = t93+t94-t2.*t8.*t22.*t52;
t96 = t22.*t66;
t97 = t96-t3.*t10.*t69;
t98 = t7.*t69;
t99 = t3.*t5.*t66;
t100 = t98+t99;
t102 = t16.*t61;
t104 = t12.*t64;
t105 = t102+t104;
t106 = t12.*t61;
t107 = t106-t16.*t64;
link11Vel = [dpx-dyo.*(l11yp.*(t2.*t11.*t39-t2.*t3.*t8.*t9)+l11xp.*(t12.*t37-t16.*t34)+l11zp.*(t12.*t34+t16.*t37)+j11xp.*t2.*t8+j11yp.*t2.*t11)+dpo.*(j11zp.*t2+l11yp.*(t2.*t50+t4.*t8.*t39+t3.*t4.*t9.*t11)+l11xp.*(t15.*t16+t12.*t24)-l11zp.*(t12.*t15-t16.*t24)+j11yp.*t4.*t8-j11xp.*t4.*t11)-dq11.*(l11xp.*(t12.*t29+t16.*t32)-l11zp.*(t12.*t32-t16.*t29));dpy-dyo.*(l11yp.*(t39.*t57+t3.*t9.*t54)-j11xp.*t54+j11yp.*t57+l11xp.*(t12.*t79+t16.*t82)-l11zp.*(t12.*t82-t16.*t79))+dpo.*(-l11yp.*(-t4.*t40.*t50+t2.*t8.*t39.*t40+t2.*t3.*t9.*t11.*t40)+l11xp.*(t12.*t43-t16.*t47)+l11zp.*(t12.*t47+t16.*t43)+j11zp.*t4.*t40-j11yp.*t2.*t8.*t40+j11xp.*t2.*t11.*t40)+dq11.*(l11xp.*t107+l11zp.*t105)-dro.*(j11xp.*t66+j11yp.*t69+l11xp.*t88+l11zp.*t86+l11yp.*(t39.*t69-t3.*t9.*t66+t2.*t50.*t52)+j11zp.*t2.*t52);dpz-dyo.*(l11yp.*(t39.*t66+t3.*t9.*t69)+j11yp.*t66-j11xp.*t69+l11xp.*(t12.*t97+t16.*t100)-l11zp.*(t12.*t100-t16.*t97))-dpo.*(-l11yp.*(-t4.*t50.*t52+t2.*t8.*t39.*t52+t2.*t3.*t9.*t11.*t52)+l11xp.*(t12.*t95-t16.*t92)+l11zp.*(t12.*t92+t16.*t95)+j11zp.*t4.*t52-j11yp.*t2.*t8.*t52+j11xp.*t2.*t11.*t52)-dq11.*(l11xp.*t86-l11zp.*t88)+dro.*(j11yp.*t54+j11xp.*t57+l11xp.*t105-l11zp.*t107-l11yp.*(-t39.*t54+t3.*t9.*t57+t2.*t40.*t50)-j11zp.*t2.*t40)];
