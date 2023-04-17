//Global Variables
//
void setup()
{
  size(1200, 800);
  flatText();
  drawRectangleButton1();
  drawRectangleButton2();
  textSetup();
} //End setup
//
void draw()
{
  textDraw( height, purpleInk, CENTER, CENTER, font, string1, buttonX1, buttonY1, buttonWidth1, buttonHeight1 );
  textDraw( height, purpleInk, CENTER, CENTER, font, string2, buttonX2, buttonY2, buttonWidth2, buttonHeight2 );
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
