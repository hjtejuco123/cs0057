% Example 10: Interactive Plotting and Visualization
% Demonstrates various plotting techniques with user input

clc;
clear;

disp('=== Interactive Plotting Tool ===');
disp('1. Sine and Cosine Waves');
disp('2. Custom Function Plot');
disp('3. Scatter Plot from Data');
disp('4. 3D Surface Plot');
plot_type = input('Select plot type (1-4): ');

switch plot_type
    case 1
        % Sine and Cosine waves
        freq = input('Enter frequency (Hz): ');
        duration = input('Enter duration (seconds): ');

        t = 0:0.001:duration;
        y1 = sin(2*pi*freq*t);
        y2 = cos(2*pi*freq*t);

        figure('Name', 'Sine and Cosine Waves');
        plot(t, y1, 'b-', 'LineWidth', 2);
        hold on;
        plot(t, y2, 'r--', 'LineWidth', 2);
        xlabel('Time (s)');
        ylabel('Amplitude');
        title(sprintf('Sine and Cosine Waves (f = %d Hz)', freq));
        legend('sin(2\pi ft)', 'cos(2\pi ft)');
        grid on;
        hold off;

    case 2
        % Custom function plot
        x_start = input('Enter x start: ');
        x_end = input('Enter x end: ');
        disp('Enter function type:');
        disp('1. Polynomial (x^n)');
        disp('2. Exponential (e^x)');
        disp('3. Logarithmic (ln(x))');
        func_type = input('Choice: ');

        x = linspace(x_start, x_end, 1000);

        switch func_type
            case 1
                n = input('Enter power n: ');
                y = x.^n;
                func_name = sprintf('y = x^{%d}', n);
            case 2
                y = exp(x);
                func_name = 'y = e^x';
            case 3
                y = log(x);
                func_name = 'y = ln(x)';
        end

        figure('Name', 'Custom Function Plot');
        plot(x, y, 'LineWidth', 2);
        xlabel('x');
        ylabel('y');
        title(['Plot of ' func_name]);
        grid on;

    case 3
        % Scatter plot
        n = input('Number of data points: ');
        fprintf('Enter X coordinates:\n');
        x_data = zeros(1, n);
        for i = 1:n
            x_data(i) = input(sprintf('x(%d): ', i));
        end

        fprintf('Enter Y coordinates:\n');
        y_data = zeros(1, n);
        for i = 1:n
            y_data(i) = input(sprintf('y(%d): ', i));
        end

        figure('Name', 'Scatter Plot');
        scatter(x_data, y_data, 100, 'filled');
        hold on;

        % Add trend line
        p = polyfit(x_data, y_data, 1);
        x_fit = linspace(min(x_data), max(x_data), 100);
        y_fit = polyval(p, x_fit);
        plot(x_fit, y_fit, 'r--', 'LineWidth', 2);

        xlabel('X');
        ylabel('Y');
        title('Scatter Plot with Trend Line');
        legend('Data Points', 'Linear Fit');
        grid on;
        hold off;

    case 4
        % 3D Surface plot
        grid_size = input('Enter grid size (e.g., 50): ');
        disp('Select surface:');
        disp('1. Peaks');
        disp('2. Sphere');
        disp('3. Saddle');
        surface_type = input('Choice: ');

        [X, Y] = meshgrid(linspace(-3, 3, grid_size));

        switch surface_type
            case 1
                Z = 3*(1-X).^2.*exp(-(X.^2) - (Y+1).^2) ...
                   - 10*(X/5 - X.^3 - Y.^5).*exp(-X.^2-Y.^2) ...
                   - 1/3*exp(-(X+1).^2 - Y.^2);
                surface_name = 'Peaks Function';
            case 2
                Z = sqrt(max(9 - X.^2 - Y.^2, 0));
                surface_name = 'Hemisphere';
            case 3
                Z = X.^2 - Y.^2;
                surface_name = 'Saddle Surface';
        end

        figure('Name', '3D Surface Plot');
        surf(X, Y, Z);
        colormap('jet');
        colorbar;
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        title(surface_name);
        shading interp;

    otherwise
        disp('Invalid choice!');
end
