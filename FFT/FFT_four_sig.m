clear all
clc

%created by aditya ervansyah

% pembangun sinyal sinus
Fs = 100;
t = (1:400)/Fs;
f1 = 1;
f2 = 3;
f3 = 5;
f4 = 7;

vm1 = 2/pi;
vm2 = 2/3/pi;
vm3 = 2/5/pi;
vm4 = 2/7/pi;

V1 = vm1*sin(2*pi*f1*t);
V2 = vm2*sin(2*pi*f2*t);
V3 = vm3*sin(2*pi*f3*t);
V4 = vm4*sin(2*pi*f4*t);

Vgab = V1+V2+V3+V4;

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