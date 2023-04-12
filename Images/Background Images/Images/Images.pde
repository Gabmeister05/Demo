/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
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
//
//C:\FS-052\studuser$\Gr12\g.kazimierczak\My Documents\GitHub\Demo\Images\Images Used\Landscape
//Pathway & Files
String upFolder = "..";
String opendFolder = "/";
String folder1 = "Images Used";
String folder2 = "Landscape";
String fileName = "Count-Dooku.jpeg";
pic = loadImage( upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+upFolder+openFolder+folder1+openFolder+folder2+openFolder+fileName );
int picWidth = 1280;
int picHeight = 720;
//Larger Dimension Algorithm
if ( picWidth >= picHeight ) { //TRUE if Landscape
  largerDimension = picWidth;
  smalerDimension = picHeight;
  imageHeightRatio = smallerDimension / largerDimension;
  picWidthAdjusted = imageBackgroundWidth;
  picHeightAdjusted = imageBackgroundWidth * imageHeightRatio;
} else { //FALSE if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  imageWidthRatio = largerDimension / smallerDimension;
  picHeightAdjusted = imageBackgroundHeight;
  picWidthAdjusted = imageBackgroundHeight * imageWidthRatio;
}
//
//Rectangle layout and Image drawing to Canvas
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
if ( nightMode==false ) (tint(255, 128); //Grey-Scale, day use: used 1/2 tint for white (128/255 = 1/2)
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
//image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
image( pic, imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted );
//End Main Program
