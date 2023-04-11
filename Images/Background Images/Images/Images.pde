/* Background Image Example
No Aspect Ratio
Filling the Rectangle
*/
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
size(600, 200); //Landscape
appWidth = width;
appHeight = height;
//
//Population
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
pic = loadImage("C:/FS-052/studuser$/Gr12/g.kazimierczak/My Documents/GitHub/Demo/Images/Images Used/Landscape and Square/Count-Dooku.jpeg");
//
//Rectangle layout and Image drawing to Canvas
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
//tint(255, 128); //Grey-Scale, day use: used 1/2 tint for white (128/255 = 1/2)
tint(); //RGB: Night Mode
image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//End Main Program
