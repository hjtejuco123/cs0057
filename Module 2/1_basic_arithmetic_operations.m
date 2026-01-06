% Basic Arithmetic Operations in MATLAB
% This script demonstrates basic operations and syntax

%% Variable Assignment
x = 10;
y = 5;
disp('Variables created: x = 10, y = 5');

%% Basic Arithmetic
addition = x + y;
subtraction = x - y;
multiplication = x * y;
division = x / y;
power = x ^ 2;
modulo = mod(x, y);

fprintf('Addition: %d + %d = %d\n', x, y, addition);
fprintf('Subtraction: %d - %d = %d\n', x, y, subtraction);
fprintf('Multiplication: %d * %d = %d\n', x, y, multiplication);
fprintf('Division: %d / %d = %.2f\n', x, y, division);
fprintf('Power: %d ^ 2 = %d\n', x, power);
fprintf('Modulo: mod(%d, %d) = %d\n', x, y, modulo);

%% Built-in Functions
sqrt_val = sqrt(x);
abs_val = abs(-15);
round_val = round(3.7);
ceil_val = ceil(3.2);
floor_val = floor(3.8);

fprintf('\nBuilt-in Functions:\n');
fprintf('sqrt(%d) = %.2f\n', x, sqrt_val);
fprintf('abs(-15) = %d\n', abs_val);
fprintf('round(3.7) = %d\n', round_val);
fprintf('ceil(3.2) = %d\n', ceil_val);
fprintf('floor(3.8) = %d\n', floor_val);

%% Special Values
inf_val = Inf;
nan_val = NaN;
pi_val = pi;
e_val = exp(1);

fprintf('\nSpecial Values:\n');
fprintf('Infinity: %f\n', inf_val);
fprintf('Not a Number: %f\n', nan_val);
fprintf('Pi: %.4f\n', pi_val);
fprintf('Euler number: %.4f\n', e_val);
