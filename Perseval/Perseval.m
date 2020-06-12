clc
clear all
close all
x = [5,4,3,2,1,0,0,1,2,3,4,5];
N = length(x);
X=fft(x);
powerx=sum(x.*x);
disp('PERSEVAL A');
disp(powerx);
power_X=sum(abs(X.*X))/N;
disp('PERSEVAL B');
disp(power_X);

