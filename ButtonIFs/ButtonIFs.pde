//Global Variables
int displayWidth=0.0, displayHeight=0.0;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
//
void setup()
{
  fullscreen( 1200, 800 );
  boolean displayWidth =  mismatch width;
  boolean displayHeight = mismatch height;
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
  buttonHeight1 = displayHeight*4/5;
} //End setup
//
void draw()
{
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
