#ifndef GLASSES_CV_H
#define GLASSES_CV_H
//**************************************************************************************************
// glasses.h
//
// Russ Bielawski
// 2012-12-05: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include "cv.h"


//**************************************************************************************************
// defines / constants
//


//**************************************************************************************************
// function prototypes
//
void glassesPopulateImages(unsigned numcams, char buf[], IplImage *frameEye, IplImage *frameScene);
void glassesConcatenateImages(IplImage *frameLeft, IplImage *frameRight, IplImage *frameDual, unsigned numchannels);
void glassesSplitImages(IplImage *frameDual, IplImage *frameLeft, IplImage *frameRight, unsigned numchannels);


#endif // GLASSES_CV_H

