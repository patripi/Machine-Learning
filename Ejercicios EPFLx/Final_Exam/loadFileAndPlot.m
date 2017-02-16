function loadFileAndPlot(Npoints)
% Carga de fichero y pinta todas elipses que encuentra
% una por vector 1x4 encontrado

AllEllipses = load('cheeseEllipse.txt')

%loop para tratar todas
for ellipse = AllEllipses'
  plotEllipse(ellipse,Npoints);
end

end
