% Exercise 3.3.4 Show Linear Regresion graph

clear; close all; clc;

c=input('enter interval in vector format [a,b]: ');
a=c(1);
b=c(2);
n=input('enter number of points to plot: ');
x=linspace(a,b,n)';

f = 3*x.^2-2*sin(x);
g = sqrt(abs(x-3));
h = e.^(2*x.^2);

figure(1);
hold on;

plot(x,f,'k-x',x,g,'b-*',x,h,'r-o')

xlim([a,b]);
ylim([-2,10]);

xlabel('x-axis');
ylabel('y-axis');

title('3-function Plot');
legend ('f(x)=3*x.^2-2*sin(x)','g(x)=sqrt(abs(x-3))','h(x)=e.^(2*x.^2)');
hold off;

saveas(gca,'fonctions','pdf');
