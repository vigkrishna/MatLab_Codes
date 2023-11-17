format short
clear all
clc

a = [1 2 3; 4 5 6; 7 8 9];
b = [3 ;4; 8];

aug = [a b];

n = size(a,1);

x = zeros(1,n);

for i=1:n
 for j=i+1:n

 key = (aug(j,i)./aug(i,i));
 aug(j,:) = aug(j,:) - (key.*aug(i,:));

 end
end

for i=n:-1:1
hg = sum(aug(i,i+1:end-1).*x(i+1:end));
x(i) = (aug(i,end)-hg)./aug(i,i);
end

disp(x);
