function [output] = grad_kern_x(x,y,covar,type)
% Calculates the gradient of a kernel with respect to x
% Currently done for exponential kernel only
r = norm(x-y);
beta = 1/covar;

output =  -2*covar*(x-y)*(kernel(x,y,covar,type));

% output =  -(kernel(x,y,a)); 

end