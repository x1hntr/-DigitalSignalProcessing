clear all;
clc;
close all;
global y
global y0
global Dy0
global D2y0
y = input('Ingrese la ecuacion:\n');
y0= input('Ingrese el coeficiente inicial  1:\n');
Dy0 = input('Ingrese el coeficiente inicial 2:\n');
D2y0 = input('Ingrese el coeficiente inicial 3:\n');
sol = dsolve(y,y0,Dy0,D2y0,'x');
r = simplify(sol);
display(r)