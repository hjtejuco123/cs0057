% Example 9: Advanced Scripting - Statistical Analysis
% Demonstrates scripting with multiple functions and data processing

clc;
clear;

disp('=== Statistical Analysis Tool ===');
n = input('How many data points? ');

% Input data
data = zeros(1, n);
fprintf('Enter %d numbers:\n', n);
for i = 1:n
    data(i) = input(sprintf('Value %d: ', i));
end

% Calculate statistics
stats = calculateStatistics(data);

% Display results
displayResults(stats, data);

% Ask for visualization
visualize = input('\nGenerate histogram? (1=Yes, 0=No): ');
if visualize
    createHistogram(data, stats);
end

%% Function Definitions

function stats = calculateStatistics(data)
    % Calculate various statistical measures
    stats.mean = mean(data);
    stats.median = median(data);
    stats.mode = mode(data);
    stats.std = std(data);
    stats.variance = var(data);
    stats.min = min(data);
    stats.max = max(data);
    stats.range = range(data);
    stats.sum = sum(data);
    stats.count = length(data);
end

function displayResults(stats, data)
    % Display statistical results
    fprintf('\n=== Statistical Summary ===\n');
    fprintf('Data: %s\n', mat2str(data, 3));
    fprintf('\nMeasures of Central Tendency:\n');
    fprintf('  Mean:   %.4f\n', stats.mean);
    fprintf('  Median: %.4f\n', stats.median);
    fprintf('  Mode:   %.4f\n', stats.mode);
    fprintf('\nMeasures of Dispersion:\n');
    fprintf('  Std Dev:  %.4f\n', stats.std);
    fprintf('  Variance: %.4f\n', stats.variance);
    fprintf('  Range:    %.4f\n', stats.range);
    fprintf('\nOther Statistics:\n');
    fprintf('  Min:   %.4f\n', stats.min);
    fprintf('  Max:   %.4f\n', stats.max);
    fprintf('  Sum:   %.4f\n', stats.sum);
    fprintf('  Count: %d\n', stats.count);
end

function createHistogram(data, stats)
    % Create histogram with statistical markers
    figure('Name', 'Data Distribution');
    histogram(data, 'FaceColor', [0.2 0.6 0.8]);
    hold on;
    xline(stats.mean, 'r-', 'LineWidth', 2, 'Label', 'Mean');
    xline(stats.median, 'g--', 'LineWidth', 2, 'Label', 'Median');
    xlabel('Value');
    ylabel('Frequency');
    title('Data Distribution with Statistics');
    grid on;
    hold off;
end
