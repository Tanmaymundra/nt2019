clc;
clear all;
 
%Write a program to estimate the root of a polynomial by false position method
p=input('Enter polynomial coefficients: ');
c=0;
err=input('Enter accepted error: ');
while c==0
a=input('Enter lower limit of interval: ');
b=input('Enter upper limit of interval: ');
y(1)=polyval(p,a);
y(2)=polyval(p,b);
e=abs(b-a);
if (y(1)*y(2))>0
    display('Invalid interval. No roots here.');
    continue;
else
    while e>err
    x= b-(((b-a)/(y(2)-y(1)))*y(2));
    y(3)=polyval(p,x);
    if y(3)*y(1)<0
            b=x;
    else if y(3)*y(2)<0
            a=x;
        end
    end
    y(1)=polyval(p,a);
    y(2)=polyval(p,b);
    e=abs(y(3));
    
    display(x);
    end
    display('Approximate root: ');
    display(x);
    c=1;
end
end
