clear all;
clc;
close all;
pause on 
a=input('Primer intervalo f(t):\n');
b=input('Segundo intervalo f(t):\n');
t=a:0.1:b;
f=input('Funcion f(t):\n');
a1=input('Primer intervalo g(t):\n');
b1=input('Segundo intervalo g(t):\n');
t=a1:0.1:b1;
g=input('Funcion g(t):\n');
m=length(f);
n=length(g);
gi=fliplr(g);

k=60;
F=[f,zeros(1,(k*2)-m)];
F=F([end-k+1:end 1:end-k]);
G=[g,zeros(1,(k*2)-n)];
G=G([end-k+1:end 1:end-k]);
Gi=[gi,zeros(1,(k*2)-n)];
xn=-k:k-1;

Y=zeros(1,(k*2));
p=zeros(1,(k*2));


for i=1:(k*2)-n
    p=F.*Gi;
    Y(i+n-1)=sum(p);
    
    subplot(3,1,1); 
    plot(xn,F,'blue')
    ylabel('f(t)')
    title('Señal invariante en el tiempo')
    subplot(3,1,2);
    plot(xn,Gi,'g')
    ylabel('g(t)');
    title('Señal viajante');
    subplot(3,1,3);
    plot(xn,Y,'red')
    ylabel('y(t)');
    title('Convolucion');
    Gi=Gi([end 1: end-1]);
    pause(0.05)
end