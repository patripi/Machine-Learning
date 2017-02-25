
% Calcula la probabilidad de combinaciones de Head / Tails
% en secuencias de n coin tosses, que contengan k Heads
% asumiendo
clear all; close all; clc;

n=input ('introduce n: ');
k=input ('introduce k: ');
p=input ('introduce p(Heads):');

% Calculo el caso particular para el k introducido
% P(head)^k * P(tails)^n-k * #secuencias con k Heads (es decir, el combinatorio n sobre k)
f=(p^k)*((1-p)^(n-k))*factorial(n)*1/(factorial(k)*factorial(n-k))

% Calculo una generalizacion para todos los casos y dibujo gráfica distribución
% como no sé de otra manera, relleno matriz resultados G con bucle for
G=zeros(1)';
for j = 1:n+1
  G(j)=(p^(j-1))*((1-p)^(n-(j-1)))*factorial(n)*1/(factorial(j-1)*factorial(n-(j-1)));
endfor
x=[0:1:n];
plot(x,G)
title(['Binomial secuencias de ',num2str(n),' tosses, con ',num2str(k),' HEADS y probabilidad HEADS ',num2str(p)]);
