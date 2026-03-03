I = imread('circuit.tif');
imshow(I)
BW1 = edge(I,'Canny');
BW2 = edge(I,'Prewitt');
subplot (2,3,1), imshow(I)
subplot (2,3,2), imshow(BW1)
subplot (2,3,3), imshow(BW2)
