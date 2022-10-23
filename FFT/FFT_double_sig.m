clear all
clc

%created by aditya ervansyah

% pembangun sinyal sinus
Fs = 100;
t = (1:100)/Fs;
f1 = 1;
f2 = 3;
vm1 = 2/pi;
vm2 = 2/3/pi;
V1 = vm1*sin(2*pi*f1*t);
V2 = vm2*sin(2*pi*f2*t);
Vgab = V1+V2;

%convert ke fungsi FFT
S=fft(Vgab,512);
w=(0:255)/256*(Fs/2);

%plotting
subplot(2,1,1);
plot(t,Vgab)
xlabel('time')

subplot(2,1,2);
plot(w,abs(S(1:256)))
xlabel('Frequency')