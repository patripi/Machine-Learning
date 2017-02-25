%% Ecuacuines diferenciales
% Solucion general
% 'D' indica Derivada: Dy = dy/dt
% C1, C2... serán las constantes de integración
% Ejemplo: 3y+dy/dt=100  --> 'Dy+3*y=100'
% Ejemplo: Segunda derivada 'D2y+3*Dy+5*y=sin(t)'


syms y(x)
DE = diff(y, x) - 4*y == 0
sol = dsolve (DE)

% con condiciones iniciales:
sol = dsolve (DE, y(0)==1)

% de segundo grado:
DE = diff(y, 2) == -9*y
sol1 = dsolve (DE)
sol1 = dsolve (DE, y(0)==1, diff(y)(0)==12)
x=0:1:100;
y=eval(vectorize(sol1))
plot(x,y)
