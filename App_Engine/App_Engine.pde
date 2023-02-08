import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variabes
String Path = new File("").getAbsolutePath(); //Exported
String directory = "//FS-052/studuser$/Gr12/g.kazimierczak/My Documents/GitHub/Demo/App_Engine"; //Not exported
//
void setup() 
{
  File dir = new File(Path);//NULL if not exported
  File[] FileList;
  if( dir == null ) {
    dir = new File(directory);
    Filelist = dir.listfiles();
    for (File file: FileList) {
      if (File.isFile() ) {
        if (file.toString().endWith(".mp3") ) {
          songs - minim.loadFile(file.getName() );
        }
      }
    }
  } else {
    FileList = dir.listfiles(); //Exported Folder
  }//Catch when NULL, not exported
  
  
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program 
