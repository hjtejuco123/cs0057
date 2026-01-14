================================================================================
Module 3: Images and Matlab
================================================================================
Topics in the PDF file 

1. imread - Read image from file
2. imshow - Display image
3. figure - Create new figure window
4. impixelinfo - Display pixel information
5. rgb2gray - Convert RGB to grayscale
6. size - Get image dimensions
7. imfinfo - Get image file information
8. double - Convert to double precision
9. uint8 - Convert to 8-bit unsigned integer
10. impixel - Get pixel values at coordinates
11. ind2gray - Convert indexed image to grayscale
12. gray2ind - Convert grayscale to indexed
13. rgb2ind - Convert RGB to indexed
14. gray2rgb - Convert grayscale to RGB
15. ind2rgb - Convert indexed to RGB
16. imresize - Resize image

================================================================================

FUNCTION 1: imread
================================================================================
DEFINITION:
imread reads an image from a graphics file and returns the image data as a
matrix. It supports various image formats including PNG, JPEG, TIFF, BMP, and GIF.

SYNTAX:
img = imread('filename')

EXAMPLES:

Example 1: Basic image reading
>> img = imread('cat.png');
% Reads the image file 'cat.png' from the current directory

Example 2: Reading from full path
>> img = imread('C:\matlab\images\photo.jpg');
% Reads image from a specific directory path

Example 3: Reading specific frame from multi-frame image
>> img = imread('animation.gif', 2);
% Reads the second frame from a GIF file

Example 4: Reading with format specification
>> img = imread('myimage', 'png');
% Explicitly specifies the format when extension is missing

Example 5: Reading and displaying in one operation
>> img = imread('landscape.jpg');
>> imshow(img);
% Reads and immediately displays the image

================================================================================

FUNCTION 2: imshow
================================================================================
DEFINITION:
imshow displays an image in a figure window. It automatically scales the display
based on the data type of the image (uint8 values: 0-255, double values: 0-1).

SYNTAX:
imshow(img)
imshow(img, [])
imshow(img, [min max])

EXAMPLES:

Example 1: Display uint8 image
>> img = imread('cat.png');
>> imshow(img);
% Displays the image with default scaling (0-255 for uint8)

Example 2: Display double image with automatic scaling
>> img_double = double(img);
>> imshow(img_double, []);
% [] causes automatic scaling to min and max values

Example 3: Display with custom intensity range
>> img_double = double(img);
>> imshow(img_double/255);
% Scales double image to 0-1 range

Example 4: Display rescaled image with specific range
>> img_double = double(img);
>> imshow(img_double/512);
% Displays darker image by dividing by 512

Example 5: Display rescaled image with custom range
>> img_double = double(img);
>> imshow(img_double/128);
% Displays brighter image by dividing by 128

================================================================================

FUNCTION 3: figure
================================================================================
DEFINITION:
figure creates a new figure window for displaying graphics objects such as
images, plots, or charts. It provides a container for visualization.

SYNTAX:
figure
figure(n)

EXAMPLES:

Example 1: Create new figure window
>> figure;
>> imshow(img);
% Creates a new figure window and displays an image

Example 2: Create multiple figure windows
>> figure; imshow(img1);
>> figure; imshow(img2);
% Creates two separate windows for two different images

Example 3: Display original and processed images side by side
>> img = imread('cat.png');
>> gcat = rgb2gray(img);
>> figure; imshow(img);
>> figure; imshow(gcat);
% Shows original and grayscale versions in separate windows

Example 4: Reuse specific figure number
>> figure(1); imshow(img1);
>> figure(2); imshow(img2);
>> figure(1); imshow(img3);
% Updates figure 1 with a new image

Example 5: Create figure with title
>> figure;
>> imshow(img);
>> title('Original Image');
% Creates figure with descriptive title

================================================================================

FUNCTION 4: impixelinfo
================================================================================
DEFINITION:
impixelinfo displays the pixel coordinates and intensity values at the bottom
of the figure window. As you move the cursor over the image, the values update
in real-time.

