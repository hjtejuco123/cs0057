% Matrix Operations in MATLAB
% This script demonstrates matrix creation, manipulation, and arithmetic

%% Creating Matrices
A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];
disp('Matrix A:');
disp(A);
disp('Matrix B:');
disp(B);

%% Special Matrix Creation
zeros_matrix = zeros(3, 3);
ones_matrix = ones(2, 4);
identity_matrix = eye(3);
random_matrix = rand(2, 3);

fprintf('\nZeros Matrix (3x3):\n');
disp(zeros_matrix);
fprintf('Ones Matrix (2x4):\n');
disp(ones_matrix);
fprintf('Identity Matrix (3x3):\n');
disp(identity_matrix);
fprintf('Random Matrix (2x3):\n');
disp(random_matrix);

%% Matrix Arithmetic
addition = A + B;
subtraction = A - B;
element_wise_mult = A .* B;
matrix_mult = A * B;
transpose_A = A';

fprintf('\nMatrix Addition (A + B):\n');
disp(addition);
fprintf('Matrix Subtraction (A - B):\n');
disp(subtraction);
fprintf('Element-wise Multiplication (A .* B):\n');
disp(element_wise_mult);
fprintf('Matrix Multiplication (A * B):\n');
disp(matrix_mult);
fprintf('Transpose of A:\n');
disp(transpose_A);

%% Matrix Indexing
element = A(2, 3);
row = A(1, :);
column = A(:, 2);
submatrix = A(1:2, 2:3);

fprintf('\nElement at (2,3): %d\n', element);
fprintf('First row: ');
disp(row);
fprintf('Second column: ');
disp(column);
fprintf('Submatrix A(1:2, 2:3):\n');
disp(submatrix);

%% Matrix Properties
[rows, cols] = size(A);
matrix_size = size(A);
num_elements = numel(A);
determinant = det(A);

fprintf('\nMatrix Size: %d x %d\n', rows, cols);
fprintf('Number of elements: %d\n', num_elements);
fprintf('Determinant: %.2f\n', determinant);
