clc
clear all
close all
B=[0.5,2,1.5; 1,3,0];
A=[1,1,0.9;1,-1,0.8];
[b1,a1] = cas2dir(1, B, A);

b1 = removetrailzeros(b1);
[C1,B1,A1] = dir2par(b1,a1);

[b0,B2,A2] = dir2cas([1,2,1],[1,0.5,0.5,-0.4]);
[b2,a2] = cas2dir(b0,[3,-0.5,2;B2],[1,0.4,0.4;A2]);

b2 = removetrailzeros(b2);
a2 = removetrailzeros(a2);

[C2,B2,A2] = dir2par(b2,a2);
[b,a] = par2dir(C1+C2, [B1;B2], [A1;A2]);
real(b)
real(a)