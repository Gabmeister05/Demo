//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float deg;
float x, y;
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
  translate( 1000, 100000 );
  rotate( radians(0.0) );
  fill( black ); //Change this to ternary operator
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawPlayButton()
//
void drawFastForwardButton() {}//End FastForwardButton()
//
void drawFastBackwardButton() {}//End drawFastBackwardButton()
//
void drawSkipForwardButton() {}//End drawSkipForwardButton()
//
void drawSkipBackwardButton() {}//End drawSkipBackwardButton()
//
//End Music Player Buttons
