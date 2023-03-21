void setupPopulation() {
  //
  float startingX = appWidth * 1/2;
  float startingY = appHeight * 1/2;
  //
  pauseScaleWidth = 1.0/25.0; //used to change x-size
  pauseScaleHeight = 1.0/3.0; //used to change y-axis
  //println(pauseScaleWidth);
  //
  pauseWidth = startingX * pauseScaleWidth;
  pauseHeight = startingY * pauseScaleHeight;
  pauseX1 = startingX - pauseWidth - pauseWidth*1/2;
  pauseY1 = startingY - pauseHeight * 1/2;
  pauseX2 = startingX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  //
  stopX = startingX - (appWidth * 14/30);
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;
  //
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + pauseHeight;
  playX2 = pauseX2 + pauseWidth;
  playY2 = playY1 + (playY3 - playY1)*1/2;
  //
} //End setupPopulation()
