
% Probabilidad Multinomial
% Solved Example 3.4
% An urn contains balls of r different colors.
% We draw n balls, with different draws being independent.
% For any given draw, there is a probability pi, i=1,…,r,
% of getting a ball of color i. Here, the pi's are nonnegative
% numbers that sum to 1.

% (For such independence to be possible, you may think of an urn
% that has infinitely many balls, so that removing one does not
% change the probabilities pi, or you can think about drawing
% “with replacement”: the chosen ball is put back into the urn
% before the next draw.)

% Let n1,…,nr be nonnegative integers that sum to n.
% What is the probability that we obtain
% exactly ni balls of color i, for each i=1,…,r?

% Find P(n1 balls of color 1, n2 balls of color 2,..., nr balls of color r)

% Observa que HEADS or TAILS es un caso paticular para r=2

clear all; close all; clc;
% Datos de la secuencia buscada
% tamaño de la secuencia (bolas tomadas)
n=7;
% tipos distintos de elementos tomados (colores)
r=3;
% probabilidad de cada tipo (color)
p1=1/3;
p2=1/3;
p3=1/3;
% items de cda tipo tomados en la secuencia conceta: 1 1 3 1 2 2 1
% siendo 1 = rojo, 2 = azul, 3 = verde
n1=4;
n2=2;
n3=1;

% Cálculo de la probabilidad de secuencia:
P=(factorial(n))/(factorial(n1)*factorial(n2)*factorial(n3))*(p1^n1)*(p2^n2)*(p3^n3)
