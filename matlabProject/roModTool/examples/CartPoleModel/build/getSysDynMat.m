function [M,C,G] = getSysDynMat(in1,in2)
%GETSYSDYNMAT
%    [M,C,G] = GETSYSDYNMAT(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    17-Sep-2018 11:52:36

%======================================================================%
% Description: This function computes the inertia, Coriolis and gravity matrices of the dynamical system
% [M, C, G] = getSysDynMat(states, sysParams)
% @Inputs:
% states: State variable of the dynamical system - column vector
% sysParams: Physical parameters of the dynamical system - column vector
% @Output:
% M: Inertia matrix of the dynamical system
% C: Coriolis matrix of the dynamical system
% G: Gravity matrix of the dynamical system
% Version: 1.0
% Author: Quoc-Viet Dang
%======================================================================%
dq2 = in1(4,:);
g = in2(4,:);
l = in2(3,:);
m1 = in2(1,:);
m2 = in2(2,:);
q2 = in1(2,:);
t2 = sparse(cos(q2));
t3 = sparse(l.*m1.*t2);
M = sparse([1,2,1,2],[1,1,2,2],[m1+m2,t3,t3,l.^2.*m1],2,2);
if nargout > 1
    t4 = sparse(sin(q2));
    C = sparse([1],[2],[-dq2.*l.*m1.*t4],2,2);
end
if nargout > 2
    G = sparse([2],[1],[-g.*l.*m1.*t4],2,1);
end
