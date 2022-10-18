%created by : aditya ervansyah
clc 
clear all
k=0;
n1=-5;
n2=5;
n =[n1:n2];
x =[(n-k) == 0];             % akan bernilai 1 saat(n-k)=0, selain itu bernilai 0
stem(n,x);
title('Sinyal Cuplik Satuan')
xlabel('n')
ylabel('x[n]')