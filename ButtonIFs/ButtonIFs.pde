//Global Variables
//
void setup()
{
  size(1200, 800);
  flatText();
  drawRectangleButton();
  textSetup();
} //End setup
//
void draw()
{
  textDraw( height, purpleInk, CENTER, CENTER, font, string, playX1, playY1, playWidth, playHeight );
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
void flatText() {
} //End flatText
//End MAIN Program
