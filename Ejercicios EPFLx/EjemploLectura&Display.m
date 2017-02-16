%% Test 3.1, version 3
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
