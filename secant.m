clc;
clear all;
close all;
 
f = input('Enter the polynomial function: ');
i = input('Enter the number of iterations: ');
x0 = input('Enter the upper limit of interval: ');
x1 = input('Enter the lower limit of interval: ');
err = 0.0005;
y0 = polyval(f,x0);
y1 = polyval(f,x1);
 
xr = x1-((x1-x0)/(y1-y0)*y1);
yr = polyval(f,xr);
display(xr);
flag = 2;
 
while (abs(yr)) > err
    x0 = x1;
    x1 = xr;
    y0 = polyval(f,x0);
    y1 = polyval(f,x1);
    xr = x1-((x1-x0)/(y1-y0)*y1);
    yr = polyval(f,xr);
    display(x0);
    display(x1);
    display(y0);
    display(y1);
    display(xr);
    display(yr);
    flag = flag + 1;
    if (flag == i)
        break;
    end
 
end
if flag < i
    display(['The root x = ' num2str(xr)]);
else
    display('Roots does not exist.');
end
