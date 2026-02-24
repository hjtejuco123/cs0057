t = imread('cameraman.tif');

% Periodic Noise: sin(x/3 + y/5)
% td = im2double(t); % Convert image to double precision for processing
% s = size(td);      % Get the size of the image
% 
% % Create a grid of x (columns) and y (rows) coordinates
% [x, y] = meshgrid(1:s(2), 1:s(1)); % Note: x corresponds to columns, y corresponds to rows
% 
% % 1) Periodic noise: sin(x/3 + y/5)
% p1 = sin(x/3 + y/5);
% t_p1 = td/2 + (p1+1)/4;  % Keep values in [0,1] roughly
% figure; imshow(t_p1); title('Periodic noise: sin(x/3 + y/5)');

%% Vertical Stripes (Depend on x Only)
% p2 = sin(2*pi*x/16);
% t_p2 = td*0.7 + 0.3*(p2+1)/2;
% figure; imshow(t_p2); title('Periodic noise: vertical stripes');

%% Horizontal Stripes (Depend on y Only)
% p3 = sin(2*pi*y/20);
% t_p3 = td*0.7 + 0.3*(p3+1)/2;
% figure; imshow(t_p3); title('Periodic noise: horizontal stripes');

%% Cross-Hatch (Sum of Two Sinusoids)
% p4 = 0.5*sin(2*pi*x/18) + 0.5*sin(2*pi*y/22);
% t_p4 = td*0.7 + 0.3*(p4+1)/2;
% figure; imshow(t_p4); title('Periodic noise: cross-hatch');

%%Diagonal Stripes Using cos, Different Frequency
% p5 = cos(2*pi*(x+y)/25);
% t_p5 = td*0.7 + 0.3*(p5+1)/2;
% figure; imshow(t_p5); title('Periodic noise: diagonal stripes');
