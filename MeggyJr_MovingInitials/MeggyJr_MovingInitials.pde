/*
  MeggyJr_MovingInitials.pde
 
Move the S around
   
 	  
 */

 
 
 
 



#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

//Declaring Variables
int direction = 0;
int marker = 21;

struct Point
  {
    int x;
    int y;
  };
  
Point s1 = {1,1};
Point s2 = {2,1};
Point s3 = {3,1};
Point s4 = {4,1};
Point s5 = {5,1};
Point s6 = {6,1}; 
Point s7 = {6,2};
Point s8 = {6,3};
Point s9 =  {6,4};
Point s10 = {5,4};
Point s11 = {4,4};
Point s12 = {3,4};
Point s13 = {2,4};
Point s14 = {1,4}; 
Point s15 = {1,5};
Point s16 = {1,6}; 
Point s17 = {2,6};
Point s18 = {3,6};
Point s19 = {4,6};
Point s20 = {5,6};
Point s21 = {6,6};

Point letterS[21] = {s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21};


void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  CheckButtonsPress();
    if (Button_Up){    //Snake Up
      direction = 0;
    }
    if (Button_Down){    //Snake Down
      direction = 180;
    }
    if (Button_Right){    //Snake right
      direction = 90;
    }
    if (Button_Left){    //Snake Left
      direction = 270;
    }
  movement();
  drawS();
  DisplaySlate();
  delay(100);
  ClearSlate();
}// Last Line



void movement()
{
  for (int i = marker-1; i > -1; i--)
  {
    if (direction == 0){    //Going up increases y
        letterS[i].y++;
    }
    if(letterS[i].y > 7 ){    //Loops back to bottom
      letterS[i].y = 0;
    }
    if (direction == 90){    //Going right increases x
      letterS[i].x++;
    }
   if (letterS[i].x > 7){    //Loops left
      letterS[i].x = 0;
    }
   if (direction == 180){    //Going down decreases y
      letterS[i].y--;
     }
   if (letterS[i].y < 0){    //bottom loops to the top
      letterS[i].y = 7;
    }
   if (direction == 270){    //Left decreases x
      letterS[i].x--;
    }
    if (letterS[i].x < 0){    //Loops left back to right
      letterS[i].x = 7;   
    }      
  }
}

void drawS()
{
  for (int i = 0; i < marker; i++){
      DrawPx(letterS[i].x,letterS[i].y,Blue);
  }
}





