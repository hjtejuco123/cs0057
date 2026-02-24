t = imread('cameraman.tif');
% 
% t_g1 = imnoise(t, 'gaussian');
% figure; imshow(t_g1); title('Default Gaussian Noise');

% t_g2 = imnoise(t, 'gaussian', 0, 0.001);
% figure; imshow(t_g2); title('Gaussian Noise (Mean=0, Var=0.001)');

% t_g3 = imnoise(t, 'gaussian', 0, 0.01);
% figure; imshow(t_g3); title('Gaussian Noise (Mean=0, Var=0.01)');

% t_g4 = imnoise(t, 'gaussian', 0.02, 0.005);
% figure; imshow(t_g4); title('Gaussian Noise (Mean=0.02, Var=0.005)');

vars = [0.0005 0.002 0.005 0.01 0.02];
for k = 1:numel(vars)
    figure; 
    imshow(imnoise(t,'gaussian',0,vars(k)));
    title(sprintf('Gaussian var = %.4f', vars(k)));
end
