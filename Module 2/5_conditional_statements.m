% Conditional Statements in MATLAB
% This script demonstrates if-else, switch-case, and logical operations

%% Simple if Statement
score = 85;
fprintf('Score: %d\n', score);

if score >= 90
    fprintf('Grade: A\n');
end

%% if-else Statement
temperature = 25;
fprintf('\nTemperature: %d°C\n', temperature);

if temperature > 30
    fprintf('Status: Hot\n');
else
    fprintf('Status: Comfortable\n');
end

%% if-elseif-else Statement
marks = 78;
fprintf('\nMarks: %d\n', marks);

if marks >= 90
    grade = 'A';
elseif marks >= 80
    grade = 'B';
elseif marks >= 70
    grade = 'C';
elseif marks >= 60
    grade = 'D';
else
    grade = 'F';
end
fprintf('Grade: %s\n', grade);

%% Nested if Statements
age = 25;
has_license = true;

fprintf('\nAge: %d, Has License: %d\n', age, has_license);

if age >= 18
    if has_license
        fprintf('You can drive a car.\n');
    else
        fprintf('You need a license to drive.\n');
    end
else
    fprintf('You are too young to drive.\n');
end

%% Logical Operators
x = 10;
y = 20;
fprintf('\nx = %d, y = %d\n', x, y);

if x > 5 && y < 25
    fprintf('Both conditions are true (AND)\n');
end

if x < 5 || y > 15
    fprintf('At least one condition is true (OR)\n');
end

if ~(x > 15)
    fprintf('x is NOT greater than 15 (NOT)\n');
end

%% Switch-Case Statement
day = 3;
fprintf('\nDay number: %d\n', day);

switch day
    case 1
        day_name = 'Monday';
    case 2
        day_name = 'Tuesday';
    case 3
        day_name = 'Wednesday';
    case 4
        day_name = 'Thursday';
    case 5
        day_name = 'Friday';
    case {6, 7}
        day_name = 'Weekend';
    otherwise
        day_name = 'Invalid day';
end
fprintf('Day name: %s\n', day_name);

%% Switch with String
operation = 'multiply';
a = 15;
b = 3;

fprintf('\nOperation: %s on %d and %d\n', operation, a, b);

switch operation
    case 'add'
        result = a + b;
    case 'subtract'
        result = a - b;
    case 'multiply'
        result = a * b;
    case 'divide'
        result = a / b;
    otherwise
        result = NaN;
        fprintf('Unknown operation\n');
end

if ~isnan(result)
    fprintf('Result: %.2f\n', result);
end

%% Comparison with Tolerance
value1 = 0.1 + 0.2;
value2 = 0.3;
tolerance = 1e-10;

fprintf('\nComparing floating point numbers:\n');
fprintf('value1: %.17f\n', value1);
fprintf('value2: %.17f\n', value2);

if abs(value1 - value2) < tolerance
    fprintf('Values are approximately equal\n');
else
    fprintf('Values are different\n');
end
