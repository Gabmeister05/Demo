void population() 
{
  //Population: visual data \
  float buttonReferentMeasure = width * 1/9; //7 buttons plus 2 buttons of space
  buttonSide = buttonReferentMeasure; //All buttons are squares
  spaceWidth = buttonReferentMeasure * 1/3;
  //
  float centerX = width * 1/2;
  float centerY = height * 1/2;
  int buttonPositionColumn buttonPositionRow;
  print("Confirming Center X:", centerX);
  println("\t COnfirming Center Y:". centerY);
  //
  pauseX1 = centerX - buttonReferentMeasure*1/2;
  pauseY1 = centerY - buttonReferentMeasure*1/2;
  pauseWidth = buttonReferentMeasure * 1/3;
  pauseX2 = centerX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  playX = playX1 = pauseX1;
  playY = playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + buttonReferentMeasure;
  
}//End Population
//
//End Population Subprogram
