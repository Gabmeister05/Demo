//Global Variables
PFont titleFont;
//
void textSetup() {
  String[] fontList = PFont.list(); 
    printArray(fontList);
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
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
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
