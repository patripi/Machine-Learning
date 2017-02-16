function [myAxes] = modifyPlotAxes ()
% Pedimos los parámtros de los limites de los ejes

myAxes = zeros(1,4);
disp('Introducir los siguientes límites de los ejes: ');
myAxes(1)=input('Min X= ');
myAxes(2)=input('Max X= ');
myAxes(3)=input('Min Y= ');
myAxes(4)=input('Max Y= ');

end
