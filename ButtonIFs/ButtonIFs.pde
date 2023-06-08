//Global Variables
float appWidth=0, appHeight=0;
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
  //fullScreen();
  size( 600, 400 );
  int appWidth = width;
  int appHeight = height;
  println (width, height, displayWidth, displayHeight);
  if ( width >= displayWidth || height >= displayHeight )
  {
    appWidth = 0;
    appHeight = 0;
    println("Display is too small for App");
    exit();
  } else
  {
    appWidth = width;
    appHeight = height;
  }
  println("App Geometry isl", "\tApp Width:", appWidth, "\t\tApp Height", appHeight);
  //
  //Population
  //
  buttonX1 = appWidth*1/4;
  buttonY1 = appHeight*3/4;
  buttonWidth1 = appWidth*1/5;
  buttonHeight1 = appHeight*1/5;
  buttonX2 = appWidth*3/4;
  buttonY2 = buttonY1;
  buttonWidth2 = buttonWidth1;
  buttonHeight2 = buttonHeight1;
  rectDisplayX = appWidth*1/8;
  rectDisplayY = appHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  ellipseX = appWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = appWidth*1/8; //Note: formulae not "square" but same
  ellipseYDiameter = appHeight*1/8;
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
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 25);
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
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
