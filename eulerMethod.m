format short
clear all
clc

f=@(x,y) -y+2*cos(x);

xo = 0;
yo = 1;

h=0.2;

xn=2;

x(1)=xo;
y(1)=yo;

n= (xn-xo)/h;

for i=1:n
    x(i+1) =x(i)+h;
    y(i+1)=y(i) + h*f(x(i),y(i));
    y(i+1)=y(i) + (h/2)*(f(x(i),y(i)) + f(x(i+1), y(i+1)));
end
disp(x);
disp(y);