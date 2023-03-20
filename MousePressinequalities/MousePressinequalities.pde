/* Prototyping program for locial button pressing
 */
//
//Global Variables
float stopX, stopY, stopWidth, stopHeight;
boolean stopHoverOver-false;
//
void setup() {
  size(800, 400);
  //
  //Population
  float startingX = width*1/2;
  float startingY = height*1/2;
  float buttonReferentMeasure = width*1/9; //7 buttons plus 2 buttons of space
  float buttonSide = buttonReferentMeasure; //All buttons are squares
  //
  stopX = startingX - 4.5 * (buttonReferentMeasure);
  stopY = startingY;
  stopWidth = buttonSide;
  stopHeight = buttonSide;
  //
}//End setup
//
void draw() {
  //Example STOP Button: butto is the logical rectangle
  if ( mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight ) println("Hovering Over Button");
  rect(stopX, stopY, stopWidth, stopHeight);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //
  /* Steps for the conditional
  mouseX>= && mouseX<= && mouseY>= && mouseY<=
  then, add the variables of the rec()
  */
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) 
  {
    println("Button Pressed");
    stopHoverOver = true;
  }
}//End mousePressed
//
//End Main Program
