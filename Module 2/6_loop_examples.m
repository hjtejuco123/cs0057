% Loop Examples in MATLAB
% This script demonstrates for loops, while loops, and nested loops

%% Simple for Loop
fprintf('Simple for loop (1 to 5):\n');
for i = 1:5
    fprintf('%d ', i);
end
fprintf('\n');

%% for Loop with Step Size
fprintf('\nfor loop with step size of 2:\n');
for i = 0:2:10
    fprintf('%d ', i);
end
fprintf('\n');

%% for Loop with Decreasing Values
fprintf('\nCountdown from 10 to 1:\n');
for i = 10:-1:1
    fprintf('%d ', i);
end
fprintf('\n');

%% Looping Through Array
numbers = [5, 10, 15, 20, 25];
fprintf('\nLooping through array:\n');
for num = numbers
    fprintf('Number: %d, Square: %d\n', num, num^2);
end

%% for Loop with Array Indexing
fruits = {'Apple', 'Banana', 'Cherry', 'Date'};
fprintf('\nFruits list:\n');
for i = 1:length(fruits)
    fprintf('%d. %s\n', i, fruits{i});
end

%% while Loop
fprintf('\nwhile loop example:\n');
count = 1;
while count <= 5
    fprintf('Count: %d\n', count);
    count = count + 1;
end

%% while Loop with Condition
fprintf('\nDoubling until greater than 100:\n');
value = 1;
while value <= 100
    fprintf('%d ', value);
    value = value * 2;
end
fprintf('\n');

%% Nested Loops - Multiplication Table
fprintf('\nMultiplication table (5x5):\n');
for i = 1:5
    for j = 1:5
        fprintf('%4d', i * j);
    end
    fprintf('\n');
end

%% Nested Loops - Matrix Pattern
fprintf('\nMatrix pattern:\n');
n = 5;
for i = 1:n
    for j = 1:n
        if i == j
            fprintf('* ');
        else
            fprintf('- ');
        end
    end
    fprintf('\n');
end

%% break Statement
fprintf('\nUsing break to exit loop:\n');
for i = 1:10
    if i == 6
        fprintf('Breaking at i = %d\n', i);
        break;
    end
    fprintf('%d ', i);
end
fprintf('\n');

%% continue Statement
fprintf('\nUsing continue to skip even numbers:\n');
for i = 1:10
    if mod(i, 2) == 0
        continue;
    end
    fprintf('%d ', i);
end
fprintf('\n');

%% Summing Array Elements
data = [12, 45, 23, 67, 89, 34];
total = 0;
for value = data
    total = total + value;
end
fprintf('\nSum of array elements: %d\n', total);
fprintf('Verification using sum(): %d\n', sum(data));

%% Finding Maximum in Array
numbers = [34, 12, 56, 23, 89, 45];
max_val = numbers(1);
for num = numbers
    if num > max_val
        max_val = num;
    end
end
fprintf('\nMaximum value found: %d\n', max_val);
fprintf('Verification using max(): %d\n', max(numbers));

%% Factorial Calculation
n = 6;
factorial = 1;
for i = 1:n
    factorial = factorial * i;
end
fprintf('\nFactorial of %d = %d\n', n, factorial);

%% Fibonacci Sequence
fprintf('\nFirst 10 Fibonacci numbers:\n');
fib = zeros(1, 10);
fib(1) = 1;
fib(2) = 1;
for i = 3:10
    fib(i) = fib(i-1) + fib(i-2);
end
disp(fib);
