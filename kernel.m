%% Currently setup for exponential kernel


function [output] = kernel(x,y,covar,type)
% Inputs: x,y,Covar 
%  

% s = norm(x-y);
r = norm(x-y);
beta = 1/covar;

switch type
    case('g') % Gaussian
        output = exp(-covar*(x-y)'*(x-y));
    case('w') % Wendland
        error('Not implemented yet')
    case('m') % Matern
        error('Not implemented yet')
    otherwise
        error('Kernel type not implemented')
end


%     case('w') % Wendland
%         [coeff, expon] = wendcoeff(5, RBFpar-1);
%         ind = find(r<=1);
%         
%         output

% output = 1/(2*pi*covar^length(x)) * exp(-covar*(x-y)'*(x-y));



end