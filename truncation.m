clc;
clear all;
close all;
 
n = input('Enter order of expression: ');
x = input('Enter value of x: ');
for i = 1:n
    a(i) = x^(i)/factorial(i);
end
approx = 1 + sum(a);
disp('Approximate Value: ');
disp(approx);
actual = exp(x);
disp('Actual Value: ');
disp(actual);
abserror = actual - approx;
disp('Absolute Error: ');
disp(abserror);