SYNTAX:
impixelinfo

EXAMPLES:

Example 1: Display pixel information for grayscale image
>> gcat = rgb2gray(imread('cat.png'));
>> figure; imshow(gcat); impixelinfo;
% Shows (column, row) and intensity value as cursor moves

Example 2: Display pixel information for RGB image
>> img = imread('cat.png');
>> figure; imshow(img); impixelinfo;
% Shows (column, row) and [R G B] values

Example 3: Use with zoomed image
>> img = imread('cat.png');
>> figure; imshow(img); impixelinfo;
>> zoom(2);
% Pixel info still works when zoomed in

Example 4: Multiple images with pixel info
>> figure; imshow(img1); impixelinfo;
>> figure; imshow(img2); impixelinfo;
% Each figure has its own pixel information display

Example 5: Combine with other display features
>> img = imread('cat.png');
>> figure;
>> imshow(img);
>> impixelinfo;
>> title('Image with Pixel Information');
% Shows pixel info with title

================================================================================

FUNCTION 5: rgb2gray
================================================================================
DEFINITION:
rgb2gray converts an RGB (truecolor) image to grayscale by eliminating the hue
and saturation information while retaining luminance. It uses weighted sum:
Gray = 0.2989*R + 0.5870*G + 0.1140*B

SYNTAX:
gray_img = rgb2gray(rgb_img)

EXAMPLES:

Example 1: Basic RGB to grayscale conversion
>> img = imread('cat.png');
>> gcat = rgb2gray(img);
>> imshow(gcat);
% Converts color cat image to grayscale

Example 2: Compare original and grayscale
>> img = imread('landscape.jpg');
>> gray_img = rgb2gray(img);
>> figure; imshow(img);
>> figure; imshow(gray_img);
% Shows both versions in separate windows

Example 3: Get size of grayscale image
>> img = imread('cat.png');
>> gcat = rgb2gray(img);
>> size(gcat)
% Returns [rows columns] instead of [rows columns 3]

Example 4: Convert and save grayscale image
>> img = imread('photo.jpg');
>> gray_img = rgb2gray(img);
>> imwrite(gray_img, 'photo_gray.jpg');
% Converts and saves as new file

Example 5: Process only grayscale version
>> img = imread('cat.png');
>> gcat = rgb2gray(img);
>> threshold = gcat > 120;
>> imshow(threshold);
% Creates binary image based on threshold

================================================================================

FUNCTION 6: size
================================================================================
DEFINITION:
size returns the dimensions of an array or image. For grayscale images it
returns [rows, columns], and for RGB images it returns [rows, columns, pages]
where pages=3 for RGB.

SYNTAX:
dimensions = size(img)
[rows, cols] = size(img)
[rows, cols, pages] = size(img)

EXAMPLES:

Example 1: Get dimensions of grayscale image
>> gcat = rgb2gray(imread('cat.png'));
>> size(gcat)
ans =
    319   323
% Returns 319 rows and 323 columns

Example 2: Get dimensions of RGB image
>> img = imread('cat.png');
>> size(img)
ans =
    319   323   3
% Returns 319 rows, 323 columns, 3 color channels

Example 3: Store dimensions in separate variables
>> img = imread('cat.png');
>> [rows, cols, channels] = size(img)
rows = 319
cols = 323
channels = 3

Example 4: Calculate total number of pixels
>> img = imread('cat.png');
>> [rows, cols] = size(img);
>> total_pixels = rows * cols
total_pixels = 103037
% Total pixels in the image

Example 5: Check if image is grayscale or RGB
>> img = imread('photo.jpg');
>> dims = size(img);
>> if length(dims) == 2
       disp('Grayscale image');
   else
       disp('RGB image');
   end
% Determines image type based on dimensions

================================================================================

FUNCTION 7: imfinfo
================================================================================
DEFINITION:
imfinfo returns detailed information about an image file including filename,
file size, format, width, height, bit depth, color type, and metadata.

