clc
A = [2, -1, 1; 3, 3, 9; 3, 3, 5];
B = [1; 2; 3]; % Replace this with your actual 3x1 matrix B

n = size(A, 1);
L = eye(n);
U = zeros(n, n);

for k = 1:n
    L(k + 1:n, k) = A(k + 1:n, k) / A(k, k);
    for l = k + 1:n
        A(l, :) = A(l, :) - L(l, k) * A(k, :);
    end
end

U = A;

% Solve for Y in LY = B
Y = zeros(n, 1);
for i = 1:n
    Y(i) = B(i) - L(i, 1:i-1) * Y(1:i-1);
end

% Solve for X in UX = Y
X = zeros(n, 1);
for i = n:-1:1
    X(i) = (Y(i) - U(i, i+1:end) * X(i+1:end)) / U(i, i);
end

% Display the solution vector X
disp('Solution vector X:');
disp(X);