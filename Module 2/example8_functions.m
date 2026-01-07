% Example 8: Custom Functions - Shape Area Calculator
% Demonstrates function creation and calling

clc;
clear;

disp('=== Shape Area Calculator ===');
disp('1. Circle');
disp('2. Rectangle');
disp('3. Triangle');
choice = input('Select a shape (1-3): ');

switch choice
    case 1
        radius = input('Enter radius: ');
        area = calculateCircleArea(radius);
        fprintf('Area of circle: %.2f\n', area);

    case 2
        length = input('Enter length: ');
        width = input('Enter width: ');
        area = calculateRectangleArea(length, width);
        fprintf('Area of rectangle: %.2f\n', area);

    case 3
        base = input('Enter base: ');
        height = input('Enter height: ');
        area = calculateTriangleArea(base, height);
        fprintf('Area of triangle: %.2f\n', area);

    otherwise
        disp('Invalid choice!');
end

% Function definitions (must be at the end in script)
function area = calculateCircleArea(radius)
    area = pi * radius^2;
end

function area = calculateRectangleArea(length, width)
    area = length * width;
end

function area = calculateTriangleArea(base, height)
    area = 0.5 * base * height;
end
