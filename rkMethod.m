
format short
clear all
clc

f=@(x,y) -y+2*cos(x);

xo =0;
yo =1;
h=0.2;

xn=2;

x(1)=xo;
y(1)=yo;

n= (xn-xo)/h;


for i=1:n
    k1 = f(x(i),y(i));
    k2 = f(x(i)+h/2, y(i)+k1/2);
    k3 = f(x(i)+h/2, y(i)+k2/2);
    k4 = f(x(i)+h, y(i)+k3);

    y(i+1) = y(i) + (h/6)*(k1 + 2*(k2+k3)+k4);
    x(i+1) =x(i) +h;
end

disp(x);
disp(y);
