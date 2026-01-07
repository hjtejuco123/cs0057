% Example 4: Cell Arrays and Structures
% Demonstrates advanced data structures

clc;
clear;

disp('=== Student Database ===');
num_students = input('How many students to enter? ');

% Create structure array
students = struct('name', {}, 'age', {}, 'grades', {}, 'gpa', {});

% Input data for each student
for i = 1:num_students
    fprintf('\n--- Student %d ---\n', i);
    students(i).name = input('Name: ', 's');
    students(i).age = input('Age: ');

    num_grades = input('How many grades? ');
    students(i).grades = zeros(1, num_grades);
    for j = 1:num_grades
        students(i).grades(j) = input(sprintf('Grade %d: ', j));
    end

    students(i).gpa = mean(students(i).grades);
end

% Display results
fprintf('\n=== Student Records ===\n');
for i = 1:num_students
    fprintf('\nStudent %d:\n', i);
    fprintf('  Name: %s\n', students(i).name);
    fprintf('  Age: %d\n', students(i).age);
    fprintf('  Grades: %s\n', mat2str(students(i).grades));
    fprintf('  GPA: %.2f\n', students(i).gpa);
end

% Cell array example
fprintf('\n=== Cell Array of Names ===\n');
names_cell = {students.name};
disp(names_cell);
