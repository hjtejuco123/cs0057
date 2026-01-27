
% Read the image
img = imread('cameraman.tif');

% Convert to double for filtering
img_d = double(img);

% Laplacian high-pass filter
hp_filter = [0 -1 0; 
            -1  4 -1; 
             0 -1 0];

% Apply the filter
edge_img = imfilter(img_d, hp_filter, 'replicate');

% Normalize for display
edge_disp = mat2gray(edge_img);

% Display results
figure;
subplot(1,2,1);
imshow(img);
title('Original Image');

subplot(1,2,2);
imshow(edge_disp);
title('Edge Image (Laplacian)');
