import cv2
import numpy as np
import matplotlib.pyplot as plt

#get the SURF keypoints from the image using a suitable hessian thershold

im = cv2.imread('Car.jpg',0)

#apply an intensity transformation


plt.imshow(im)


surf = cv2.xfeatures2d.SURF_create(10000)
kp, des = surf.detectAndCompute(im,None)
img2 = cv2.drawKeypoints(im,kp,None,(255,0,0),4)

#display the found keypoints

plt.imshow(img2)

#Get the coordinates of each keypoint

X = []
Y=[]
for i in range(len(kp)) :
    X.append(kp[i].pt[0])
    Y.append(kp[i].pt[1])
    
Z = np.vstack((X,Y))
Z = np.float32(Z)

#run the K-Means Clustering

criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 10, 1.0)
ret,label,center=cv2.kmeans(Z,1,None,criteria,10,cv2.KMEANS_RANDOM_CENTERS)

#plot the cluster centre

plt.scatter(center[:,0],center[:,1],s = 80,c = 'y', marker = 's')


