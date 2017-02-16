A = [3 1; 4 -3];
B = [22; -1];
X = linsolve(A, B);
disp(['x = ' num2str(X(1)) ', y = ' num2str(X(2))]);

clear all;
% Comment: Define Function:
function y = f (x)
y(1) = -2*x(1)^2 + 3*x(1)*x(2)   + 4*sin(x(2)) - 6;
y(2) =  3*x(1)^2 - 2*x(1)*x(2)^2 + 3*cos(x(1)) + 4;
endfunction
% Comment: Solve System for Vector Root Starting at [1; 2]:
vector=[1; 2];
[x,info] = fsolve ('f', vector)

clear all;