SYNTAX:
info = imfinfo('filename')

EXAMPLES:

Example 1: Get basic image information
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

Example 2: Access specific field
>> info = imfinfo('photo.jpg');
>> width = info.Width
>> height = info.Height
% Retrieves only width and height

Example 3: Check file format before reading
>> info = imfinfo('image.bmp');
>> if strcmp(info.Format, 'bmp')
       disp('BMP format detected');
   end
% Verifies file format

Example 4: Get image resolution information
>> info = imfinfo('highres.jpg');
>> fprintf('Resolution: %dx%d\n', info.Width, info.Height);
>> fprintf('File size: %d bytes\n', info.FileSize);
% Displays resolution and file size

Example 5: Check color type
>> info = imfinfo('image.png');
>> color_type = info.ColorType
% Returns 'truecolor', 'grayscale', or 'indexed'

================================================================================

FUNCTION 8: double
================================================================================
DEFINITION:
double converts an image to double-precision floating-point format. Values are
preserved (uint8 range 0-255 stays 0-255, not scaled to 0-1). Useful for
mathematical operations.

SYNTAX:
double_img = double(img)

EXAMPLES:

Example 1: Convert uint8 to double
>> img = imread('cat.png');
>> d_img = double(img);
>> whos img d_img
% Shows img is uint8, d_img is double

Example 2: Check value range after conversion
>> img = imread('cat.png');
>> gcat = rgb2gray(img);
>> d_img = double(gcat);
>> max(d_img(:))
ans = 255
>> min(d_img(:))
ans = 0
% Values remain in 0-255 range

Example 3: Perform arithmetic operations
>> img = imread('cat.png');
>> d_img = double(img);
>> result = d_img + 50;
% Addition is safer with double type

Example 4: Convert for logical operations
>> img = imread('cat.png');
>> d_img = double(img);
>> c = d_img > 120;
% Creates logical array for thresholding

Example 5: Use in bit plane extraction
>> gcat = rgb2gray(imread('cat.png'));
>> cd = double(gcat);
>> c0 = mod(cd, 2);
% Extracts least significant bit

================================================================================

FUNCTION 9: uint8
================================================================================
DEFINITION:
uint8 converts an image to 8-bit unsigned integer format with range 0-255.
Values outside this range are clipped. This is the standard format for most
image file formats.

SYNTAX:
uint8_img = uint8(img)

EXAMPLES:

Example 1: Convert double to uint8
>> a = 23;
>> b = uint8(a);
>> whos a b
a: 1x1 double array (8 bytes)
b: 1x1 uint8 array (1 byte)
% Converts and reduces memory usage

Example 2: Clip values to valid range
>> d_img = [100, 200, 300];
>> u_img = uint8(d_img)
u_img =
    100  200  255
% Value 300 is clipped to 255

Example 3: Convert for display
>> img = imread('cat.png');
>> d_img = double(img) * 1.5;
>> result = uint8(d_img);
>> imshow(result);
% Brightens image and converts back for display

Example 4: Reduce memory usage
>> large_img = double(imread('bigphoto.jpg'));
>> processed = large_img * 0.8;
>> final = uint8(processed);
% Processes in double, saves as uint8

Example 5: Type conversion for saving
>> img_double = rand(100, 100) * 255;
>> img_uint8 = uint8(img_double);
>> imwrite(img_uint8, 'random.png');
% Creates and saves random image

================================================================================

FUNCTION 10: impixel
================================================================================
DEFINITION:
impixel returns the pixel values at specified coordinates in an image. For RGB
images, it returns [R, G, B] values. For grayscale, it returns intensity value.

SYNTAX:
values = impixel(img, col, row)
values = impixel(img, [col1 col2], [row1 row2])

EXAMPLES:

Example 1: Get single pixel value from RGB image
>> img = imread('cat.png');
>> val = impixel(img, 39, 100)
val =
    203  172  143
