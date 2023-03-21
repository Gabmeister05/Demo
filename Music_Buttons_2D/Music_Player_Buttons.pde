//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float sfX1, sfY1, sfX2, sfY2, sfX3, sfY3;
float sfX4, sfY4, sfWidth, sfHeight;
float sbX1, sbY1, sbX2, sbY2, sbX3, sbY3;
float sbX4, sbY4, sbWidth, sbHeight;
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
 drawSkipForwardButton();
 drawSkipBackwardButton();
 drawMuteButton();
 drawLoopSingleButton();
 drawLoopInfiniteButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  fill( black ); //Change this to ternary operator
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill( resetcolorDayMode ); //Change this to ternary operator
}//End drawPauseButton()
//
void drawStopButton () {
  fill( black ); //Change this to ternary operator
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill( resetcolorDayMode ); //Change this tp ternary operator
}//End drawStopButton()
//
void drawPlayButton() {
  scale(0.62); //Could be changed but you'll also have to change the translation
  fill( black ); //Change this to ternary operator
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  fill( resetcolorDayMode ); //Change this to ternary operator
}//End drawPlayButton()
//
void drawSkipForwardButton() {
  triangle( sfX1, sfY1, sfX2, sfY2, sfX3, sfY3 );
  rect( sfX4, sfY4, sfWidth, sfHeight );
}//End drawSkipForwardButton()
//
void drawSkipBackwardButton() {
  triangle( sbX1, sbY1, sbX2, sbY2, sbX3, sbY3 );
  rect( sbX4, sbY4, sbWidth, sbHeight );
}//End drawSkipBackwardButton()
//
void drawMuteButton() {
}//End drawMuteButton
//
void drawLoopSingleButton() {
}//drawLoopSingleButton
//
void drawLoopInfiniteButton() {
}//drawLoopInfiniteButton
//
//End Music Player Buttons
