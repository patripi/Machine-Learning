% Operativas varias con Vectores y Matrices

% circunferencia en polar --> cartesiana
r=sqrt(2);
theta=pi/4;
y=r*sin(theta);
x=r*cos(theta);

clear all
% calculo de la viscosidad
shear=100;
lambda=3.313;
nuInfinito=0.035;
nuCero=0.56;
n=0.3568;
nuEnShear=nuInfinito+(nuCero-nuInfinito)*(1+(lambda*shear)^2)^((n-1)/2);

% ASCII
str='wxyz';
toascii(str);
char(toascii(str+3));

% Creación de Vectores
clear all
a=[1:1:10];
b=linspace(1,10,10);
c=[-10:-2:-20];
d=linspace(-10,-20,6);
clear all
a=[100:25:200]';
clear all
a=[1:1:5]';
b=[1:1:7]';
c=[a;b];
size (c);
ones(12,2);
zeros(12,2);
eye(3,3);
eye(floor(pi),floor(pi));
clear all

% Creación de Matrices
a=[1,2,3;4,5,6];
b=[1,2,3;4,5,6;7,8,9];
diag(b);
ones(9,12);
a1=1;
a2=2;
a3=3;
a4=4;
a5=5;
c=[a1,a2,a3,a4,a5;10+a1,10+a2,10+a3,10+a4,10+a5;20+a1,20+a2,20+a3,20+a4,20+a5];
% esto:
d=[4,3,0,0,0;-6,-7,0,0,0;0,0,0,0,0];
c+d;
% es equivalente a esto:
c(1:2,1:2)=5;
% Diagonales
A = diag(5:-1:1);
A(1:3,[1,3,5]) = A(1:3,[1,3,5]) + ones(3,3);

%Algunas operaciones con matrices
clear all
u=[3;-1;2]; v=[0.4;4;-0.1];
% u*v error por size
u*v';
[u,2*u];
%resolucion Ax=b
b=[3;1;0.9];
A=[2 3 0; 1 0 -2; 0 0 3];
x=inv(A)*b;
%alternativa más eficiente:
z=A\b; % resolucion de A z=b
[x z];
x-z;

clear all
% Ejercicio 2.4.1
A=[-8 2 4; -5 -5 -6; -2 2 -8];
b=[9;10;-1];
x=inv(A)*b;
% Equivalencias en redondeos / aproximaciones al int
fix(45/7);
floor(6.6);
ceil(7\45-1);
fix(7/45+1);
ceil(45/7);

fix(-30\10);
floor(0.6);
floor(-0.4);
ceil(-1.06);
floor(-0.04);

clear all
%Test2.2 Tip: theta viene en radianes
% a grados: x*180/pi
x=-9.5;
y=21;
r=sqrt(x^2+y^2);
theta =acos(x/r);
r;
theta;
theta=theta*180/pi;

clear all
vcol=linspace(1,-2,31)';
u=[1,2,3];
v=[4,5,6]';
u';
z=[u',v,u'+v];

clear all
v = [6;4;-3;-2;1];
V=diag(v);
A=diag(v);
A([1,5],[1,5]);
A([1,5],[1,5]) = A([1,5],[1,5]) + 2*ones(2,2);
B=diag(v);
B(1:3,[1,3,5]);
B(1:3,[1,3,5]) = B(1:3,[1,3,5]) + 2*ones(3,3);
C=diag(v);
C(1:3,1:3);
C(1:3,1:3) = C(1:3,1:3) + 2*ones(3,3);
V*v;
V.*v;

