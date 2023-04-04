//Global Variables
PFont titleFont;
float textRectX, textRectY, textRectWidth, textRectHeight;
String string;
//
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  titleFont = createFont ("harrington, 55");
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
void flatText() {
}// End flatText
//
//End Text SubProgram
