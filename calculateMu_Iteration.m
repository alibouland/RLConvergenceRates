function next_Mu = calculateMu_Iteration(x,R,alphas,centers,covar)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% for i = 1:length(centers)
%     sum = partial_der_kern(x,)  
% end


g = [0; 1];
% n_quad = 10;


% 
% total_Phi = zeros(length(g),length(centers));
% for i =1:n_quad
%     for j=1:n_quad
%         curr_point = [X_eval(i,j);Y_eval(i,j)];
%         phi_matrix = form_phi_matrix(curr_point,centers,covar);
%         
%         total_Phi = total_Phi + phi_matrix;
%     end
% end



next_Mu = -0.5*R\g'*form_phi_matrix(x,centers,covar)*alphas;


end