clear all
A=[1:5;11:15;21:25];
v = [1,-2,4];
A(1:3,2)=v;
sumsq(A');
sum(A'.*A');
sum(A'.^2);
sum(A'.^2,1);

% INPUT / OUTPUT
clear all
%vol=input("pon un numero ");
%disp(['hola carabola ',num2str(vol)]);

%FICHERO Y VARIABLES
% guarda todo el entorno de variables (formato bin):
save -mat workspace.mat;
load workspace.mat;
% guarda una variable en fichero plano
a=[1:5;11:15;21:25];
save -ascii matriz_a.txt a;
clear;
a=load ('matriz_a.txt');
clear;
% guarda dos variable en fichero matlab
mat=23;
vec=[1:5:25];
save -mat mooc_matlab.mat mat vec;
load mooc_matlab.mat;
% en formato texto plano
save -ascii mooc_matlab.txt mat vec;
save -ascii workspace.txt;

% Ejecicio de cálculo posicion y velocidad
% This script calculates speed and position, adds a 5% error
% and saves in an ascii file named measures_mua.txt
a=9.81;
x0=50;
v0=0;

t=linspace(0,10,5)';
x=x0+v0*t+0.5*a*t.^2;
v=v0+a*t;

err=rand(5,1);
x=x.*(0.95+0.1*err);
v=v.*(0.95+0.1*err);

A=[x v];
save -ascii measures_mua.txt A;

% Ejercicio leyendo de fichero plano con separadores
clear all
b=load ('example.csv');
c=dlmread ('example.csv');
d=dlmread ('example.csv','\t');

%GRAFICOS E IMAGENES 2D
clear;close all;clc;
% SENO y COSENO
figure(1);
x=linspace(-pi,pi,21);
y=sin(x);
z=cos(x);
plot(x,y,'b:o',x,z,'k-x');
title('Grafica de Seno y Coseno de -pi a pi');
legend ('seno(x)','coseno(x)');
xlabel('Eje x');
ylabel('Eje y');
saveas(gca,'figura1','pdf');
% X^2
figure(2);
x=[-2:0.1:2];
y=x.^2;
plot(x,y);
saveas(gca,'figura2','pdf');

% ver EjemploPlotRegLineal
% Exercise 3.3.3 Show Linear Regresion graph
clear;close all;clc;
% Randomly generate data
x = 10*rand(50,1);
y = x+(5*rand(50,1)-2);
% linear regression
fit = polyfit(x,y,1);
% evaluation of the regression
x_eval = 0:10;
y_eval = polyval(fit,x_eval);
%--------------------------%
% figure creation
figure(3);
hold on;
% Adds elements on the figure
plot(x,y,'rx');
plot(x_eval,y_eval,'g','LineWidth',2);
% Figure styling
xlim([-1,11]);
ylim([-1,11]);
xlabel('temps [s]');
ylabel('position [m]');
title('Position vs Speed');
saveas(gca,'figura3','pdf');
hold off;

% ver ejemplo plot de 3 funciones (x)
% Exercise 3.3.4 Show Linear Regresion graph
 clear; close all; clc;
 %% si queremos parametrizar a partir de input usuario:
 %c=input('enter interval in vector format [a,b]: ');
 %a=c(1);
 %b=c(2);
 %n=input('enter number of points to plot: ')
 %% alternativa con valores fijos para agilizar ejecucion script:
 a=-10; b=10; n=100;
 x=linspace(a,b,n)';
 f = 3*x.^2-2*sin(x);
 g = sqrt(abs(x-3));
 h = e.^(2*x.^2);
 figure(4);
 hold on;
 plot(x,f,'k-x',x,g,'b-*',x,h,'r-o');
 xlim([a,b]);
 ylim([-2,10]);
 xlabel('x-axis');
 ylabel('y-axis');
 title('3-function Plot');
 legend ('f(x)=3*x.^2-2*sin(x)','g(x)=sqrt(abs(x-3))','h(x)=e.^(2*x.^2)');
 hold off;
 saveas(gca,'figura4','pdf');

% 3D PLOT
% Hélice doble
 clear; close all; clc;
figure(5);
t=linspace(-2*pi, 2*pi,200);
plot3(sin(t), cos(t),t,'b-');
title('hélice');
xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');
hold on;
plot3(sin(t),-cos(t),t,'k-');
saveas(gca,'figura5','pdf');

% SUPERFICIE
clear; close all; clc;
% clf;
figure(6);
x=linspace(-1,1,101);
y=linspace(-1,1,201);
[X,Y]=meshgrid(x,y);
Z = sin(2*pi*X) .* cos(pi*Y);

surf(X,Y,Z);
title('Superficie');
% Grabar a fichero la Mesh en este AirBook le lleva un ratito
% saveas(gca,'figura6','pdf');

% Ejercicio 3.4.1
clear; close all; clc;
% Generate data
x=linspace(0,6*pi,100);
%[TO COMPLETE #1]
y=x.*sin(x);
z=exp(x/10)-1;
% Create figure with visualization
hold on
%[TO COMPLETE #2]
% en negro plot3(x,y,0*z,'kx')
% en azul y con la línea en doble grosor:
plot3(x,y,0*z,'linewidth',2,'b-');
% Add axis labels
xlabel('x');
ylabel('x*sin(x)');
%[TO COMPLETE #3]
zlabel('e^x/10-1');
%[TO COMPLETE #4]
hold off
%[TO COMPLETE #5]
grid on

%% Test 3.2 #####################################
%% version 3
clear all; close all;
% load the file measures_mua.txt
disp_vel = load('measures_mua.txt');
% split the data into two vectors,
% position and speed
disp = disp_vel(:,1);
vel = disp_vel(:,2);
% defining time:
M = size(disp,1);
t = linspace(0,10,M)';
% draw a plot with the displacement and
% velocity as function of time
% using two different colors and symbols
plot(t, disp, 'ro:', ...
     t, vel, 'bd-');
% title, legend and axis names.
legend('disp','vel');
title('MUA');
xlabel('time');
ylabel('disp and vel');

clear all; close all;clc;
%% FUNCIONES
%% Usar EjemploFuncion.m:
% function [b,normB] = EjemploFuncion(A, x)
% b=A*x;
% normB=norm(b);
% end
[v,n]=EjemploFuncion([1:5],3);

%% ANONYMUS FUNCTIONS
A=[1,2,3;4,5,6];
z=[2;-3;0];
f = @(A,x) A*x;
a=4; %% aunque yo luego cambie esta variable en la linea
% de comandos, mo cambiará ni en g ni en h... salvo que
% grabe el script y lo vuelva a ejecutar entero con el
% nuevo valor
g = @(A,x) a*A*x;

%% INLINE FUNCTIONS
h=inline('a*A*x','A','x');

clear all; close all;clc;
%% CONDITIONAL STATEMENTS
a=5;
b=8;
if(a<b)
  disp('a es < b ');
  disp([num2str(a) ' < ' num2str(b)]);
elseif
  disp ('a NO es < b ');
else
  disp ('Esto si que es raro! ');
end
%% LOOPS
% for, while

%% OPCION MENU
%% Program definition:

% main:
% choice:
% 1- explain the program
% 2- define the bounds of the plot
% 3- draw the ellipse defined by the user
% 4- load a file containing the ellipses and plot them
% 5- ask for the plot's precision, by default 200 points
% 6- clean the figure
% 7- exit

%{
clear all;
close all;

Npoints = 200;
figure(1)
hold on

choice = 1;
while choice ~= 7

  switch choice
    case 1
      explainProgram;
    case 2
      myAxes = askAxes;
      modifyAxes (myAxes);
    case 3
      ellipse = askEllipse;
      plotEllipse(ellipse, Npoints);
    case 4
      loadFileAndPlot(Npoints);
    case 5
      Npoints = askPrecision;
    case 6
      clf
  end

  choice = menu('Make your choice', 'explain', ...
    'change axes', 'draw an ellipse', ...
    'draw the ellipses from a file', ...
    'change the precision','clean the figure', ...
    'exit the program');

end
%}
