//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
//
void drawMusicButtons() {
 drawPauseButtons();
 drawStopButton();
}//End drawMusicButtons
//
void drawPauseButtons() {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}//End drawPauseButton()
//
void drawStopButton () {
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
}//End drawStopButton()
//
//End Music Player Buttons
