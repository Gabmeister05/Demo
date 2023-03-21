void setupPopulation() {
  //
  float musicButtonDrawX = appWidth * 1/2;
  float musicButtonDrawY = appHeight * 1/2;
  //
  pauseScaleWidth = 1.0/25.0; //used to change x-size
  pauseScaleHeight = 1.0/3.0; //used to change y-size
  println(pauseScaleWidth);
  //
  pauseWidth = appWidth * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = appHeight * pauseScaleHeight;
  //
  stopX = musicButtonDrawX - (appWidth * 14/30);
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;
  //
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX2 = pauseX2 + pauseWidth;
  playY2 = playY1 + (playY3 -playY1)*1/2;
  playX3 = playX1;
  playY3 = pauseY1 + pauseHeight;
  //
}//End setupPopulation()
