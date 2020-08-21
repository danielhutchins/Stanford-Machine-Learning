function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%   Performs gradient descent to learn theta. It updates theta by
%   taking num_iters gradient steps with learning rate alpha

  % Initialize some useful values
  m = length(y);  % number of training examples
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters

    % Perform a single gradient step on the parameter vector theta.
    theta = theta - X' * (X * theta - y) .* (alpha / m);

    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, theta);

    end
end