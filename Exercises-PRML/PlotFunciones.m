clc; clear all; close all;
figure(1);
x=[0:0.1:10];
y=x.^2;
w=x.^3;
z=x.^6;

g=x.*log(x); % COMO PLOT x*Ln(x) ????
h=x.^6;

plot(x,x.^2,'r-');
hold on;
plot(x,1./x.^2,'b-');
%plot(x,g,'b-');
%plot(x,x.*y,'b-');
%plot(x,6./x,'b-');
plot(x,6.*x,'k-');
%hold on;
%plot(x,z,'g-');
%hold on;
%plot(x,g,'k-');
%hold on;
%plot(x,h,'m-');
%hold on;

saveas(gca,'PlotFunciones','pdf');


%{
a=input('Pulsa enter para continuar...');
clc; clear all; close all;
figure(1);
x=[-2:0.1:2];
y=x.^3;
plot(x,y);
saveas(gca,'PlotFunciones','pdf');

a=input('Pulsa enter para continuar...');
clc; clear all; close all;
figure(1);
x=[-2:0.1:2];
y=x.^4;
plot(x,y);
saveas(gca,'PlotFunciones','pdf');
%}
