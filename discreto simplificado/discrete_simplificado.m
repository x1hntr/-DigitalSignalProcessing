%% Tono x[n] = sen(2*pi*fc*n]; fc = 880; n=0 ... N-1 (s. finita) digital.
clear all 
close all
fc = 500; % Freq real Hz, 3000 (agudo, alta freq), 500 Hz (grave, baja freq)
Tc = 1/fc; %Periodo real
%audio Hz->muestras/seg. puente entre la freq digital y la freq real en Hz (regla de tres)
%Fnyquist = Fs/2 = fmax = 22050 Hz (por definición)
fmax = 22050;% hasta donde yo escucho
Fs= 2*22050;% freq de muestreo mínima para no tener aliasing. Fs>=2*fmax
Ts = 1/Fs; % fórmula de las diapostivas
M = ceil(Fs/fc); %numero de muestras por periodo. Ir a las diapostivas (regla de tres freq digital vs freq real)
Np = fc;%1500;%num de periodos. Arbitrario.
N = M*Np; %tam de la senial
n = 0:(N-1); %n=0 ... N-1. soporte
t = n*Ts;%fórmula (regla de tres) linspace(0, Np*Tc, M*Np); %n = 0:1/Fs:Np*Tc;
x = sin(2*pi*fc*t);% p  or qué no uso n? porque quiero escuchar  

sound(x, Fs) %comunicación con la tarjeta de sonido. Fs del habla = 8000 Hz. Fs de música = 44100, 48000
plot(t(1:M*3+1), x(1:M*3+1))%grafico 3 periodos
xlabel('t [s]'), ylabel('Amplitud'), title('Tono')

%fc= 43600 Hz --> grave (baja freq) porque se parece a 500 Hz--fc que escucho es 500 Hz.**
%41100 Hz --> agudo (alta freq) porque se parece a 3000 Hz
%44600 Hz --> grave (baja freq) porque se parece a 500 Hz
%47100 Hz --> agudo (alta freq) porque se parece a 3000 Hz
%87700 Hz --> grave (baja freq) porque se parece a 500 Hz