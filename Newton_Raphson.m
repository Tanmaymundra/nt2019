clc;
clear all;
c = 0;
 
a = input('Enter the first interval: ');
b = input('Enter the second interval: ');
err = input('Enter the error: ');
 
f = input('Enter the polynomial function coefficients: ');
 
f1 = polyval(f, a);
f2 = polyval(f, b);
 
f_der = polyder(f); %First derivative 
 
fd1_1 = polyval(f_der, a);
 
Y0 = polyval(f, a);
 
if fd1_1 == 0
    disp('Value does not exist in the given limits.');
else
    while abs(Y0) > err
        
        if c == 0
            x_n = a;
            x_new = x_n - ((polyval(f, x_n)) / polyval(f_der, x_n));
        else
            x_n = x_new;
            x_new = x_n - ((polyval(f, x_n)) / polyval(f_der, x_n));
        end
        
        Y0 = polyval(f, x_new);
        c = c + 1;
    end
end
 
disp('The approximate value is: ');
disp(x_new)
