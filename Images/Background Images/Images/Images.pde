/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;

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
String Drive = "C:";
String FS = "FS-052";
String starDust = "studuser$";
String Grade = "Gr12";
String Name = "g.kazimierczak";
String docFolder = "My Documents";
String gitFolder = "GitHub";
String resFolder = "Demo";
String folder0 = "Images";
String openFolder = "/";
String folder1 = "Images Used";
String folder2 = "Landscape";
String fileName = "Count-Dooku.jpeg";
pic = loadImage( Drive+openFolder+FS+openFolder+starDust+openFolder+Grade+openFolder+Name+openFolder+docFolder+openFolder+gitFolder+openFolder+resFolder+openFolder+folder0+openFolder+folder1+openFolder+folder2+openFolder+fileName );
int picWidth = 1280;
int picHeight = 720;
//Larger Dimension Algorithm, any image, ASPECT RATIO
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { //TRUE if Landscape
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float (smallerDimension) / float (largerDimension);
  picWidthAdjusted = imageBackgroundWidth;
  picHeightAdjusted = imageBackgroundWidth * imageHeightRatio
    if ( picHeightAdjusted > imageBackgroundHeight ) { //ERROR Catch: adjusted height is bigger then rect()
    picHeightAdjusted = imageBackgroundHeight;
    picWidthAdjusted =  picWidthAdjusted * ( float(largerDimension)/float(smallerDimension) ); //CASTING, like previous formula
  }
} else { //FALSE if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  imageWidthRatio = float (largerDimension) / float (smallerDimension);
  picHeightAdjusted = imageBackgroundHeight;
  picWidthAdjusted = imageBackgroundHeight * imageWidthRatio;
   if ( picWidthAdjusted > imageBackgroundWidth ) { //ERROR Catch: adjusted height is bigger then rect()
    picWidthAdjusted = imageBackgroundWidth;
    picHeightAdjusted = picHeightAdjusted * ( float(smallerDimension)/float(largerDimension) );
  }
}
//
//Rectangle layout and Image drawing to Canvas
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
if ( nightMode==false ) tint(255, 128); //Grey-Scale, day use: used 1/2 tint for white (128/255 = 1/2))
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
//image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
println( imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted );
image( pic, imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted );
//End Main Program
