format short
clear all
clc

x = [2 5 7 8 9];
y = [12 45 66 34 11];

n = size(x,2);
X = input('value at which you want output');

for i=1:n
x1 = x;
x1(i) = [];
l(i) = prod(X - x1)./prod(x(i) - x1);
end

out = sum(l.*y);

disp(out);
