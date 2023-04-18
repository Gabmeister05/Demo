//Global Variables
float displayWidth=0.0, displayHeight=0.0;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; 
boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
String buttonText2= "Or Me";
PFont buttonFont;
color purple = #2C08FF;
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
  println("App Geometry isl", "\tDisplay Width:", displayWidth, "\t\tDisplay Height", displayHeight);
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
  rectDisplayX = displayWidth*1/8;
  rectDisplayY = displayHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  ellipseX = displayWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = displayWidth*1/8; //Note: formulae not "square" but same
  ellipseYDiameter = displayHeight*1/8;
  float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2 ;
  float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2 ;
  x = ellipseRectXCenter;
  y = ellipseRectYCenter;
  xDiameter = ellipseXDiameter;
  yDiameter = ellipseYDiameter;
  //
  println("Start of Console");
  buttonFont = createFont ("Harrington", 55);
} //End setup
//
void draw()
{
  background(black);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if (rectON==true && ellipseON==false) ellipse(x, y, xDiameter, yDiameter);
  text(Click Me, Click Me, buttonWidth1, buttonHeight1);
  text(Or Me, Or Me, buttonWidth2, buttonHeight2);
  fill(white);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  rectON = false;
  ellipseON = false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectON = true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) ellipseON = true;
} //End mousePressed
//
//End MAIN Program
