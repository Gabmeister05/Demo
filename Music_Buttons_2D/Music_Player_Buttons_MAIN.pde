//Global Variables
int appWidth, appHeight;
//
void setup() {
  //Landscape (portrait, square)
  //size(700, 400); //width, height
  fullScreen(); //displayWidth, displayHeight
  //
  //ERROR: CANVAS is bigger than Display
  //ERROR: stating display geomtery (i.e. landscape, portrait, Square)
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population, visual data
  setupPopulation();
  //
}//End setup
//
void draw() {
  drawMusicButtons();
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
