//Global Variables
float displayWidth=0.0, displayHeight=0.0;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
//
void setup()
{
  fullScreen();
  int displayWidth = width;
  int displayHeight = height;
  println (width, height, displayWidth, displayHeight);
  if ( width >= displayWidth || height >= displayHeight )
  {
    displayWidth = 0;
    displayHeight = 0;
    println("Display is too small for App");
    exit();
  } else
  {
    displayWidth = width;
    displayHeight = height;
  }
  //
  //Population
  //
  buttonX1 = displayWidth*1/4;
  buttonY1 = displayHeight*3/4;
  buttonWidth1 = displayWidth*1/5;
  buttonHeight1 = displayHeight*1/5;
  buttonX2 = displayWidth*3/4;
  buttonY2 = buttonY1;
  buttonWidth2 = buttonWidth1;
  buttonHeight2 = buttonHeight1;
} //End setup
//
void draw()
{
  background(black);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  ellipse(x, y, xDiameter, yDiameter);
  text(buttonTextX1, buttonTextY1, buttonTextWidth1, buttonTextHeight1);
  text(buttonTextX2, buttonTextY2, buttonTextWidth2, buttonTextHeight2);
  fill(white);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
