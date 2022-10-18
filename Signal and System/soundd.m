fs= 8000;
t=0:1/fs:0.75;              % panjang not 1?4 detik
a0=sin(2*pi*233*t);         % nada a
b0=sin(2*pi*247*t);         % nada b
c=sin(2*pi*262*t);          % nada c
d=sin(2*pi*294*t);          % nada d
e=sin(2*pi*330*t);          % nada e
f=sin(2*pi*349*t);          % nada f
g=sin(2*pi*392*t);          % nada g
a=sin(2*pi*440*t);          % nada a
b=sin(2*pi*494*t);          % nada b
c1=sin(2*pi*523*t);         % nada C
nol=zeros(size(t));         % spasi kosong
faded = [c,c,c,e,a,a,a,g,e,e,e,e,b0,b0,b0,a0]

sound(faded,fs);            % mainkan pada fs 8kHz
wavrite(faded,'faded.wav');     % simpan wav