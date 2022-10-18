

clc
clear all

k=0;
n1=-5;
n2=5;
n =[n1:n2];
x =[(n-k) >= 0];
stem(n,x);
title('Sinyal Langkah Satuan')
xlabel('n')
ylabel('x[n]')