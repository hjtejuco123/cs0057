t = imread('cameraman.tif');

% 
% t_s1 = imnoise(t, 'speckle');
% figure; imshow(t_s1); title('Default Speckle Noise');
% 
% t_s2 = imnoise(t, 'speckle', 0.01);
% figure; imshow(t_s2); title('Speckle Noise (Variance=0.01)');
% 
% t_s3 = imnoise(t, 'speckle', 0.05);
% figure; imshow(t_s3); title('Stronger Speckle Noise (Variance=0.05)');
% 
% vars = [0.002 0.005 0.01 0.02 0.05];
% for k = 1:numel(vars)
%     figure; 
%     imshow(imnoise(t,'speckle',vars(k)));
%     title(sprintf('Speckle var = %.3f', vars(k)));
% end
% 
% td = im2double(t);
% td_s = imnoise(td, 'speckle', 0.02);
% figure; imshow(td_s); title('Speckle on im2double image');
