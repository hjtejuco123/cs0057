
% Read the image
img = imread('cameraman.tif');

% Create a Gaussian filter
gaussian_filter = fspecial('gaussian', [5, 5], 2);

% Apply the filter
smoothed_img = imfilter(double(img), gaussian_filter);

% Display the results
figure;
subplot(1, 2, 1); imshow(img); title('Original Image');
subplot(1, 2, 2); imshow(uint8(smoothed_img)); title('Gaussian Smoothed Image')
