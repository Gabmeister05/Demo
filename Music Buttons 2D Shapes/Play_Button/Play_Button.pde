//Global Variabes
float playX1, playY1, playX2, playY2, playX3, playY3, playWidth, playHeight
float playScaleWidth, playScaleHeight
//
void setup() {
  //Landscape (portrait, square)
  size(400, 400); //width, height
  fullScreen(); //displayWidth, displayHeight
  //Population, visual data
  float musicButtonDrawX = width * 5/6;
  float musicButtonDrawY = height * 1/2
  playScaleWidth = 1.0/25.0; //used to change x-size
  playScaleHeight = 1.0/3.0; //used to change y-size
  println(playScaleWidth);
  playWidth = width * playScaleWidth;
  playX1 = musicButtonDrawX;
  playY1 = musicButtonDrawY;
  playX2 =
  playY2 =
  playX3 =
  playY3 =
  playHeight = height * pauseScaleHeight;
}//End setup
//
void draw() {
  triangle( playX1, playY1, playX2, playY2, playX3, playY3, playWidth, playHeight );
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program (Driver)
