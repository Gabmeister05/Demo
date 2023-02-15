//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
color black=#000000, resetcolorNightMode=#FFFF4B; //Night Mode Friendly
color resetcolorDayMode=#FFFFFF; //Not Night Mode Friendly
int rgb=#FFFF00;
float alpha=#000000;
//
void drawMusicButtons() {
 drawPauseButton();
 drawStopButton();
 drawPlayButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  stroke( rgb, alpha );
  fill( black ); //Change this to ternary operator
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawPauseButton()
//
void drawStopButton () {
  stroke( rgb, alpha );
  fill( black ); //Change this to ternary operator
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill( resetcolorDayMode ); //Change this tp ternary opertaor
}//End drawStopButton()
//
void drawPlayButton() {

}//End drawPlayButton()
//
//End Music Player Buttons
