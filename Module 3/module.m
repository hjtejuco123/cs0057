%imread

% Load the image file
% path -> "c:\matlab\images\lenna.jpg"
% img = imread('lenna.jpg');  %read the image from a file
% figure; % create a new figure window
% imshow(img);  %diplay the image
% title('lenna Image'); %Description of the image
% 
% img2 = imread('cat.png');  %read the image from a file
% figure; % create a new figure window
% imshow(img2);  %diplay the image
% title('cat Image'); %Description of the image
% 
% %display the one figure
% img3 = imread('cat.png');
% img4 = imread('lenna.jpg');
% figure;
% subplot(2, 1, 1); %2 rows, 1 column
% imshow(img3); 
% title('cat Image');
% 
% subplot(2, 1, 2); %2 rows, 1 column
% imshow(img4); 
% title('lenna Image');

% img5 = imread('cat.png');
% figure;
% imshow(img5);
% impixelinfo;

% img6 = rgb2gray(imread('cat2.png'));
% figure;
% imshow(img6);
% impixelinfo;
% zoom(2);

% size function
% img7 = rgb2gray(imread('cat2.png'));
% size(img7)
% 
% img8 = imread('cat.png');
% [rows, cols] = size(img8);
% totalpixel = rows*cols 
% 
% img7 = rgb2gray(imread('cat2.png'));
% [rows, cols] = size(img7)
% totalpixel2 = rows*cols



% img = imread("cat.png");
% % Convert the image to grayscale
% grayImg = rgb2gray(img);
% % Display the grayscale image
% figure;
% imshow(grayImg);
% title('Grayscale Cat Image');

gray_image = imread('cameraman.jpg');
figure;
imshow(gray_image);

rgb_img = cat(3,gray_image,gray_image,gray_image);

rgb_img(50:100, 50:100, 1) = 255;
rgb_img(50:100, 50:100, 2) = 0;
rgb_img(50:100, 50:100, 3) = 0;

figure;
imshow(rgb_img);
title('Modified RGB Image');