% Returns RGB values at column 39, row 100

Example 2: Get multiple pixel values
>> img = imread('cat.png');
>> vals = impixel(img, [39 50 60], [100 100 100])
vals =
    203  172  143
    195  165  138
    201  171  145
% Returns RGB values for 3 pixels

Example 3: Get pixel from grayscale image
>> gcat = rgb2gray(imread('cat.png'));
>> val = impixel(gcat, 77, 95)
val =
    184
% Returns single intensity value

Example 4: Interactive pixel selection
>> img = imread('cat.png');
>> [x, y, vals] = impixel(img);
% Click on image to select pixels, press Enter when done

Example 5: Extract specific color channel
>> img = imread('cat.png');
>> red_vals = impixel(img(:,:,1), 100, 50);
% Gets red channel value at specified location

================================================================================

FUNCTION 11: ind2gray
================================================================================
DEFINITION:
ind2gray converts an indexed image to a grayscale intensity image. The colormap
is used to determine the grayscale intensity values.

SYNTAX:
gray_img = ind2gray(X, map)

EXAMPLES:

Example 1: Convert indexed image to grayscale
>> [X, map] = imread('indexed_image.png');
>> gray_img = ind2gray(X, map);
>> imshow(gray_img);
% Converts indexed image with colormap to grayscale

Example 2: Load and convert GIF
>> [X, map] = imread('graphic.gif');
>> gray_img = ind2gray(X, map);
>> figure; imshow(X, map);
>> figure; imshow(gray_img);
% Shows both indexed and grayscale versions

Example 3: Process indexed image
>> [X, map] = imread('logo.gif');
>> gray_img = ind2gray(X, map);
>> bright_img = gray_img * 1.5;
>> imshow(bright_img);
% Brightens grayscale version

Example 4: Convert and save
>> [X, map] = imread('diagram.gif');
>> gray_img = ind2gray(X, map);
>> imwrite(gray_img, 'diagram_gray.jpg');
% Converts indexed to grayscale and saves

Example 5: Compare file sizes
>> [X, map] = imread('indexed.gif');
>> gray_img = ind2gray(X, map);
>> imwrite(gray_img, 'gray_version.jpg');
% Typically reduces file size

================================================================================

FUNCTION 12: gray2ind
================================================================================
DEFINITION:
gray2ind converts a grayscale intensity image to an indexed image by quantizing
the gray levels and creating a colormap.

SYNTAX:
[X, map] = gray2ind(gray_img)
[X, map] = gray2ind(gray_img, n)

EXAMPLES:

Example 1: Convert grayscale to indexed with default levels
>> gray_img = rgb2gray(imread('photo.jpg'));
>> [X, map] = gray2ind(gray_img);
>> imshow(X, map);
% Converts to indexed with 64 gray levels (default)

Example 2: Specify number of gray levels
>> gray_img = rgb2gray(imread('photo.jpg'));
>> [X, map] = gray2ind(gray_img, 16);
>> imshow(X, map);
% Creates indexed image with 16 gray levels

Example 3: Reduce to binary (2 levels)
>> gray_img = rgb2gray(imread('photo.jpg'));
>> [X, map] = gray2ind(gray_img, 2);
>> imshow(X, map);
% Creates binary-like indexed image

Example 4: Compare different quantization levels
>> gray_img = rgb2gray(imread('photo.jpg'));
>> [X32, map32] = gray2ind(gray_img, 32);
>> [X8, map8] = gray2ind(gray_img, 8);
>> figure; imshow(X32, map32);
>> figure; imshow(X8, map8);
% Shows effect of different quantization levels

Example 5: Save as indexed image
>> gray_img = rgb2gray(imread('photo.jpg'));
>> [X, map] = gray2ind(gray_img, 256);
>> imwrite(X, map, 'indexed_photo.png');
% Saves as indexed PNG file

================================================================================

