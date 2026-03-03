rgbImage = imread('mypeppers.tif');
subplot(1,2,1);
imshow(rgbImage);
grayImage = rgb2gray(rgbImage);
subplot(1,2,2);
edgeImage = edge(grayImage, 'Canny');
imshow(edgeImage, []);
