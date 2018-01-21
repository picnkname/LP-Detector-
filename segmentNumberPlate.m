function segmentNumberPlate(im)

k1 = [-1,-2,-1;0,0,0;1,2,1];
k2 = k1';
im2 = conv2(im,k2,'full');
imshow(mat2gray(im2));
hold on;

end


