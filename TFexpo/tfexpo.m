clc
clear all 
close all
A=1;
alfa=1;
f=0:.1:5;
xf1=abs(A./(j*2*pi*f+alfa));
xf2=angle(A./(j*2*pi*f+alfa));
subplot(2, 1, 1); stem(f, xf1); 
title('Espectro de Magnitud');
xlabel('f'); ylabel('Magnitud'); 
legend('Amplitud'); grid on; 
subplot(2, 1, 2); stem(f, xf2); 
title('Espectro de Fase');
xlabel('f'); ylabel('Fase'); 
legend('Fase'); grid on; 