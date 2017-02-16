% Ejercicio 3.4.1
clear; close all; clc;
		  % Generate data
		  x=linspace(0,6*pi,100);
		  %[TO COMPLETE #1]
      y=x.*sin(x);
		  z=exp(x/10)-1;

		  % Create figure with visualization
		  hold on
		  %[TO COMPLETE #2]
		  % en negro plot3(x,y,0*z,'kx')
      % en azul y con la línea en doble grosor:
      plot3(x,y,0*z,'linewidth',2,'b-');

		  % Add axis labels
		  xlabel('x');
		  ylabel('x*sin(x)');
      %[TO COMPLETE #3]
      zlabel('e^x/10-1');
      %[TO COMPLETE #4]
		  hold off
		  %[TO COMPLETE #5]
      grid on
