% This script calculates speed and position, adds a 5% error
% and saves in an ascii file named measures_mua.txt
%

a=9.81;
x0=50;
v0=0;

t=linspace(0,10,5)';
x=x0+v0*t+0.5*a*t.^2
v=v0+a*t

err=rand(5,1);
x=x.*(0.95+0.1*err);
v=v.*(0.95+0.1*err);

A=[x v]
save -ascii measures_mua.txt A;
