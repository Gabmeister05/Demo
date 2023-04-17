//Global Variables
PFont font;
color ink, purpleInk=#AF00FF, whiteInk=#FFFFFF;
int alignHorizontal, alignVertical;
String string = "Global Values of String";
//
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  font = createFont ("Harrington", 55);
}// End textSetup
//
void preTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(font, height);
}// End preTextDraw
//
void textDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float textRectX, float textRectY, float textRectWidth, float textRectHeight ) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, font );
  textSize(textCalculator(height, string, textRectWidth));
  text(string, textRectX, textRectY, textRectWidth, textRectHeight);
  textReset();
}// End textDraw
//
void textReset () {
  fill(whiteInk);
}// End textReset
//
float textCalculator( float size, String string, float rectWidth ) {
  textSize(size);
  while ( textWidth(string) > rectWidth )
  {
    size = size * 0.99;
    textSize(size);
  }
  size = size *0.55;
  return size;
}// End textCalculator
void textkeyPressed() {
}// End textkeyPressed
//
void textmousePressed() {
}// End textmousePressed
//
//End Text SubProgram
