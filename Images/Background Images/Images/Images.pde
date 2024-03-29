/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
float whiteSpace=0.0, picX_Adjusted=0.0, picY_Adjusted=0.0;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
Boolean imageCenter=false, imageRightBottom=false; //Dev-level Image Justification
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
String pathway = Drive+openFolder+FS+openFolder+starDust+openFolder+Grade+openFolder+Name+openFolder+docFolder+openFolder+gitFolder+openFolder+resFolder+openFolder+folder0+openFolder+folder1+openFolder+folder2+openFolder;
String fileName = "Count-Dooku.jpeg";
pic = loadImage( pathway + fileName );
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
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
  //If Image fits in rect: format or justify image
  whiteSpace = imageBackgroundHeight - picHeightAdjusted;
  //if image left justified, the no to X&Y-Vars
  picY_Adjusted = imageBackgroundY;
  picX_Adjusted = imageBackgroundX;
  if ( imageCenter==true ) picY_Adjusted = imageBackgroundY + whiteSpace*1/2;
  if ( imageRightBottom==true ) picY_Adjusted = imageBackgroundY + whiteSpace;
  //
  if ( picHeightAdjusted > imageBackgroundHeight ) { //ERROR Catch: adjusted height is bigger then rect()
    picHeightAdjusted = imageBackgroundHeight;
    picWidthAdjusted =  picWidthAdjusted * imageHeightRatio;
    //If Image fits in rect: format or justify image
    whiteSpace = imageBackgroundWidth - picWidthAdjusted;
    //if image left justified, the no to X&Y-Vars
    picX_Adjusted = imageBackgroundX;
    picY_Adjusted = imageBackgroundY;
    if ( imageCenter==true ) picX_Adjusted = imageBackgroundX + whiteSpace*1/2;
    if ( imageRightBottom==true) picX_Adjusted = imageBackgroundX + whiteSpace;
  }
} else { //FALSE if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  imageWidthRatio = float (largerDimension) / float (smallerDimension);
  picHeightAdjusted = imageBackgroundHeight;
  picWidthAdjusted = picHeightAdjusted * imageWidthRatio;
  //If Image fits in rect: center the smaller dimension
  whiteSpace = imageBackgroundWidth - picWidthAdjusted;
  //if image left justified, the no to X-Var
  picX_Adjusted = imageBackgroundX;
  picY_Adjusted = imageBackgroundY;
  if ( imageCenter==true ) picY_Adjusted = imageBackgroundY + whiteSpace*1/2;
  if ( imageRightBottom==true ) picY_Adjusted = imageBackgroundY + whiteSpace;
  //
  if ( picWidthAdjusted > imageBackgroundWidth ) { //ERROR Catch: adjusted width is bigger then rect()
    picWidthAdjusted = imageBackgroundWidth;
    picHeightAdjusted = picHeightAdjusted * imageWidthRatio;
    //If Image fits in rect: format or justify image
    whiteSpace = imageBackgroundHeight - picHeightAdjusted;
    //if image left justified, the no to X&Y-Vars
    picX_Adjusted = imageBackgroundX;
    picY_Adjusted = imageBackgroundY;
    if ( imageCenter==true ) picY_Adjusted = imageBackgroundY + whiteSpace*1/2;
    if ( imageRightBottom==true) picY_Adjusted = imageBackgroundY + whiteSpace;
  }
}
//
//Rectangle layout and Image drawing to Canvas
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
if ( nightMode==false ) tint(255, 128); //Grey-Scale, day use: used 1/2 tint for white (128/255 = 1/2))
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
//image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
println( picWidthAdjusted, picHeightAdjusted );
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted );
//End Main Program
