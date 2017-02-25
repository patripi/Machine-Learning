% Demos de las doc de GNU Octave
% MEDIANTE FUNCION LinearRegression
% necesita el paquete Optim (y struct)

n = 100;
x = sort(rand(n,1)*5-1);
y = 1+0.05*x + 0.1*randn(size(x));
F = [ones(n,1),x(:)];
[p,e_var,r,p_var,y_var] = LinearRegression(F,y);
yFit = F*p;
figure()
plot(x,y,'+b',x,yFit,'-g',x,yFit+1.96*sqrt(y_var),'--r',x,yFit-1.96*sqrt(y_var),'--r')
title('straight line by linear regression')
legend('data','fit','+/-95%')
grid on
