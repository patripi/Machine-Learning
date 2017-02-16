function [ellipse] = askEllipse()
% Pide la elipse al usuario
% en forma c1 ce a1 a2

ellipse = zeros(1,4);
disp('Introducir los siguientes parámetros de la elipse: ');
ellipse(1)=input('Centro, Coord X= ');
ellipse(2)=input('Centro, Coord Y= ');
ellipse(3)=input('Distancia eje x= ');
ellipse(4)=input('Distancia eje y= ');

end
