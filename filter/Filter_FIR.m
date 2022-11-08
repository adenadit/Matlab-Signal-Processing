% Program P3_1
clc
clear all

num = input('Numerator coefficient vector = ');
den = input('Denominator coefficient vector = ');
[A, B] = eqtflength(num, den);
[z,p,k] = tf2zp(A, B);
sos = zp2sos(z,p,k)

