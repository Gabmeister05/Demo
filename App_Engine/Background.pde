//Global Variables
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
float whiteSpace=0.0, picX_Adjusted=0.0, picY_Adjusted=0.0;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
Boolean imageCenter=false, imageRightBottom=false; 
//
size(800, 600); //width, height
appWidth = width;
appHeight = height;
//
//Population
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
String pathway = C:/FS-052/studuser$/Gr12/g.kazimierczak/My Documents/GitHub/Demo/App_Engine/image/Count-Dooku.jpeg;
String fileName = "Count-Dooku.jpeg";
pic = loadImage( pathway + fileName );
int picWidth = 1280;
int picHeight = 720;
