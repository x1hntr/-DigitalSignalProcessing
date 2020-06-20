clc
clear all;
close all;
%FRECUENCIA DE MUESTREO(Hz)
Fs = 100000;
%FRECUENCIA A DEJAR PASAR (Hz)
fp=19000;
%NUMERO DE BYTES DISPONIBLES 
k=50;
M=k-1;
%FRECUENCIA DIGITAL.
Wp=(fp/Fs)

ws1 = (Wp-0.04)*pi; 
wp = Wp*pi;
ws2 = (Wp+0.04)*pi; 
Aw = min((wp-ws1),(ws2-wp))
M = ceil(1.8*pi/Aw) + 1;
wc1 = (ws1+wp)/2; 
wc2 = (wp+ws2)/2;
hd = ideal_lp(wc2,M) - ideal_lp(wc1,M);
w_bla = (boxcar(M))';
h = hd .*w_bla;
[db,mag,pha,grd,w] = freqz_m(h,[1]); 
F=(w/pi)*Fs;
format short
h(1)
h(10)
h(47)
%Plot
subplot(2,2,1); plot(F,mag); title('Magnitud del filtro |H|'); grid
xlabel('Frecuencia (Hz)'); ylabel('|H|')

subplot(2,2,3); plot(F,db);title('Magnitud del filtro en Db'); grid
xlabel('Frecuencia (Hz)'); ylabel('Db')

subplot(2,2,2); plot(w/pi,mag); title('Magnitud del filtro |H|'); grid
xlabel('Frecuencia (\times\pi)'); ylabel('|H|')

subplot(2,2,4); plot(w/pi,db);title('Magnitud del filtro en Db'); grid
xlabel('Frecuencia (\times\pi)'); ylabel('Db')