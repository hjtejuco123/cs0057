% Data Processing Script
% This script demonstrates a complete data analysis workflow

%% Clear Environment
clc;
fprintf('=== Data Processing Workflow ===\n\n');

%% Step 1: Generate Sample Data
fprintf('Step 1: Generating sample data...\n');
n = 100;
time = linspace(0, 10, n);
signal = 5 * sin(2*pi*0.5*time) + 2 * cos(2*pi*1.5*time);
noise = randn(1, n) * 0.5;
noisy_signal = signal + noise;

fprintf('Generated %d data points\n', n);

%% Step 2: Basic Statistics
fprintf('\nStep 2: Calculating statistics...\n');
mean_val = mean(noisy_signal);
median_val = median(noisy_signal);
std_val = std(noisy_signal);
min_val = min(noisy_signal);
max_val = max(noisy_signal);

fprintf('Mean: %.3f\n', mean_val);
fprintf('Median: %.3f\n', median_val);
fprintf('Std Dev: %.3f\n', std_val);
fprintf('Min: %.3f\n', min_val);
fprintf('Max: %.3f\n', max_val);
fprintf('Range: %.3f\n', max_val - min_val);

%% Step 3: Data Filtering
fprintf('\nStep 3: Filtering data...\n');
window_size = 5;
filtered_signal = movmean(noisy_signal, window_size);
fprintf('Applied moving average filter (window size: %d)\n', window_size);

%% Step 4: Finding Peaks and Valleys
fprintf('\nStep 4: Finding peaks...\n');
[peaks, peak_locs] = findpeaks(filtered_signal, time);
fprintf('Found %d peaks\n', length(peaks));

%% Step 5: Data Segmentation
fprintf('\nStep 5: Segmenting data...\n');
threshold = mean_val;
above_threshold = noisy_signal > threshold;
below_threshold = noisy_signal <= threshold;

percent_above = sum(above_threshold) / n * 100;
fprintf('Points above mean: %.1f%%\n', percent_above);
fprintf('Points below mean: %.1f%%\n', 100 - percent_above);

%% Step 6: Create Data Summary Table
fprintf('\nStep 6: Creating summary table...\n');
segment_names = {'First Quarter'; 'Second Quarter'; 'Third Quarter'; 'Fourth Quarter'};
segment_size = floor(n/4);

segment_means = zeros(4, 1);
segment_stds = zeros(4, 1);

for i = 1:4
    start_idx = (i-1)*segment_size + 1;
    if i == 4
        end_idx = n;
    else
        end_idx = i*segment_size;
    end

    segment_data = noisy_signal(start_idx:end_idx);
    segment_means(i) = mean(segment_data);
    segment_stds(i) = std(segment_data);
end

summary_table = table(segment_names, segment_means, segment_stds, ...
    'VariableNames', {'Segment', 'Mean', 'StdDev'});
disp(summary_table);

%% Step 7: Correlation Analysis
fprintf('\nStep 7: Correlation analysis...\n');
correlation = corrcoef(signal, noisy_signal);
fprintf('Correlation between original and noisy signal: %.3f\n', correlation(1,2));

%% Step 8: Data Export Preparation
fprintf('\nStep 8: Preparing export data...\n');
export_data = [time', signal', noisy_signal', filtered_signal'];
export_header = {'Time', 'Original Signal', 'Noisy Signal', 'Filtered Signal'};

fprintf('Prepared %d rows and %d columns for export\n', ...
    size(export_data, 1), size(export_data, 2));

%% Step 9: Anomaly Detection
fprintf('\nStep 9: Detecting anomalies...\n');
z_scores = abs((noisy_signal - mean_val) / std_val);
anomalies = z_scores > 2.5;
num_anomalies = sum(anomalies);

fprintf('Detected %d anomalies (z-score > 2.5)\n', num_anomalies);

%% Step 10: Summary Report
fprintf('\n=== Processing Summary ===\n');
fprintf('Total data points processed: %d\n', n);
fprintf('Time range: %.2f to %.2f\n', time(1), time(end));
fprintf('Signal-to-noise ratio: %.2f dB\n', 10*log10(var(signal)/var(noise)));
fprintf('Number of peaks detected: %d\n', length(peaks));
fprintf('Anomalies detected: %d (%.1f%%)\n', num_anomalies, num_anomalies/n*100);
fprintf('\nProcessing complete!\n');

%% Helper Functions
function snr_db = calculateSNR(signal, noise)
    % Calculate Signal-to-Noise Ratio in dB
    signal_power = mean(signal.^2);
    noise_power = mean(noise.^2);
    snr_db = 10 * log10(signal_power / noise_power);
end
