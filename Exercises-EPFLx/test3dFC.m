% Este script es de prueba

x=[-3:0.4:3]; y=x;
#closeplot
#figure(),fi=[0:pi/20:6*pi];
#plot3(cos(fi),sin(fi),fi,'r')
[X,Y]=meshgrid(x,y);
Z=test3d(X,Y);
figure(), mesh(Z)
