format short
clear all
clc

x = [2 5 7 8 9];
y = [12 45 66 34 11];

n = size(x,2);

DD = zeros(n,n);

DD(:,1) = y;
X = input('enter value at which you want result');

for j=2:n
for i=1: n-j+1

num = DD(i+1,j-1) - DD(i,j-1);
den = x(i+j-1) - x(i);

DD(i,j) = num./den;

end
end

for i=1:n-1
p(i) = prod(X - x(:,1:n)).*DD(i,i+1);
end

out = y(1)+ sum(p);

disp(out);



