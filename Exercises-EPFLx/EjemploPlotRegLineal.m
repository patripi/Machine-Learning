% Exercise 3.3.3 Show Linear Regresion graph

clear; close all; clc;

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
%[TO COMPLETE #1]
figure(1);

hold on;

% Adds elements on the figure
%[TO COMPLETE #2]
plot(x,y,'rx')
plot(x_eval,y_eval,'g','LineWidth',2)

% Figure styling
xlim([-1,11]);
%[TO COMPLETE #3]
ylim([-1,11]);

xlabel('temps [s]');
%[TO COMPLETE #4]
ylabel('position [m]');
%[TO COMPLETE #5]
title('Position vs Speed');
hold off;
