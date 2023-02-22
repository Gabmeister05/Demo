//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float angle;
color black=#000000, resetcolorNightMode=#FFFF4B; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly
//Population
//
void drawMusicButtons() {
 drawPauseButton();
 drawStopButton();
 drawPlayButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  fill( black ); //Change this to ternary operator
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawPauseButton()
//
void drawStopButton () {
  fill( black ); //Change this to ternary operator
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawStopButton()
//
void drawPlayButton() {
  fill( black ); //Change this to ternary operator
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  rotate( HALF_PI );
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawPlayButton()
//
//End Music Player Buttons
