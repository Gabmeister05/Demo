//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variabes
int appWidth=0, appHeight=0;
//
void setup() {
  //Display
  size(800, 600); //width, height
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  setupMusic();
  setupDisplay();
  population();
  //
}//End setup
//
void draw() {
  drawMusic();
}//End draw
//
void keyPressed() {
  keyPressedMusic();
  //
}//End keyPressed
//
void mousePressed() {
  mousePressedMusic();
}//End mousePressed
//
//End MAIN Program (Driver)
