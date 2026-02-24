t = imread('cameraman.tif');
t_sp = imnoise(t, 'salt & pepper', 0.20); % Add salt-and-pepper noise
figure;
imshow(t_sp);
title('Salt-and-Pepper Noise (Density = 20%)');
% 
% % Convert t_sp to double precision for filtering
% t_sp_double = im2double(t_sp);
% 
% % 1) Low-pass (3x3 averaging)
% a3 = fspecial('average'); % Create a 3x3 averaging kernel
% c1 = filter2(a3, t_sp_double); % Apply the filter
% figure; imshow(c1); title('3x3 averaging (low-pass)');


% a7 = fspecial('average',[7,7]);
% c2 = filter2(a7, t_sp);
% figure; imshow(uint8(c2)); title('7x7 averaging (more blur)');

% 
% c3 = medfilt2(t_sp);
% figure; imshow(c3); title('Median filter (default 3x3)');


% c4 = medfilt2(t_sp,[5,5]);
% figure; imshow(c4); title('Median filter 5x5');
% 

domain = [0 1 0; 1 1 1; 0 1 0];
c5 = ordfilt2(t_sp, 3, domain);
figure; imshow(c5); title('Rank-order (ordfilt2) with cross domain');
