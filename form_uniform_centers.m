function [centers,numCenters] = form_uniform_centers(sqrtNum_centers,distr_type)
% This function creates the centers based on the distribution type needed
% Inputs:
%           - sqrtNum_centers: the square root of the total number of
%           centers 
%           - distr_type: currently implemented for "linspace", which is a
%           linear distribution, or "logspace", which is a logarithmic
%           distribution.

numCenters = sqrtNum_centers^2; % Number of centers for 2D is n^2

if distr_type == "linspace"
    x_centers = linspace(-1,1,sqrtNum_centers); % 
    y_centers = x_centers;
elseif distr_type == "logspace"
%     if rem(sqrtNum_centers,2) ~= 0
%         k = 1:(sqrtNum_centers-1)/2;
%         x_centers = log(k)/log((sqrtNum_centers-1)/2);
%         x_centers(1) = x_centers(2)/2;
%         x_centers = [-fliplr(x_centers) 0 (x_centers)];
%         y_centers = x_centers;
%     end

    if rem(sqrtNum_centers,2) ~= 0
        x_centers = [1 1-logspace(-1,0,(sqrtNum_centers-1)/2)];
        x_centers = [-x_centers(1:end-1) fliplr(x_centers)];
        y_centers = x_centers;
    else 
        disp("The number of centers must be odd for logspace")
    end

else
    disp("distr_type must be linspace or logspace")
    return
end

% Chebychev centers
% x_centers = cos((2*k-1)/2/sqrtNum_centers*pi);
% x_centers = k.^2/sqrtNum_centers^2;
% y_centers = cos((2*k-1)/2/sqrtNum_centers*pi);
% y_centers = k.^2/sqrtNum_centers^2;

[X_centers,Y_centers] = meshgrid(x_centers,y_centers);

% centers = zeros(size(x,1),numCenters);
counter =1; centers = zeros(2,numCenters);
for i = 1:sqrtNum_centers
    for j = 1:sqrtNum_centers
        centers(:,counter) = [X_centers(i,j); Y_centers(i,j);];
        counter = counter+1;
    end
end
end