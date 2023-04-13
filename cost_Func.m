function [r_x] = cost_Func(x,u,Q,R)
% Calculates the output r(x) as a quadratic cost.

r_x = x'*Q*x + u'*R*u;

end