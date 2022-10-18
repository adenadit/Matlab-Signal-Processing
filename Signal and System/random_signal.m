%created by Aditya Ervansyah

clc
clear all

n1=-10;
n2=10;
n =[n1:n2];
p=length(n);
x=rand(1,p);
stem(n,x);
title('Sinyal random')
xlabel('n')
ylabel('x[n]')