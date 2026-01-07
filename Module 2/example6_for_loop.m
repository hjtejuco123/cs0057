% Example 6: For Loop - Multiplication Table
% Demonstrates for loops and nested loops

clc;
clear;

disp('=== Multiplication Table Generator ===');
number = input('Enter a number: ');
range = input('Enter range (e.g., 10 for 1-10): ');

fprintf('\nMultiplication table for %d:\n', number);
fprintf('========================\n');

for i = 1:range
    result = number * i;
    fprintf('%d x %d = %d\n', number, i, result);
end

% Nested loop example - Full multiplication table
disp(' ');
create_full = input('Create full multiplication table? (1=Yes, 0=No): ');

if create_full
    fprintf('\nFull Multiplication Table (%dx%d):\n', range, range);
    fprintf('     ');
    for i = 1:range
        fprintf('%4d', i);
    end
    fprintf('\n');
    fprintf('    +');
    for i = 1:range
        fprintf('----');
    end
    fprintf('\n');

    for i = 1:range
        fprintf('%3d |', i);
        for j = 1:range
            fprintf('%4d', i*j);
        end
        fprintf('\n');
    end
end
