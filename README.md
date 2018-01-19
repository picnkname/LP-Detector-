# LP-Detector-
The project objective was to design a technique to automatically detect and segment the License Plate of a vehicle and 
read the license plate. The application of the project would be monitoring the vehicles that enters and exists the university premises
and keep a database of frequently arriving vehicles. The approach followed was to make use of the SURF (Speeded-Up Robust Features) 
to detect the key points in the image after applying a gamma correction (say ~0.3). With a higher hessian threshold, we can observe
that most of the detected keypoints lie in the licesnse plate region. This observation was exploited and with the use of 
a modified K-means clustering algorithm the license plate can be segmented. Then the segmented license plate was converted to 
a binary image and the resulted image was fed in to a Neural Network which was trained to recognize the numbers and characters of the 
license plate.   MATLAB and OpenCV library in Python was used as the coding platforms for the project. For the hardware 
implementation raspberry pi and picamera module was used.   

Status : Hardware Implementation would be completed soon. 
Type : Optional Research Project 
Resources : Would be available here after the completion of the hardware implementation.
