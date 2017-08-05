% Tutoril en Week 2
clear all; close all; clc

% Generar ds random 10.000 valores
% y pintar histagrama
w=-6+sqrt(10)*(randn(1,10000));
hist(w,50)
close all;

% Sacar tamaños
A=[1 2; 3 4; 5 6];
size (A);
size (A,1);
size (A,2);

% directorios
pwd;
ls;

% Moving Data Around
save -ascii matriz_w.dat w;
save -mat matriz_w.mat w; % .mat es COMPRESSED
load matriz_w.dat;
% whos

% LEER
fila2=A(2,:); %toma toda la fila 2
filas1y3=A([1 3],:); %tomo las filas 1 y 3 (salto la 2)
% ESCIBIR
A(:,2)=[10; 11; 12]; % actualizo la columna 2 con el vector especificado
A=[A,[100; 101; 102]]; % CONCATENAR con otra columna como el vector indicado
B=A(:); % PONER TODOS los elementos de A en un SINGLE vector
C=A';
% CONCATENAR
D =[A,C]; % al lado
E=[A;C]; % abajo
whos

A;
A=A+ones(size(A,1),1);
A+1; %hace lo mismo

v=[1 15 2 0.5];
[val, ind]=max(v);
A=magic(3); % genera matriz cuadrada mágica 3x3
% sum, prod, floor, ceil, max (total, por filas, por columna)
sum(A,1);
sum(A,2);
eye(3);

A.*eye(3); % matriz diagonal
sum(sum(A.*eye(3)));
flipud(A.*eye(3)); % da la vuelta --> ver diagonal
pinv(A);

clear all; close all; clc;
%% PLOTTING
t=[0:0.01:0.98];
y1=sin(2*pi*4*t);
plot (t,y1);
hold on;
y2=cos(2*pi*4*t);
plot (t,y2);
xlabel('time')
ylabel('value')
legend('sin','cos')
title('mi plot')
print -dpng 'myplot.png'
saveas(gca,'myplot','pdf');
close
figure(1); plot(t,y1);
figure(2); plot(t,y2);
subplot(1,2,1); %divides plot a 1x2 grid, access first element
plot(t,y1);
subplot(1,2,2);
plot(t,y2,'r');
axis([0.5 1 -1 1]);
saveas(gca,'my2plot','pdf');
close all;
A=magic(5);
imagesc(A);
imagesc(A), colorbar, colormap gray;

% CONTROL STATEMENTS
for i=1:10,
  v(i)=2^i;
end;
v;
for i=1:10,
  disp(v(i))
end;
% while; while true - if break - end
% if elseif elseif end

%% FUNCTIONS

%% *** hacer el ejmeplo de la Cost Function ****

%% VECTORIZACION
%% mejorar performance
