% Solved exercise 3.3
% Probabilidades hipergeométricas

% An urn contains n balls, out of which exactly m are red.
% We select k of the balls at random, without replacement
% (i.e., selected balls are not put back into the urn before
% the next selection). What is the probability that i of the
% selected balls are red?

clc; clear all; close all;

% numero combinatorio /n\
%                     \k/
% es la funcion nchoosek(n, k)

% Ejemplo parametrizo para deck 52 cartas
% probabilidad de coger 7 y que 3 sean ases?

% número total
n = 52;
% muestra que se toma
k = 7;
% items del evento en el total
m=4;
% items del evento en la muestra que tomo
r=3;
% aplicamos la probabilidad
P_event=nchoosek(m,r)*nchoosek(n-m,k-r)/nchoosek(n,k)
Porcentaje=P_event *100

% Gráfico para ver cómo varía frente a distintos
% valores de r (ej. que sea 1 solo as, que sean 2 ases, que no hay ninguno...)
w=[0 1 2 3 4]';
for j=1:size(w)
  P_event(j)=nchoosek(m,w(j))*nchoosek(n-m,k-w(j))/nchoosek(n,k);
endfor

plot(w,P_event)
title(['Probabilidad de tomar k=',num2str(k),' cartas, de un deck de ',num2str(n),' en el que ',num2str(r), ' sean Ases (hay ',num2str(m), ' en total)']);

Numero_de_Ases=w'
Porcentaje=100.*P_event
