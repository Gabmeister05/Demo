void setupPopulation() {
  //
  float musicButtonDrawX = width * 1/2;
  float musicButtonDrawY = height * 1/2;
  //
  pauseScaleWidth = 1.0/25.0; //used to change x-size
  pauseScaleHeight = 1.0/3.0; //used to change y-size
  println(pauseScaleWidth);
  //
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  //
  stopX = musicButtonDrawX - (width * 14/30);
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;
  //
  playX1 = musicButtonDrawX + (width * 5/30);
  playY1 = pauseY1;
  playX2 = musicButtonDrawX - playX1*1/1000;
  playY2 = musicButtonDrawY - playY1*53/100;
  playX3 = playX1*1/2;
  playY3 = playY1;
  //
}//End setupPopulation()
