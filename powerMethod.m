format short
clear all
clc

x=[2 -1 0; -1 2 -1; 0 -1 2];
y=[1;1;1];

err=100000;
max_err=10^-2;
ev = Inf;

while all(err>max_err)
    xold = x;
    Y = x.*y;
    eign_value = max(abs(Y));
    eign_vector = Y./eign_value;
    ev = eign_value;
    x= eign_vector;
    err = abs(sum(xold-x));
end
disp(ev);
disp(x);