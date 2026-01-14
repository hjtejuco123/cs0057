# Module 3: Images and Matlab

## TABLE OF CONTENTS:
1. [imread - Read image from file](#function-1-imread)
2. [imshow - Display image](#function-2-imshow)
3. [figure - Create new figure window](#function-3-figure)
4. [impixelinfo - Display pixel information](#function-4-impixelinfo)
5. [rgb2gray - Convert RGB to grayscale](#function-5-rgb2gray)
6. [size - Get image dimensions](#function-6-size)
7. [imfinfo - Get image file information](#function-7-imfinfo)
8. [double - Convert to double precision](#function-8-double)
9. [uint8 - Convert to 8-bit unsigned integer](#function-9-uint8)
10. [impixel - Get pixel values at coordinates](#function-10-impixel)
11. [ind2gray - Convert indexed image to grayscale](#function-11-ind2gray)
12. [gray2ind - Convert grayscale to indexed](#function-12-gray2ind)
13. [rgb2ind - Convert RGB to indexed](#function-13-rgb2ind)
14. [gray2rgb - Convert grayscale to RGB](#function-14-gray2rgb)
15. [ind2rgb - Convert indexed to RGB](#function-15-ind2rgb)
16. [imresize - Resize image](#function-16-imresize)

---

## FUNCTION 1: imread
### DEFINITION:
`imread` reads an image from a graphics file and returns the image data as a matrix. It supports various image formats including PNG, JPEG, TIFF, BMP, and GIF.

### SYNTAX:
```matlab
img = imread('filename')
```

### EXAMPLES:

**Example 1: Basic image reading**
```matlab
>> img = imread('cat.png');
% Reads the image file 'cat.png' from the current directory
```

**Example 2: Reading from full path**
```matlab
>> img = imread('C:\matlab\images\photo.jpg');
% Reads image from a specific directory path
```

**Example 3: Reading specific frame from multi-frame image**
```matlab
>> img = imread('animation.gif', 2);
% Reads the second frame from a GIF file
```

**Example 4: Reading with format specification**
```matlab
>> img = imread('myimage', 'png');
% Explicitly specifies the format when extension is missing
```

**Example 5: Reading and displaying in one operation**
```matlab
>> img = imread('landscape.jpg');
>> imshow(img);
% Reads and immediately displays the image
```

---

## FUNCTION 2: imshow
### DEFINITION:
`imshow` displays an image in a figure window. It automatically scales the display based on the data type of the image (`uint8` values: 0–255, `double` values: 0–1).

### SYNTAX:
```matlab
imshow(img)
imshow(img, [])
imshow(img, [min max])
```

### EXAMPLES:

**Example 1: Display `uint8` image**
```matlab
>> img = imread('cat.png');
>> imshow(img);
% Displays the image with default scaling (0–255 for uint8)
```

**Example 2: Display `double` image with automatic scaling**
```matlab
>> img_double = double(img);
>> imshow(img_double, []);
% [] causes automatic scaling to min and max values
```

---

## FUNCTION 3: figure
### DEFINITION:
`figure` creates a new figure window for displaying graphics objects such as images, plots, or charts. It provides a container for visualization.

### SYNTAX:
```matlab
figure
figure(n)
```

### EXAMPLES:

**Example 1: Create new figure window**
```matlab
>> figure;
>> imshow(img);
% Creates a new figure window and displays an image
```


---

## FUNCTION 4: impixelinfo
### DEFINITION:
`impixelinfo` displays the pixel coordinates and intensity values at the bottom of the figure window. As you move the cursor over the image, the values update in real-time.

### SYNTAX:
```matlab
impixelinfo
```

### EXAMPLES:

**Example 1: Display pixel information for grayscale image**
```matlab
>> gcat = rgb2gray(imread('cat.png'));
>> figure; imshow(gcat); impixelinfo;
% Shows (column, row) and intensity value as cursor moves
```


---

## FUNCTION 5: rgb2gray
### DEFINITION:
`rgb2gray` converts an RGB (truecolor) image to grayscale by eliminating the hue and saturation information while retaining luminance. It uses weighted sum:  
Gray = 0.2989*R + 0.5870*G + 0.1140*B

### SYNTAX:
```matlab
gray_img = rgb2gray(rgb_img)
```

### EXAMPLES:

**Example 1: Basic RGB to grayscale conversion**
```matlab
>> img = imread('cat.png');
>> gcat = rgb2gray(img);
>> imshow(gcat);
% Converts color cat image to grayscale
```

---

## FUNCTION 6: size
### DEFINITION:
`size` returns the dimensions of an array or image. For grayscale images it returns `[rows, columns]`, and for RGB images it returns `[rows, columns, pages]` where `pages=3` for RGB.

### SYNTAX:
```matlab
dimensions = size(img)
[rows, cols] = size(img)
[rows, cols, pages] = size(img)
```

### EXAMPLES:

**Example 1: Get dimensions of grayscale image**
```matlab
>> gcat = rgb2gray(imread('cat.png'));
>> size(gcat)
ans =
    319   323
% Returns 319 rows and 323 columns
```

---

## FUNCTION 7: imfinfo
### DEFINITION:
`imfinfo` returns detailed information about an image file including filename, file size, format, width, height, bit depth, color type, and metadata.

### SYNTAX:
```matlab
info = imfinfo('filename')
```

### EXAMPLES:

**Example 1: Get basic image information**
```matlab
>> info = imfinfo('cat.png')
info =
    Filename: 'C:\matlab\cat.png'
    FileModDate: '25-May-2018 22:07:00'
    FileSize: 182053
    Format: 'png'
    Width: 323
    Height: 319
    BitDepth: 24
    ColorType: 'truecolor'
```

---

## FUNCTION 8: double
### DEFINITION:
`double` converts an image to double-precision floating-point format. Values are preserved (`uint8` range 0–255 stays 0–255, not scaled to 0–1). Useful for mathematical operations.

### SYNTAX:
```matlab
double_img = double(img)
```

### EXAMPLES:

**Example 1: Convert `uint8` to `double`**
```matlab
>> img = imread('cat.png');
>> d_img = double(img);
>> whos img d_img
% Shows img is uint8, d_img is double
```

---

## FUNCTION 9: uint8
### DEFINITION:
`uint8` converts an image to 8-bit unsigned integer format with range 0–255. Values outside this range are clipped. This is the standard format for most image file formats.

### SYNTAX:
```matlab
uint8_img = uint8(img)
```

### EXAMPLES:

**Example 1: Convert `double` to `uint8`**
```matlab
>> a = 23;
>> b = uint8(a);
>> whos a b
a: 1x1 double array (8 bytes)
b: 1x1 uint8 array (1 byte)
% Converts and reduces memory usage
```

---

## FUNCTION 10: impixel
### DEFINITION:
`impixel` returns the pixel values at specified coordinates in an image. For RGB images, it returns `[R, G, B]` values. For grayscale, it returns intensity value.

### SYNTAX:
```matlab
values = impixel(img, col, row)
values = impixel(img, [col1 col2], [row1 row2])
```

### EXAMPLES:

**Example 1: Get single pixel value from RGB image**
```matlab
>> img = imread('cat.png');
>> val = impixel(img, 39, 100)
val =
    203  172  143
% Returns RGB values at column 39, row 100
```

**(Additional examples follow similar structure)**

---

## FUNCTION 11: ind2gray
### DEFINITION:
`ind2gray` converts an indexed image to a grayscale intensity image. The colormap is used to determine the grayscale intensity values.

### SYNTAX:
```matlab
gray_img = ind2gray(X, map)
```

### EXAMPLES:

**Example 1: Convert indexed image to grayscale**
```matlab
>> [X, map] = imread('indexed_image.png');
>> gray_img = ind2gray(X, map);
>> imshow(gray_img);
% Converts indexed image with colormap to grayscale
```

---

## FUNCTION 12: gray2ind
### DEFINITION:
`gray2ind` converts a grayscale intensity image to an indexed image by quantizing the gray levels and creating a colormap.

### SYNTAX:
```matlab
[X, map] = gray2ind(gray_img)
[X, map] = gray2ind(gray_img, n)
```

### EXAMPLES:

**Example 1: Convert grayscale to indexed with default levels**
```matlab
>> gray_img = rgb2gray(imread('photo.jpg'));
>> [X, map] = gray2ind(gray_img);
>> imshow(X, map);
% Converts to indexed with 64 gray levels (default)
```

---

## FUNCTION 13: rgb2ind
### DEFINITION:
`rgb2ind` converts an RGB image to an indexed image by quantizing the colors and creating an optimal colormap. This reduces memory usage and file size.

### SYNTAX:
```matlab
[X, map] = rgb2ind(rgb_img, n)
```

### EXAMPLES:

**Example 1: Convert RGB to indexed with specified colors**
```matlab
>> img = imread('photo.jpg');
>> [X, map] = rgb2ind(img, 64);
>> imshow(X, map);
% Creates indexed image with 64 colors
```

---

## FUNCTION 14: gray2rgb
### DEFINITION:
`gray2rgb` converts a grayscale image to RGB (truecolor) format by replicating the gray values across all three color channels. The visual appearance remains the same.

### SYNTAX:
```matlab
rgb_img = gray2rgb(gray_img)
```

### EXAMPLES:

**Example 1: Basic grayscale to RGB conversion**
```matlab
>> gray_img = rgb2gray(imread('photo.jpg'));
>> rgb_img = gray2rgb(gray_img);
>> size(gray_img)
ans = 480  640
>> size(rgb_img)
ans = 480  640  3
% Converts from 2D to 3D array
```

---

## FUNCTION 15: ind2rgb
### DEFINITION:
`ind2rgb` converts an indexed image to RGB (truecolor) format using the associated colormap. Each index value is replaced with the corresponding RGB triplet from the colormap.

### SYNTAX:
```matlab
rgb_img = ind2rgb(X, map)
```

### EXAMPLES:

**Example 1: Convert indexed image to RGB**
```matlab
>> [X, map] = imread('graphic.gif');
>> rgb_img = ind2rgb(X, map);
>> imshow(rgb_img);
% Converts indexed to RGB format
```

---

## FUNCTION 16: imresize
### DEFINITION:
`imresize` resizes an image by a specified scaling factor or to specified dimensions. It uses interpolation to compute pixel values in the resized image.

### SYNTAX:
```matlab
resized = imresize(img, scale)
resized = imresize(img, [rows cols])
```

### EXAMPLES:

**Example 1: Reduce image size by half**
```matlab
>> img = imread('photo.jpg');
>> small = imresize(img, 0.5);
>> figure; imshow(img); title('Original');
>> figure; imshow(small); title('50% Size');
% Creates image with half the dimensions
```

---

## BIT PLANE EXTRACTION
Extracting individual bit planes from a grayscale image. Each pixel's value can be represented in binary (8 bits for `uint8`).

### Example: Extract bit planes
```matlab
>> c = rgb2gray(imread('cat.png'));
>> cd = double(c);
>> c0 = mod(cd, 2);                    % Least significant bit
>> c1 = mod(floor(cd/2), 2);           % Bit 1
>> c2 = mod(floor(cd/4), 2);           % Bit 2
>> c3 = mod(floor(cd/8), 2);           % Bit 3
>> c4 = mod(floor(cd/16), 2);          % Bit 4
>> c5 = mod(floor(cd/32), 2);          % Bit 5
>> c6 = mod(floor(cd/64), 2);          % Bit 6
>> c7 = mod(floor(cd/128), 2);         % Most significant bit
```

Reconstruct image from bit planes:
```matlab
>> cc = 2*(2*(2*(2*(2*(2*(2*c7+c6)+c5)+c4)+c3)+c2)+c1)+c0;
>> imshow(uint8(cc));
```

---

## BINARY IMAGES
Creating binary (black and white) images using thresholding.

### Example: Create binary image
```matlab
>> img = imread('photo.jpg');
>> gray_img = rgb2gray(img);
>> binary = gray_img > 120;  % Pixels >120 become 1 (white), others 0 (black)
>> imshow(binary);
```

Converting logical to double:
```matlab
>> binary = gray_img > 120;
>> binary_double = +binary;  % Converts logical to double (0 and 1)
>> whos binary binary_double
% Shows binary is logical, binary_double is double
```

---

## INDEXED IMAGES
Indexed images store pixel values as indices into a colormap, reducing memory usage compared to RGB images.

Structure:
- `X`: Matrix of index values (`uint8` or `double`)
- `map`: Colormap matrix (`n x 3`, where `n` is number of colors)

---

## SPATIAL RESOLUTION
The density of pixels in an image. Lower resolution means fewer pixels.

Effective resolution examples (starting from 256x256):
```matlab
>> x1 = imresize(imresize(x, 1/4), 4);   % 64x64 effective
>> x2 = imresize(imresize(x, 1/8), 8);   % 32x32 effective
>> x3 = imresize(imresize(x, 1/16), 16); % 16x16 effective
>> x4 = imresize(imresize(x, 1/32), 32); % 8x8 effective
```

---

## IMAGE DATA TYPES
- `uint8`: 8-bit unsigned integer (0–255) - standard for images
- `uint16`: 16-bit unsigned integer (0–65535) - for high bit-depth
- `double`: Double precision (any range) - for computation
- `logical`: Binary values (0 or 1) - for masks and binary images

---

## REFERENCE GUIDE

**READING & DISPLAYING:**
```matlab
imread('file')              - Read image from file
imshow(img)                 - Display image
figure                      - Create new window
impixelinfo                 - Show pixel info on cursor hover
```

**IMAGE CONVERSION:**
```matlab
rgb2gray(img)              - RGB to grayscale
gray2rgb(img)              - Grayscale to RGB
rgb2ind(img, n)            - RGB to indexed (n colors)
ind2rgb(X, map)            - Indexed to RGB
gray2ind(img, n)           - Grayscale to indexed
ind2gray(X, map)           - Indexed to grayscale
```

**DATA TYPE CONVERSION:**
```matlab
double(img)                - Convert to double precision
uint8(img)                 - Convert to 8-bit unsigned integer
im2double(img)             - Convert and scale to [0,1] range
```

**IMAGE INFORMATION:**
```matlab
size(img)                  - Get dimensions [rows cols] or [rows cols 3]
imfinfo('file')            - Get file information
impixel(img, x, y)         - Get pixel values at coordinates
```

**IMAGE MANIPULATION:**
```matlab
imresize(img, scale)       - Resize by scale factor
imresize(img, [r c])       - Resize to specific dimensions
```

**CREATING BINARY IMAGES:**
```matlab
binary = img > threshold   - Threshold to create binary image
```

**BIT OPERATIONS:**
```matlab
mod(img, 2)                - Extract least significant bit
floor(img/2^n)             - Shift right by n bits
```

---
