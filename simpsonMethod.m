format short 
clear all
clc

f=@(x) 2*x;

a=1;
b=3;

n= input('number of sub-intervals\n');

if rem(n,2) ==1
    fprintf('input even number of intervals\n');
    n=input(' here');
end

h = (b-a)/n;

i=1:1:n-1;
s=f(a+i.*h);

se = sum(s(2:2:n-1));
so = sum(s(1:2:n-1));

out =(h/3).*(f(a)+ f(b)+ 2*se + 4*so);
disp(out);