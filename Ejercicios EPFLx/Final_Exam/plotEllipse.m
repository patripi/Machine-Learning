function plotEllipse(ellipse, Npoints)
% Dibuja la elipse con los puntos de precisión
% y los parámetros de lipse c1 c2 a1 a2 indicados por el usuario
% Fórmula: x=c1+a1*sin(t), y=c2+a2*cos(t)

c1 = ellipse(1);
c2 = ellipse(2);
a1 = ellipse(3);
a2 = ellipse(4);

t=linspace(0,2*pi, Npoints);

plot(c1+a1*sin(t), c2+a2*cos(t));
hold on;

end
