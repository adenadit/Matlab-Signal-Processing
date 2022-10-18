%created by aditya Ervansyah

clc
clear all

a=0.5
n1=-5;
n2=5;
n =[n1:n2]
x=a.^n
stem(n,x);
title('Sinyal Eksponensial')
xlabel('n')
ylabel('x[n]')