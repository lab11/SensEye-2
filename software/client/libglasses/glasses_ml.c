//**************************************************************************************************
// glasses_ml.c
//
// Russ Bielawski
// 2012-12-07: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include "glasses_ml.h"

#include "cv.h"


//**************************************************************************************************
// function definitions
//

//
// calculateLabel: calculate nondrant label from coordinates and a width and height
//
unsigned calculateLabel(unsigned width, unsigned height, unsigned xx, unsigned yy)
{
   unsigned binX,binY;

   binX=0;
   binY=0;
   // calculate binX
   if(xx > 2*width/3)
   {
      binX=2;
   }
   else if(xx > width/3)
   {
      binX=1;
   }
   else
   {
      // binX=0;
   }
   // calculate binY
   if(yy > 2*height/3)
   {
      binY=2;
   }
   else if(yy > height/3)
   {
      binY=1;
   }
   else
   {
      // binX=0;
   }

   return binY*3 + binX + 1;
}

//
// getCentralCoords: get the central (x,y) coordinates for the nondrant label supplied
//
void getCentralCoords(unsigned label, unsigned width, unsigned height, unsigned &xx, unsigned &yy)
{
   // lazy
   switch(label)
   {
      case 1:
         xx = width/6;
         yy = height/6;
         break;
      case 2:
         xx = 3*width/6;
         yy = height/6;
         break;
      case 3:
         xx = 5*width/6;
         yy = height/6;
         break;
      case 4:
         xx = width/6;
         yy = 3*height/6;
         break;
      case 6:
         xx = 5*width/6;
         yy = 3*height/6;
         break;
      case 7:
         xx = width/6;
         yy = 5*height/6;
         break;
      case 8:
         xx = 3*width/6;
         yy = 5*height/6;
         break;
      case 9:
         xx = 5*width/6;
         yy = 5*height/6;
         break;
      case 5:
      default:
         xx = 3*width/6;
         yy = 3*height/6;
         break;
   }
}

