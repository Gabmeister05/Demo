/* Prototyping Text
 - Copy a rectangle from the 2d Music Button Shapes
 - Add a Rectangle to put text in
 - Note: could also be a "HoverOver" Feature
 */
//Global Variables
//
void setup() {
  size(1200, 800);
  flatText();
  drawOneRectangle();
  textSetup();
}// End setup
//
void draw() {
  textDraw( height, purpleInk, CENTER, CENTER, font, string, playX1, playY1, playWidth, playHeight );
  textDraw( height, purpleInk, CENTER, CENTER, font, string, playX1, playY1+height*1/4, playWidth, playHeight );
}// End draw
//
void keyPressed() {
}// End keyPressed
//
void mousePressed() {
}// End mousePressed
void flatText() {
}// End flatText
//
//End Main Program
