%created by aditya ervansyah


clc
clear all

fs = 8000;                  % frekuensi sampling pada 8KHz
t = 0:1/fs:1;               % panjang tiap nada 1 detik
v = .5*cos(2*pi*440*t);     % nada A
subplot(3,1,1);
plot(t,v);                  % gambarkan sinyal v
axis([0 .01 -1 1])          % atur skala
sound(v,fs);                % bunyikan pada fs 8kHz!
title('.5cos((2pi)440*t)')
xlabel('Time (sec)')
ylabel('v(t)')


v1 = .5+v;                  % apa yang terjadi bila ditambah komponen DC
subplot(3,1,2);
plot(t,v1);
title('komponen DC')
axis([0 .01 -1 1])
sound(v1,fs); 

v2 = v+.5*cos(2*pi*880*t);  % ditambahkan nada lain
sound(v2,fs);               % bunyikan pada fs 8kHz
subplot(3,1,3);
plot(t,v2);
title('2 nada')
axis([0 .01 -1 1])
xlabel('Time (sec)')
ylabel('v2(t)')
