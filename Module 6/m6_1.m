t = imread('cameraman.tif');

% t_sp1 = imnoise(t, 'salt & pepper', 0.05);
% figure; imshow(t_sp1); title('Light Salt & Pepper Noise (5%)');

% t_sp2 = imnoise(t, 'salt & pepper', 0.20);
% figure; imshow(t_sp2); title('Moderate Salt & Pepper Noise (20%)');

% t_sp3 = imnoise(t, 'salt & pepper', 0.40);
% figure; imshow(t_sp3); title('Heavy Salt & Pepper Noise (40%)');

% dens = [0.02 0.10 0.30 0.50];
% for k = 1:numel(dens)
%     figure; 
%     imshow(imnoise(t,'salt & pepper',dens(k)));
%     title(sprintf('Salt & Pepper density = %.2f', dens(k)));
% end

% roi = t; 
% roi(60:180, 60:180) = imnoise(roi(60:180, 60:180), 'salt & pepper', 0.25);
% figure; imshow(roi); title('Salt & Pepper on ROI only');
