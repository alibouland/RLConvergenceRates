function [phi_matrix] = form_phi_matrix(x,centers,Covar,type)
% Forms the phi_matrix which is defined as
%   phi_matrix = [gradient(kernel(x,center1)) ... gradient(kernel(x,centerN))

N = size(centers,2);
phi_matrix = zeros(length(x),N);

    % Build phi_matrix column by column
    for i=1:N
        phi_matrix(:,i) = grad_kern_x(x,centers(:,i),Covar,type);
    end

end