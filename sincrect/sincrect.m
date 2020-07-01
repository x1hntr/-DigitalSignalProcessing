clc
clear all
close all
A=1;
n=-10:.1:10;
cnfo1=sinc(n/4);
cnfo2=2*sinc(n/2);
subplot(2, 1, 1); plot(n, cnfo1); grid on;
ylabel('Amplitud'); xlabel('n'); legend('sinc(n/4)'); title('sinc')
subplot(2, 1, 2); plot(n, cnfo2); grid on;
ylabel('Amplitud'); xlabel('n'); legend('sinc(n)'); title('sinc')