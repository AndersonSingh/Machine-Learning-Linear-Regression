function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% unvectorized implementation of calcuating cost function.

% for i=1:m, % iterate through each training example.
%     h = theta' * X(i,:)'; % compute the hypothesis for training example.
%     J = J + ((h - y(i,1)) ^ 2); % partial calculation of cost function. 
% end
% 
% J = J/(2 * m); % final calculation for cost function. 

% vectorized implementation of calculating cost function.

h = X * theta; %compute hypothesis for all training examples. 

J = sum((h - y) .^ 2) / (2 * m); % compute cost function. 

% =========================================================================

end
