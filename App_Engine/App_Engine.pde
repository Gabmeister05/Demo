//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variabes
int appWidth, appHeight;
//
void setup() {
  //Display
  size(800, 600); //width, height
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  println (width, height, displayWidth, displayHeight);
  if ( width >= displayWidth || height >= displayHeight )
  {
    appWidth = 0;
    appHeight = 0;
    println("Display is too small for App");
    exit();
  } else
  {
    appWidth = width;
    appHeight = height;
  }
  println("App Geometry isl", "\tApp Width:", appWidth, "\t\tApp Height", appHeight);
  //
  //
  setupMusic();
  population();
  //
}//End setup
//
void draw() {
  drawMusic();
  if (rectON==true && triangleON==false) rect(pauseX1, pauseY1, buttonSide, buttonSide);
  if (rectON==false && triangleON==true) triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
}//End draw
//
void keyPressed() {
  keyPressedMusic();
  //
}//End keyPressed
//
void mousePressed() {
  mousePressedMusic();
  rectON = false;
  triangleON = false;
  if ( mouseX>=pauseX1 && mouseX<=pauseX1+pauseWidth && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight ) rectON = true;
  if ( mouseX>=playX && mouseX<=playX+buttonSide && mouseY>=playY && mouseY<=playY+buttonSide ) triangleON = true;
}//End mousePressed
//
//End MAIN Program (Driver)
