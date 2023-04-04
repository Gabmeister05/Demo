//Global Variables
PFont font;
color ink;
int alignHorizontal, alignVertical;
//
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  font = createFont ("Harrington", 5");
}// End textSetup
//
void preTextDraw() {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(font, height);
}// End preTextDraw
//
void textDraw() {
  preTextDraw();
  textSize(textCalculator(height, string, textRectWidth));
  text(string, textRectX, textRectY, textRectWidth, textRectHeight);
  textReset();
}// End textDraw
//
void textReset () {
}// End textReset
//
float textCalculator() {
  return ;
}// End textCalculator
void textkeyPressed() {
}// End textkeyPressed
//
void textmousePressed() {
}// End textmousePressed
//
//End Text SubProgram
