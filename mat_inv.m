clc;
clear all;
close all;
m=input('Enter a 3x3 matrix');
a=m(1,1);
b=m(1,2);
c=m(1,3);
d=m(2,1);
e=m(2,2);
f=m(2,3);
g=m(3,1);
h=m(3,2);
i=m(3,3);
detm=det(m)
a2= e*i-h*f;
b2= -(d*i-g*f);
c2= d*h-g*e;
d2= -(b*i-h*c);
e2= a*i-g*c;
f2= -(a*h-g*b);
g2= b*f-e*c;
h2= -(a*f-d*c);
i2= a*e-d*b;
Z=[a2 d2 g2;b2 e2 h2;c2 f2 i2];
detZ=det(Z);
invM =(Z/detm)
invm1=inv(m)
A=input('Enter a 3x1 column matrix');
X=(invM*A)
