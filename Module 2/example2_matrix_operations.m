% Example 2: Matrix Operations with User Input
% Demonstrates arrays and matrix operations

clc;
clear;

disp('=== Matrix Operations ===');
rows = input('Enter number of rows: ');
cols = input('Enter number of columns: ');

% Create matrices with user input
disp('Enter elements for Matrix A:');
A = zeros(rows, cols);
for i = 1:rows
    for j = 1:cols
        A(i,j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

disp('Enter elements for Matrix B:');
B = zeros(rows, cols);
for i = 1:rows
    for j = 1:cols
        B(i,j) = input(sprintf('B(%d,%d) = ', i, j));
    end
end

% Perform operations
fprintf('\nMatrix A:\n');
disp(A);
fprintf('Matrix B:\n');
disp(B);
fprintf('A + B =\n');
disp(A + B);
fprintf('A - B =\n');
disp(A - B);
fprintf('Element-wise multiplication (A .* B) =\n');
disp(A .* B);
fprintf('Transpose of A:\n');
disp(A');
