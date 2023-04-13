function [x_dot] = calculate_spatial_dynamics(x,u)

% Compute f(x) + g(x)u(x) given x and u


%% Mass Spring System
k = 1;
A = [0 1; -k 0];
B = [0; 1;];

%%
f = @(x) A*x;
g = @(x) B;

x_dot = f(x) + g(x)*u;

end