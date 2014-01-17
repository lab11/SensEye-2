#ifndef GLASSES_ML_H
#define GLASSES_ML_H
//**************************************************************************************************
// glasses.h
//
// Russ Bielawski
// 2012-12-05: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//


//**************************************************************************************************
// defines / constants
//


//**************************************************************************************************
// function prototypes
//
unsigned calculateLabel(unsigned width, unsigned height, unsigned xx, unsigned yy);
void     getCentralCoords(unsigned label, unsigned width, unsigned height, unsigned &xx, unsigned &yy);


#endif // GLASSES_ML_H

