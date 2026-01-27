image_region = [10 20 30;
                40 50 60;
                70 80 90];

avg_filter =    [1/9 1/9 1/9;
                 1/9 1/9 1/9;
                 1/9 1/9 1/9];

output_pixel = sum(sum(image_region .* avg_filter));

disp(['Output pixel value: ', num2str(output_pixel)]);



