% Data Types Demonstration in MATLAB
% This script demonstrates different data types in MATLAB

%% Numeric Data Types
integer_val = int32(42);
double_val = 3.14159;
single_val = single(2.71828);
complex_val = 3 + 4i;

fprintf('Integer (int32): %d\n', integer_val);
fprintf('Double: %.5f\n', double_val);
fprintf('Single: %.5f\n', single_val);
fprintf('Complex: %.2f + %.2fi\n', real(complex_val), imag(complex_val));

%% Character and String
char_array = 'Hello MATLAB';
string_val = "MATLAB Programming";

fprintf('\nCharacter array: %s\n', char_array);
fprintf('String: %s\n', string_val);
fprintf('Length of char array: %d\n', length(char_array));

%% Logical (Boolean)
logical_true = true;
logical_false = false;
comparison = 5 > 3;

fprintf('\nLogical true: %d\n', logical_true);
fprintf('Logical false: %d\n', logical_false);
fprintf('5 > 3 = %d\n', comparison);

%% Arrays
numeric_array = [10, 20, 30, 40, 50];
char_array_multi = ['abc'; 'def'; 'ghi'];

fprintf('\nNumeric Array: ');
disp(numeric_array);
fprintf('Character Array (multi-row):\n');
disp(char_array_multi);

%% Cell Arrays
cell_array = {42, 'text', [1 2 3], true};

fprintf('\nCell Array Contents:\n');
fprintf('Cell 1 (numeric): %d\n', cell_array{1});
fprintf('Cell 2 (char): %s\n', cell_array{2});
fprintf('Cell 3 (array): ');
disp(cell_array{3});
fprintf('Cell 4 (logical): %d\n', cell_array{4});

%% Type Checking
fprintf('\nType Checking:\n');
fprintf('Is integer_val numeric? %d\n', isnumeric(integer_val));
fprintf('Is char_array a character? %d\n', ischar(char_array));
fprintf('Is string_val a string? %d\n', isstring(string_val));
fprintf('Is cell_array a cell? %d\n', iscell(cell_array));
fprintf('Is logical_true logical? %d\n', islogical(logical_true));

%% Type Conversion
str_to_num = str2double('123.45');
num_to_str = num2str(987.65);
double_to_int = int16(3.8);

fprintf('\nType Conversion:\n');
fprintf('String to number: %.2f\n', str_to_num);
fprintf('Number to string: %s\n', num_to_str);
fprintf('Double to int16: %d\n', double_to_int);
