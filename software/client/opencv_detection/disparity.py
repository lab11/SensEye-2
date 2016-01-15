import time
startTime = time.time()


import numpy as np
import cv2
from matplotlib import pyplot as plt
     
imgL = cv2.imread('left_cam.png',0)
imgR = cv2.imread('right_cam.png',0)
     
stereo = cv2.createStereoBM(numDisparities=16, blockSize=15)
disparity = stereo.compute(imgL,imgR)
depth = (14)/(disparity+3)
plt.imshow(depth,'gray')


elapsedTime = time.time()-startTime
print("Runtime of Depth Detection:" + str(elapsedTime))

plt.show()
cv2.waitKey(0)