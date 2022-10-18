% created by : Aditya Ervansyah

clc
clear all

fs=1000;                    % frekuensi sampling 1kHz
t=0:1/fs:10;                % untuk 1 detik
A=1;                        % amplitudo 1
f=1;                        % frekuensi 1Hz
phase=0;                    % sudut fase 0
x=A*sin(2*pi*f*t + phase);
plot(t,x)
xlabel('t')
ylabel('sin(t)')
title('Sinyal Sinus')