% Example 1: Basic Calculator with User Input
% Demonstrates basic operations and syntax

clc;
clear;

disp('=== Basic Calculator ===');
num1 = input('Enter first number: ');
num2 = input('Enter second number: ');

% Basic arithmetic operations
addition = num1 + num2;
subtraction = num1 - num2;
multiplication = num1 * num2;
division = num1 / num2;
power = num1 ^ num2;
modulus = mod(num1, num2);

% Display results
fprintf('\nResults:\n');
fprintf('%.2f + %.2f = %.2f\n', num1, num2, addition);
fprintf('%.2f - %.2f = %.2f\n', num1, num2, subtraction);
fprintf('%.2f * %.2f = %.2f\n', num1, num2, multiplication);
fprintf('%.2f / %.2f = %.2f\n', num1, num2, division);
fprintf('%.2f ^ %.2f = %.2f\n', num1, num2, power);
fprintf('mod(%.2f, %.2f) = %.2f\n', num1, num2, modulus);
