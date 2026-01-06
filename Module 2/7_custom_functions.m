% Custom Functions in MATLAB
% This script demonstrates creating and using functions

%% Main Script
fprintf('=== Custom Functions Demo ===\n\n');

%% Using Simple Function
radius = 5;
area = calculateCircleArea(radius);
fprintf('Circle with radius %.2f has area: %.2f\n', radius, area);

%% Using Function with Multiple Outputs
[area_rect, perimeter] = rectangleProperties(8, 5);
fprintf('\nRectangle (8x5):\n');
fprintf('Area: %.2f\n', area_rect);
fprintf('Perimeter: %.2f\n', perimeter);

%% Using Function with Default Arguments
volume1 = calculateVolume(3, 4, 5);
volume2 = calculateVolume(3);
fprintf('\nVolume of box (3x4x5): %.2f\n', volume1);
fprintf('Volume of cube (3x3x3): %.2f\n', volume2);

%% Using Function with Variable Arguments
avg1 = calculateAverage(10, 20, 30);
avg2 = calculateAverage(5, 10, 15, 20, 25);
fprintf('\nAverage of [10,20,30]: %.2f\n', avg1);
fprintf('Average of [5,10,15,20,25]: %.2f\n', avg2);

%% Using Recursive Function
n = 5;
fact = factorial_recursive(n);
fprintf('\nFactorial of %d (recursive): %d\n', n, fact);

%% Using Anonymous Functions
square = @(x) x.^2;
cube = @(x) x.^3;
quadratic = @(x, a, b, c) a*x.^2 + b*x + c;

fprintf('\nAnonymous functions:\n');
fprintf('Square of 5: %d\n', square(5));
fprintf('Cube of 3: %d\n', cube(3));
fprintf('Quadratic (x=2, a=1, b=-3, c=2): %d\n', quadratic(2, 1, -3, 2));

%% Vectorized Operations
numbers = [1, 2, 3, 4, 5];
squared = square(numbers);
fprintf('\nOriginal array: ');
disp(numbers);
fprintf('Squared array: ');
disp(squared);

%% Using Function with Logical Return
temp = 85;
if isHot(temp)
    fprintf('\n%.1f°F is hot!\n', temp);
else
    fprintf('\n%.1f°F is not hot.\n', temp);
end

%% Nested Function Example
result = outerFunction(10);
fprintf('\nOuter function result: %d\n', result);

fprintf('\n=== End of Demo ===\n');

%% Function Definitions

function area = calculateCircleArea(r)
    % Calculates the area of a circle given radius
    area = pi * r^2;
end

function [area, perimeter] = rectangleProperties(length, width)
    % Calculates area and perimeter of a rectangle
    area = length * width;
    perimeter = 2 * (length + width);
end

function vol = calculateVolume(length, width, height)
    % Calculates volume of a box (cube if only one argument)
    if nargin == 1
        width = length;
        height = length;
    end
    vol = length * width * height;
end

function avg = calculateAverage(varargin)
    % Calculates average of variable number of arguments
    total = 0;
    for i = 1:nargin
        total = total + varargin{i};
    end
    avg = total / nargin;
end

function result = factorial_recursive(n)
    % Calculates factorial using recursion
    if n <= 1
        result = 1;
    else
        result = n * factorial_recursive(n - 1);
    end
end

function hot = isHot(temperature)
    % Returns true if temperature is considered hot (>80°F)
    hot = temperature > 80;
end

function result = outerFunction(x)
    % Demonstrates nested function
    y = 5;
    result = innerFunction(x);

    function output = innerFunction(input)
        % Nested function has access to outer function variables
        output = input + y;
    end
end
