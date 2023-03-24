void population()
{
  //Population: visual data (hint, notes will lead to FOR or WHILE Loops to populate)
  float buttonReferentMeasure = width * 1/9;
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * 1/3;
  //
  float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * 1/2;
  int buttonPositionColumn;
  print("Confirming Center X:", centerX);
  println("\t Confirming Center Y:", centerY); //Illstrates a character escape
  //
  pauseX1 = centerX -  pauseWidth - pauseWidth*1/2;
  pauseY1 = centerY - pauseHeight*1/2;
  pauseWidth = centerX * buttonReferentMeasure;
  pauseHeight = centerY * buttonReferentMeasure;
  pauseX2 = centerX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  playX = playX1 = pauseX1;
  playY = playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + buttonReferentMeasure;
  //Note: need playY3 before playY2
  playX2 = playX1 + buttonReferentMeasure;
  playY2 = playY1 + (playY3-playY1)*1/2;
  //
  buttonPositionColumn = 3;
  stopX = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure );
  stopY = pauseY1;
  //
} //End Population
//
//End Population Subprogram
