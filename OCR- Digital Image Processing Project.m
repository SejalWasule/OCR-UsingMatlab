clc
clear
close all
x=imread('IMAGE.jpeg');
imshow(x);
title('Original Image');
figure;
x=im2gray(x);
imshow(x);
title('Grayscale Image');
figure;
x = imcomplement(x); % is reversed for the grayscale plot
imshow(x);
title('Reversed Image');
figure;
x = imadjust(x);
imshow(x);
title('Contrasted Image');
figure;
x = imsharpen(x);
imshow(x);
title('Sharpened Image');
ocrResults = ocr(x);
result =
insertObjectAnnotation(x,'rectangle',ocrResults.WordBoundingBoxes,ocrResults.
WordConfidences);
figure;
imshow(result);
title('TEXT REGIONS');
x = im2double(x); % read image and convert it to double in range [0..1]
x = sum( (1-x).^2, 3 ); % check how far each pixel from "white"
% display
figure; imshow( x > .5 );
title('non background pixels');
% use regionprops to get the bounding box
st = regionprops( double( x > 0.5 ), 'BoundingBox' );
% convert to double to avoid bwlabel of logical input
rect = st.BoundingBox; % get the bounding box
hold on; rectangle('Position', rect ); 4;
e = imbinarize(x);
figure;
imshow(e);
title('Binary Image');
f = ocr(e);
disp(f.Text);