FUNCTION 13: rgb2ind
================================================================================
DEFINITION:
rgb2ind converts an RGB image to an indexed image by quantizing the colors
and creating an optimal colormap. This reduces memory usage and file size.

SYNTAX:
[X, map] = rgb2ind(rgb_img, n)

EXAMPLES:

Example 1: Convert RGB to indexed with specified colors
>> img = imread('photo.jpg');
>> [X, map] = rgb2ind(img, 64);
>> imshow(X, map);
% Creates indexed image with 64 colors

Example 2: Reduce colors dramatically
>> img = imread('colorful.jpg');
>> [X, map] = rgb2ind(img, 16);
>> figure; imshow(img);
>> figure; imshow(X, map);
% Compare original with 16-color version

Example 3: Create web-safe palette
>> img = imread('webpage.jpg');
>> [X, map] = rgb2ind(img, 216);
>> imwrite(X, map, 'webpage.gif');
% Converts to GIF with web-safe colors

Example 4: Posterization effect
>> img = imread('landscape.jpg');
>> [X, map] = rgb2ind(img, 8);
>> imshow(X, map);
% Creates poster-like effect with 8 colors

Example 5: Compare file sizes
>> img = imread('photo.jpg');
>> [X, map] = rgb2ind(img, 128);
>> imwrite(img, 'original.png');
>> imwrite(X, map, 'indexed.png');
% Indexed version typically has smaller file size

================================================================================

FUNCTION 14: gray2rgb
================================================================================
DEFINITION:
gray2rgb converts a grayscale image to RGB (truecolor) format by replicating
the gray values across all three color channels. The visual appearance remains
the same.

SYNTAX:
rgb_img = gray2rgb(gray_img)

EXAMPLES:

Example 1: Basic grayscale to RGB conversion
>> gray_img = rgb2gray(imread('photo.jpg'));
>> rgb_img = gray2rgb(gray_img);
>> size(gray_img)
ans = 480  640
>> size(rgb_img)
ans = 480  640  3
% Converts from 2D to 3D array

Example 2: Prepare for color overlay
>> gray_img = rgb2gray(imread('photo.jpg'));
>> rgb_img = gray2rgb(gray_img);
>> rgb_img(:,:,1) = rgb_img(:,:,1) + 50;  % Add red tint
>> imshow(rgb_img);
% Converts to RGB to allow color manipulation

Example 3: Convert for consistent processing
>> gray_img = imread('grayscale.jpg');
>> rgb_img = gray2rgb(gray_img);
>> % Now can process with RGB-only functions
>> processed = imadjust(rgb_img);

Example 4: Create sepia tone effect
>> gray_img = rgb2gray(imread('photo.jpg'));
>> rgb_img = gray2rgb(gray_img);
>> rgb_img(:,:,1) = min(rgb_img(:,:,1) * 1.2, 255);  % Red
>> rgb_img(:,:,2) = min(rgb_img(:,:,2) * 1.1, 255);  % Green
>> rgb_img(:,:,3) = rgb_img(:,:,3) * 0.9;             % Blue
>> imshow(uint8(rgb_img));
% Creates sepia tone from grayscale

Example 5: Combine with other images
>> gray1 = rgb2gray(imread('image1.jpg'));
>> rgb1 = gray2rgb(gray1);
>> rgb2 = imread('image2.jpg');
>> combined = (rgb1 + rgb2) / 2;
>> imshow(uint8(combined));
% Converts to RGB for blending

================================================================================

FUNCTION 15: ind2rgb
================================================================================
DEFINITION:
ind2rgb converts an indexed image to RGB (truecolor) format using the associated
colormap. Each index value is replaced with the corresponding RGB triplet from
the colormap.

SYNTAX:
rgb_img = ind2rgb(X, map)

EXAMPLES:

Example 1: Convert indexed image to RGB
>> [X, map] = imread('graphic.gif');
>> rgb_img = ind2rgb(X, map);
>> imshow(rgb_img);
% Converts indexed to RGB format

