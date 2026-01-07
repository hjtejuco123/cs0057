% Example 7: While Loop - Number Guessing Game
% Demonstrates while loops and break/continue

clc;
clear;

disp('=== Number Guessing Game ===');
disp('I am thinking of a number between 1 and 100');

target = randi([1, 100]);
max_attempts = input('How many attempts do you want? ');
attempts = 0;
guessed = false;

while attempts < max_attempts && ~guessed
    guess = input('Enter your guess: ');
    attempts = attempts + 1;

    if guess < 1 || guess > 100
        disp('Please enter a number between 1 and 100!');
        attempts = attempts - 1; % Don't count invalid guesses
        continue;
    end

    if guess == target
        fprintf('Congratulations! You guessed it in %d attempts!\n', attempts);
        guessed = true;
        break;
    elseif guess < target
        fprintf('Too low! Attempts remaining: %d\n', max_attempts - attempts);
    else
        fprintf('Too high! Attempts remaining: %d\n', max_attempts - attempts);
    end
end

if ~guessed
    fprintf('Game Over! The number was %d\n', target);
end

% Score calculation
if guessed
    score = 100 - (attempts - 1) * 10;
    fprintf('Your score: %d points\n', max(score, 10));
end
