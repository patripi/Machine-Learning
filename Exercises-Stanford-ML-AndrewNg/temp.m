% FEATURE SCALING x1
x1=[89 72 94 69] % los m=4 examples que tenemos de x1
mean(x1) % media del vector
S1=max(x1)-min(x1) % rango de dispersion de x1

x1_3=94 % elemnto de la muestra a normalizar
x1_3=(x1_3-mean(x1))/S1 % Resultado: valor actualizado

% Generar ds random 10.000 valores
% y pintar histagrama

w=-6+sqrt(10)*(randn(1,10000));
hist(w,50)
