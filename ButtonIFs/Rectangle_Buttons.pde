//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;

void drawRectangleButton1()
{
  float ScaleWidth = 1.0/1.0; //used to change x-axis
  float ScaleHeight = 1.0/1.0; //used to change y-axis
  float startingX = width*1/2 * ScaleWidth;
  float startingY = height*1/2 * ScaleHeight;
  float buttonWidth = width*1/9;
  float buttonHeight = buttonWidth;
  //
  //Population
  buttonX1 = startingX - buttonWidth*1/2;
  buttonY1 = startingY - buttonHeight*1/2;
  buttonWidth1 = buttonWidth;
  buttonHeight1 = buttonHeight;
  //
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
} //End Draw Rectangle Button One
//
void drawRectangleButton2() {
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
} //End Draw Rectangle Button Two
//End One Rectangle SubProgram
