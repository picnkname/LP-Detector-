%main body of code
im = loadImage;

%apply intensity transform (enhance dark pixels)
im = double(im);
im = im.^(0.3);
im = mat2gray(im);
%im = histeq(im);
imshow(im);
hold on;

%detect corners using harris algorithm 
corners =  detectSURFFeatures(im);
plot(corners.selectStrongest(10));hold on;
strongCorners = corners.selectStrongest(10);
pointLocs = strongCorners.Location();

%k-means clustering

[idx,c] = kmeans(pointLocs,1,'distance','cityblock');

plot(c(1),c(2),'rx',...
     'MarkerSize',12,'LineWidth',2)
 
%segement out the number plate

rectangle('Position',[c(1)-500,c(2)-200,1000,400],'EdgeColor','b');

%crop out the number plate

figure;
numberPlate = imcrop(im,[c(1)-500,c(2)-200,1000,400]);
imshow(numberPlate);


%character segmentation

CharSegement(numberPlate);











