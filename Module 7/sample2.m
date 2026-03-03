a = imread('colors.jpg');
subplot(2,3,1), imshow(a);

b = rgb2gray(a);
subplot(2,3,2), imshow(b);

%average filter
h = ones(6,6)/36;
c = imfilter(b,h);
subplot(2,3,3), imshow(c);

h = [1 0 -1; 2 0 -2; 1 0 -1];
d = imfilter(b,h);
subplot(2,3,4), imshow(d);

% e = edge(b,'canny');
% subplot (2,3,5),imshow(e)

p = edge(b,'prewitt');
subplot (2,3,5),imshow(e)

x = bwmorph(c,'dilate',2);
subplot(2,3,6),imshow(x);
