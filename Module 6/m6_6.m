% Read the cameraman image
t = imread('cameraman.tif');

% Initialize a 3D array to store 10 noisy copies
s = size(t);
stack10 = zeros(s(1), s(2), 10);

% Add Gaussian noise to each copy and display one noisy image
for i = 1:10
    stack10(:,:,i) = imnoise(t, 'gaussian', 0, 0.005);
end

% Display the first noisy image (before averaging)
figure;
imshow(stack10(:, :, 1), []);
title('Noisy Image 1 (Before Averaging)');

% Display another noisy image for comparison
figure;
imshow(stack10(:, :, 2), []);
title('Noisy Image 2 (Before Averaging)');

% Compute the average of 10 noisy images
avg10 = mean(stack10, 3);

% Display the averaged image (after averaging)
figure;
imshow(avg10, []);
title('Average of 10 Noisy Images (After Averaging)');


stack50 = zeros(s(1), s(2), 50);
for i = 1:50
    stack50(:,:,i) = imnoise(t,'gaussian',0,0.005);
end
avg50 = mean(stack50,3);
figure; imshow(avg50,[]); title('Average of 50 noisy images');

% 
% 
a3 = fspecial('average');
f3 = filter2(a3, t);
figure; imshow(uint8(f3)); title('Gaussian cleaned by 3x3 averaging');
% 
% 
a5 = fspecial('average',[5,5]);
f5 = filter2(a5, t);
figure; imshow(uint8(f5)); title('Gaussian cleaned by 5x5 averaging');

% 
% 
w7 = wiener2(t,[7,7]);
figure; imshow(w7); title('Gaussian cleaned by Wiener 7x7');
