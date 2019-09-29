clc;
clear all;
close all;
 
p = input('Enter the Polynomial Function: ');
err = input('Enter the Error Value: ');
xl = input('Enter upper limit: ');
yl = polyval(p,xl);
xu = input('Enter lower limit: ');
yu = polyval(p,xu);
 
n = (log(xu-xl)-log(err))/log(2);
n = round(n);
 
if (yl * yu) < 0
    
else
    display('The guess is incorrect! Enter new limits.');
    xl = input('Enter the new upper limit: ') ;
    xu = input('Enter the new lower limit: ');
end
 
for i = 1:n
    xr = (xu + xl)/2;
    yr = polyval(p,xr);
    if yu * yr < 0
        xl = xr;
    else
        xu = xr;
    end
end
 
approx = xr;
display(approx);
