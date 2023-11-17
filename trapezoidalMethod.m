format short
clear all
clc

f=@(x)  1./(1+x);
a=1;
b=2;
n=20;
h=(b-a)/n;

k=1:1:n-1;
s=f(a+k*h);

out= (h/2)*(f(a)+f(b)+2*sum(s));

disp(out);
