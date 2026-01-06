% Structures and Arrays in MATLAB
% This script demonstrates structures, cell arrays, and advanced indexing

%% Creating Structures
student.name = 'John Doe';
student.age = 20;
student.grades = [85, 90, 88, 92];
student.major = 'Computer Science';

fprintf('Student Structure:\n');
fprintf('Name: %s\n', student.name);
fprintf('Age: %d\n', student.age);
fprintf('Major: %s\n', student.major);
fprintf('Grades: ');
disp(student.grades);

%% Structure Arrays
students(1).name = 'Alice';
students(1).age = 21;
students(1).gpa = 3.8;

students(2).name = 'Bob';
students(2).age = 22;
students(2).gpa = 3.5;

students(3).name = 'Charlie';
students(3).age = 20;
students(3).gpa = 3.9;

fprintf('\nStudent Array:\n');
for i = 1:length(students)
    fprintf('Student %d: %s, Age: %d, GPA: %.2f\n', ...
        i, students(i).name, students(i).age, students(i).gpa);
end

%% Nested Structures
course.name = 'MATLAB Programming';
course.code = 'CS101';
course.instructor.name = 'Dr. Smith';
course.instructor.office = 'Room 302';
course.students = students;

fprintf('\nCourse Information:\n');
fprintf('Course: %s (%s)\n', course.name, course.code);
fprintf('Instructor: %s\n', course.instructor.name);
fprintf('Office: %s\n', course.instructor.office);
fprintf('Number of students: %d\n', length(course.students));

%% Cell Arrays with Mixed Data
mixed_data = {
    'Temperature', [20.5, 21.3, 19.8, 22.1];
    'Humidity', [45, 50, 48, 52];
    'Pressure', [1013, 1012, 1014, 1013];
    'Date', '2024-01-15'
};

fprintf('\nMixed Data Cell Array:\n');
for i = 1:size(mixed_data, 1)
    fprintf('%s: ', mixed_data{i, 1});
    if isnumeric(mixed_data{i, 2})
        disp(mixed_data{i, 2});
    else
        fprintf('%s\n', mixed_data{i, 2});
    end
end

%% Advanced Indexing
matrix = magic(5);
fprintf('\nMagic Matrix (5x5):\n');
disp(matrix);

fprintf('Diagonal elements: ');
disp(diag(matrix)');

fprintf('Last row: ');
disp(matrix(end, :));

fprintf('Last column: ');
disp(matrix(:, end)');

fprintf('Elements greater than 15:\n');
selected = matrix(matrix > 15);
disp(selected');

%% Structure Field Operations
field_names = fieldnames(student);
fprintf('\nFields in student structure:\n');
for i = 1:length(field_names)
    fprintf('- %s\n', field_names{i});
end

fprintf('\nAverage grade: %.2f\n', mean(student.grades));
