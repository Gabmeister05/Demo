//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3;
float fbX1, fbY1, fbX2, fbY2, fbX3, fbY3;
float deg=0.0;
float x=0, y=0;
float s=0;
color black=#000000, resetcolorNightMode=#FFFF4B; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly
//Population
//
void drawMusicButtons() {
 drawPauseButton();
 drawStopButton();
 drawPlayButton();
 drawFastForwardButton();
 drawFastBackwardButton();
 drawSkipForwardButton();
 drawSkipBackwardButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  fill( black ); //Change this to ternary operator
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill( resetcolorDayMode ); //Change this tp ternary opertaot
}//End drawPauseButton()
//
void drawStopButton () {
  fill( black ); //Change this to ternary operator
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawStopButton()
//
void drawPlayButton() {
  translate( 1230, 125);
  rotate( radians(90.0) );
  scale(0.62); //Could be changed but you'll also have to change the translation
  fill( black ); //Change this to ternary operator
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawPlayButton()
//
void drawFastForwardButton() {
  triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3 );
}//End FastForwardButton()
//
void drawFastBackwardButton() {
  triangle( fbX1, fbY1, fbX2, fbY2, fbX3, fbY3 );
}//End drawFastBackwardButton()
//
void drawSkipForwardButton() {}//End drawSkipForwardButton()
//
void drawSkipBackwardButton() {}//End drawSkipBackwardButton()
//
//End Music Player Buttons
