% Example 5: Control Flow - Grade Calculator
% Demonstrates if-elseif-else statements and switch

clc;
clear;

disp('=== Grade Calculator ===');
score = input('Enter your exam score (0-100): ');

% Validate input
if score < 0 || score > 100
    disp('Invalid score! Please enter a value between 0 and 100.');
else
    % Determine letter grade using if-elseif-else
    if score >= 90
        letter_grade = 'A';
        remark = 'Excellent!';
    elseif score >= 80
        letter_grade = 'B';
        remark = 'Very Good!';
    elseif score >= 70
        letter_grade = 'C';
        remark = 'Good!';
    elseif score >= 60
        letter_grade = 'D';
        remark = 'Satisfactory';
    else
        letter_grade = 'F';
        remark = 'Needs Improvement';
    end

    fprintf('\nScore: %.2f\n', score);
    fprintf('Letter Grade: %s\n', letter_grade);
    fprintf('Remark: %s\n', remark);

    % Use switch for additional feedback
    switch letter_grade
        case 'A'
            disp('You are in the top tier!');
        case {'B', 'C'}
            disp('You passed with a decent grade.');
        case 'D'
            disp('You passed, but consider studying more.');
        case 'F'
            disp('You need to retake this exam.');
    end
end
