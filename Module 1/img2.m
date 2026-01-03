% Convert an image to binary
img = imread('Module1/lena.png');
binary_img = imbinarize(rgb2gray(img));

% Display the original and binary images
figure;
subplot(1, 2, 1), imshow(img), title('Original Image');
subplot(1, 2, 2), imshow(binary_img), title('Binary Image');