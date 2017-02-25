% si A matriz CUADRADA, AX = B -->  X = A^-1*B
% es decir: (la inversa de A) x B
% [producto matricial, no elto a elto]

A=[1 2 4;2 4 6; 4 6 8]
B=[1 1 -1]'

Sol=inv(A)*B
