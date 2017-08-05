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

h=X*theta; % funcion de hipotesis
e=h.-y; % error de cada prediccion
e_cuadrado=e.^2; % cuadrado de los errores
suma_e_cuadrado=sum(e_cuadrado); % suma de los cuadrados

J=1/(2*m)*suma_e_cuadrado % Cost Function


% =========================================================================

end
