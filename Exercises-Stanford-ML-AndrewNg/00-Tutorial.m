% Tutoril en Week 2
clear all; close all; clc

% Generar ds random 10.000 valores
% y pintar histagrama
w=-6+sqrt(10)*(randn(1,10000));
hist(w,50)
close all;

% Sacar tamaños
A=[1 2; 3 4; 5 6]
size (A);
size (A,1);
size (A,2);

% directorios
pwd;
ls;

% Moving Data Around
save -ascii matriz_w.dat w;
save -mat matriz_w.mat w; % .mat es COMPRESSED
load matriz_w.dat
whos

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
