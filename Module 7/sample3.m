clear,clc,close all
i=imread('coins2.png');
%figure, imshow(i);
subplot(2,3,1), imshow(i);
b1 = rgb2gray(i);
subplot(2,3,2), imshow(b1);
e1=edge(b1,'canny');

subplot(2,3,3), imshow(e1);
