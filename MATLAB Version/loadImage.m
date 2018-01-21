function im = loadImage
%load and covert to Grayscale
im = imread('Car.jpg');
im = rgb2gray(im);
end 

