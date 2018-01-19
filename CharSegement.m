function CharSegement(im) 
%segement out each character from the number plate
imshow(im);

%make the image binary
im = im2bw(im);
imshow(im);

end