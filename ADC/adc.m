
t=0:0.1:10; 
y=abs(10*sin(t));

u=10; 
n=3; 
q=u/(2^n-1); 
a=fix(y/q);

yd=dec2bin(a,n);


yq=a*q;

subplot(3,2,1)
hold on
title ('Orignal Signal')
axis([0 11 0 11])
plot(t,y,'r')

subplot(3,2,2)
hold on
title('signl in discrete form')
axis([0 11 0 11])
stem(t,y,'r')

subplot(3,2,3)
hold on
title('sampled signal')
axis([0 11 0 11])
stem(t,a)

subplot(3,2,4)
hold on
title('discrete signal from sampled signal')
axis([0 11 0 11])
stem(t,yq,'black')

subplot(3,2,5:6)
hold on
title('signal from sampled signal')
axis([0 11 0 11])
plot(t,yq,'black')

hold off