%apply average filtering 

img = imread('cameraman.tif');
avg_filter = fspecial("average",[3,3]);

smoothed_img = filter2(avg_filter,img); 

figure;
subplot(1,2,1);imshow(img); title('Original Image');
subplot(1,2,2);imshow(uint8(smoothed_img)); title ('Smoothed Image');