Example 2: Load indexed, convert, and save as JPEG
>> [X, map] = imread('logo.gif');
>> rgb_img = ind2rgb(X, map);
>> imwrite(rgb_img, 'logo.jpg');
% JPEG requires RGB format

Example 3: Process indexed image as RGB
>> [X, map] = imread('diagram.gif');
>> rgb_img = ind2rgb(X, map);
>> adjusted = imadjust(rgb_img);
>> imshow(adjusted);
% Converts to RGB for processing

Example 4: Compare indexed and RGB versions
>> [X, map] = imread('indexed.png');
>> rgb_img = ind2rgb(X, map);
>> figure; imshow(X, map); title('Indexed');
>> figure; imshow(rgb_img); title('RGB');
% Visual comparison

Example 5: Modify colormap and convert
>> [X, map] = imread('graphic.gif');
>> new_map = map * 1.2;  % Brighten colors
>> new_map(new_map > 1) = 1;  % Clip
>> rgb_img = ind2rgb(X, new_map);
>> imshow(rgb_img);
% Modifies colors before converting

================================================================================

FUNCTION 16: imresize
================================================================================
DEFINITION:
imresize resizes an image by a specified scaling factor or to specified
dimensions. It uses interpolation to compute pixel values in the resized image.

SYNTAX:
resized = imresize(img, scale)
resized = imresize(img, [rows cols])

EXAMPLES:

Example 1: Reduce image size by half
>> img = imread('photo.jpg');
>> small = imresize(img, 0.5);
>> figure; imshow(img); title('Original');
>> figure; imshow(small); title('50% Size');
% Creates image with half the dimensions

Example 2: Double image size
>> img = imread('thumbnail.jpg');
>> large = imresize(img, 2);
>> imshow(large);
% Creates image twice the size

Example 3: Resize to specific dimensions
>> img = imread('photo.jpg');
>> resized = imresize(img, [480 640]);
>> size(resized)
ans = 480  640  3
% Forces image to exact dimensions

Example 4: Downsample and upsample (spatial resolution reduction)
>> img = imread('photo.jpg');
>> x2 = imresize(imresize(img, 1/4), 4);
>> figure; imshow(img); title('Original');
>> figure; imshow(x2); title('64x64 effective resolution');
% Reduces then restores size (loses quality)

Example 5: Create thumbnail series
>> img = imread('photo.jpg');
>> thumb1 = imresize(img, 1/4);
>> thumb2 = imresize(img, 1/8);
>> thumb3 = imresize(img, 1/16);
>> figure;
>> subplot(1,3,1); imshow(thumb1);
>> subplot(1,3,2); imshow(thumb2);
>> subplot(1,3,3); imshow(thumb3);
% Creates multiple thumbnail sizes

================================================================================

BIT PLANE EXTRACTION - extracting individual bit planes from a grayscale image.
Each pixel's value can be represented in binary (8 bits for uint8).

Example: Extract bit planes
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

Reconstruct image from bit planes:
>> cc = 2*(2*(2*(2*(2*(2*(2*c7+c6)+c5)+c4)+c3)+c2)+c1)+c0;
>> imshow(uint8(cc));

BINARY IMAGES:
Creating binary (black and white) images using thresholding:

Example: Create binary image
>> img = imread('photo.jpg');
>> gray_img = rgb2gray(img);
>> binary = gray_img > 120;  % Pixels >120 become 1 (white), others 0 (black)
>> imshow(binary);

Converting logical to double:
>> binary = gray_img > 120;
>> binary_double = +binary;  % Converts logical to double (0 and 1)
>> whos binary binary_double
% Shows binary is logical, binary_double is double

INDEXED IMAGES:
Indexed images store pixel values as indices into a colormap, reducing memory
usage compared to RGB images.

Structure:
- X: Matrix of index values (uint8 or double)
- map: Colormap matrix (n x 3, where n is number of colors)

SPATIAL RESOLUTION:
The density of pixels in an image. Lower resolution means fewer pixels.

