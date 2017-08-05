function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices.
%
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%

%% PRIMERO IMPLEMENTAMOS EL PREDICT QUE YA HICIMOS
X = [ones(m, 1) X]; % X = 5000 x 401

% a1 = 5000 x 401
a1 = X;
% a2 = 5000 x 25 --> 5000 x 26
% Theta1' = 401 x 25
a2 = sigmoid(a1 * Theta1');
a2 = [ones(m, 1) a2]; % añado col extra de 1s
% a3 = 5000 x 10 matrix
% Theta2' = 26 x 10 matrix
a3 = sigmoid(a2 * Theta2');

%% DESPUES LA COST FUNCTION SIMILAR A LA SIEMPRE PERO EN LA QUE h=a3
%% Y SE HA DE CONSIDERAR LA GENERALIZACION PROPIA DE LAS NN

% vectorizo y de manera que cada fila indica segun la posicion del 1
% cual es el dígito correcto (en lugar de llevar escrito el digito en decimal)
yVec = eye(num_labels)(y, :);
% coste unitario
cost = yVec.*log(a3)+(1-yVec).*log(1-a3);
% acumulamos los dos sumatorios (todas las clases y todos los training examples)
JsinReg = -sum(sum(cost,2))/m;
% calculamos la regularización. Asegurar dejar fuera los weights del bias
JRegTerm = sum(sum(Theta1(:,2:end).^2))+sum(sum(Theta2(:,2:end).^2));
J = JsinReg+lambda/(2*m)*JRegTerm; % Atención: es necesario sacar lambda/(2*m) aquí
% si lo dejamos en el la expresion anterior da un resultado distinto

% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the
%               first time.
%

D1 = zeros(size(Theta1));
D2 = zeros(size(Theta2));

for i = 1:m, % para cada ejemplo en el training set

  % 1º FORWARD PROPAGATION
  ra1 = X(i, :)';

	rz2 = Theta1 * ra1;
	ra2 = sigmoid(rz2);
	ra2 = [1; ra2];

	rz3 = Theta2 * ra2;
	ra3 = sigmoid(rz3);

  % 2º CALCULOS ERRORES
	err3 = ra3 - yVec(i, :)'; % errores del output con los datos de training
	err2 = (Theta2' * err3)(2:end, 1) .* sigmoidGradient(rz2); % errores en la capa hidden, weighted average

  % 3º ACUMULO LA DESVIACIÓN
	D1 = D1 + err2 * ra1'; % Delta acumuladores
	D2 = D2 + err3 * ra2'; % Delta acumuladores
end

% Theta1_grad = D1 / m; % primero sin regularizar
% Theta2_grad = D2 / m;

% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

Theta1_grad = D1 / m + lambda/m * [zeros(hidden_layer_size, 1) Theta1(:, 2:end)];
Theta2_grad = D2 / m + lambda/m * [zeros(num_labels, 1) Theta2(:, 2:end)];

% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];

end
