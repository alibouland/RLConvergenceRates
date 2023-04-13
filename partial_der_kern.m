function output = partial_der_kern(x,y,a,j)
% Calculates partial(kern)/partial(x(j)) for exponential kernel
output =  -2*a*(x(j)-y(j))*kernel(x,y,a);
end