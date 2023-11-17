format short
clear all
clc

a = [1 2 3; 4 5 6; 7 8 9];
b = [3 ;4; 8];


n = size(a,1);
x = zeros(1,n);

err= Inf;
max_err = 10^-4;

while all(err>max_err)
x_old = x;

for i=1:n
sum =0;

for j=1:i-1
sum =sum + a(i,j).*x(j);
end
for j=i+1:n
sum = sum + a(i,j).*x_old(j);
end

x(i) = (1./a(i,i)).*(b(i) - sum);

end
err = abs(x_old -x);

end
disp(x);
