function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %





    h = X * theta; % compute hypothesis. 
    
    % computes summation for theta.
    p = h - y;
    c = p' * X;

    
    columns = size(X,2); % compute number of features.
    temp = zeros(columns,1); % create a temp matrix for theta.
    
    % compute theta for this iteration.
    for i=1:columns,
        temp(i,1) = theta(i,1) - (alpha/m)  * c(1,i);
    end;

    theta = temp; % update theta.


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