Effective resolution examples (starting from 256x256):
>> x1 = imresize(imresize(x, 1/4), 4);   % 64x64 effective
>> x2 = imresize(imresize(x, 1/8), 8);   % 32x32 effective
>> x3 = imresize(imresize(x, 1/16), 16); % 16x16 effective
>> x4 = imresize(imresize(x, 1/32), 32); % 8x8 effective

IMAGE DATA TYPES:
- uint8: 8-bit unsigned integer (0-255) - standard for images
- uint16: 16-bit unsigned integer (0-65535) - for high bit-depth
- double: Double precision (any range) - for computation
- logical: Binary values (0 or 1) - for masks and binary images

================================================================================
REFERENCE GUIDE
================================================================================

READING & DISPLAYING:
imread('file')              - Read image from file
imshow(img)                 - Display image
figure                      - Create new window
impixelinfo                 - Show pixel info on cursor hover

IMAGE CONVERSION:
rgb2gray(img)              - RGB to grayscale
gray2rgb(img)              - Grayscale to RGB
rgb2ind(img, n)            - RGB to indexed (n colors)
ind2rgb(X, map)            - Indexed to RGB
gray2ind(img, n)           - Grayscale to indexed
ind2gray(X, map)           - Indexed to grayscale

DATA TYPE CONVERSION:
double(img)                - Convert to double precision
uint8(img)                 - Convert to 8-bit unsigned integer
im2double(img)             - Convert and scale to [0,1] range

IMAGE INFORMATION:
size(img)                  - Get dimensions [rows cols] or [rows cols 3]
imfinfo('file')            - Get file information
impixel(img, x, y)         - Get pixel values at coordinates

IMAGE MANIPULATION:
imresize(img, scale)       - Resize by scale factor
imresize(img, [r c])       - Resize to specific dimensions

CREATING BINARY IMAGES:
binary = img > threshold   - Threshold to create binary image

BIT OPERATIONS:
mod(img, 2)                - Extract least significant bit
floor(img/2^n)             - Shift right by n bits

================================================================================
 WORKFLOWS
================================================================================

WORKFLOW 1: Load, Display, and Analyze
>> img = imread('photo.jpg');
>> figure; imshow(img); impixelinfo;
>> info = imfinfo('photo.jpg');
>> dims = size(img);

WORKFLOW 2: Convert to Grayscale and Process
>> img = imread('photo.jpg');
>> gray = rgb2gray(img);
>> figure; imshow(img); title('Original');
>> figure; imshow(gray); title('Grayscale');

WORKFLOW 3: Create Binary Image
>> img = imread('photo.jpg');
>> gray = rgb2gray(img);
>> binary = gray > 128;
>> figure; imshow(binary);

WORKFLOW 4: Resize and Save
>> img = imread('large_photo.jpg');
>> small = imresize(img, 0.5);
>> imwrite(small, 'small_photo.jpg');

WORKFLOW 5: Bit Plane Analysis
>> img = imread('photo.jpg');
>> gray = rgb2gray(img);
>> d_img = double(gray);
>> bit7 = mod(floor(d_img/128), 2);  % MSB
>> bit0 = mod(d_img, 2);              % LSB
>> figure; imshow(bit7); title('MSB');
>> figure; imshow(bit0); title('LSB');

WORKFLOW 6: Compare Different Resolutions
>> img = imread('photo.jpg');
>> gray = rgb2gray(img);
>> res64 = imresize(imresize(gray, 1/4), 4);
>> res32 = imresize(imresize(gray, 1/8), 8);
>> res16 = imresize(imresize(gray, 1/16), 16);
>> figure; subplot(2,2,1); imshow(gray); title('Original');
>> subplot(2,2,2); imshow(res64); title('64x64 effective');
>> subplot(2,2,3); imshow(res32); title('32x32 effective');
>> subplot(2,2,4); imshow(res16); title('16x16 effective');
