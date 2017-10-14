function [J, grad] = linearRegCostFunction(X, y, theta, lambda)


m = length(y); 

J = 0;
grad = zeros(size(theta));



param = 1 / (2 * m);

all_h = X * theta;

J = param * (((all_h - y)' * (all_h - y)) + lambda * theta(2:end, :)' * theta(2:end, :));

grad = (1 / m) * (X' * (all_h - y));

grad(2:end, :) = grad(2:end, :) + (lambda / m) * theta(2:end, :);




grad = grad(:);

end
