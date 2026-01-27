% Add salt-and-pepper noise to the image
img = imread('cameraman.tif');
noisy_img = imnoise(img, 'salt & pepper', 0.05);

% Apply a median filter
filtered_img = medfilt2(noisy_img, [3, 3]);

% Display the results
figure;
subplot(1, 3, 1); imshow(img); title('Original Image');
subplot(1, 3, 2); imshow(noisy_img); title('Noisy Image');
subplot(1, 3, 3); imshow(filtered_img); title('Median Filtered Image');
