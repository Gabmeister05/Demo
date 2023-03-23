//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variabes
//
void setup() {
  //Display
  size(800, 600); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //
  setupMusic();
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
}//End mousePressed
//
//End MAIN Program (Driver)
