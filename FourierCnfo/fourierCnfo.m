
clc
clear all
close all
A=1;
n=-2:.1:2;
cnfo=(A/4).*sinc(n);
%Espectro de Amplitud
Am=abs(cnfo);
subplot(2, 1, 1); stem(n, Am); grid on; 
ylabel('Amplitud'); xlabel('n'); legend('A'); title('Espectro de Ampltud')
%Espectro de Fase
Fa=angle(cnfo);
subplot(2, 1, 2); stem(n, Fa); grid on; 
ylabel('Fase'); xlabel('n'); legend('Fase'); title('Espectro de Fase')