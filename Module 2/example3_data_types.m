% Example 3: Working with Different Data Types
% Demonstrates strings, characters, and type conversion

clc;
clear;

disp('=== Data Types Demo ===');

% String input
name = input('Enter your name: ', 's');
age = input('Enter your age: ');
height = input('Enter your height in meters: ');

% Character array manipulation
initials = upper(name(1));
fprintf('\nYour initial: %s\n', initials);

% Type checking
fprintf('\nData Types:\n');
fprintf('Name is of type: %s\n', class(name));
fprintf('Age is of type: %s\n', class(age));
fprintf('Height is of type: %s\n', class(height));

% Type conversion
age_str = num2str(age);
fprintf('\nAge as string: "%s"\n', age_str);

% Logical operations
is_adult = age >= 18;
fprintf('Is adult (age >= 18): %d\n', is_adult);

% Complex number
complex_num = input('Enter real part of complex number: ') + ...
              input('Enter imaginary part: ') * 1i;
fprintf('Complex number: %s\n', num2str(complex_num));
fprintf('Magnitude: %.2f\n', abs(complex_num));
fprintf('Phase: %.2f radians\n', angle(complex_num));
