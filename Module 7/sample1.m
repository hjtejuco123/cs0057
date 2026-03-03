img = imread('cameraman.jpg');

rb = edge(img,'roberts');
% detects the diagonal sharp of the image
pr = edge(img, 'prewitt');
% approximates the gradient image (horizontal and vertical)
sb = edge(img, 'sobel',0.2);
% combines smoothing and differentiation

%display

subplot(2,2,1);
imshow(img);
title('Input Image');

subplot(2,2,2);
imshow(rb);
title('Roberts Operator');

subplot(2,2,3);
imshow(pr);
title('Prewitt Operator');

subplot(2,2,4);
imshow(sb);
title('Sobel');
