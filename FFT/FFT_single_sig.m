clear all
clc

%created by aditya ervansyah

% pembangun sinyal sinus
Fs = 100;
t = (1:100)/Fs;
f = 5;
vm = 5;
V = vm*sin(2*pi*f*t);

%convert ke fungsi FFT
S=fft(V,512);
w=(0:255)/256*(Fs/2);

%plotting
subplot(2,1,1);
plot(t,V)
xlabel('time')

subplot(2,1,2);
plot(w,abs(S(1:256)))
xlabel('Frequency')