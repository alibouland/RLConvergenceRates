function [x_dot] = nonlinear_dynamics(x,u)

% Compute f(x) + g(x)u(x) given x and u
% Nonlinear system from the Vamboudakas RL paper (2nd example)

f = @(x) [-x(1)+x(2); -0.5*x(1)-0.5*x(2)*(1-(cos(2*x(1))+2)^2)];
g = @(x) [0; cos(2*x(1)) + 2;];

x_dot = f(x) + g(x)*u;

end