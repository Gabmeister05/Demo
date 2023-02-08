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
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[3]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  File anyDirectory = new File(path); //Used when exported
  println("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items In FilesList:", FileListAnyDirectory.length);
  int i = 0; //songs index
  for (File file : FileListAnyDirectory) {
     if ( file.isFile() ) {
       if ( file.toString().endWith(".mp3") ) {
         println("Any Directory is working");
         //song[i] = minim.loadFile ( file.getName() );
         i = i + 1
       }
     }
  }
//
//When Prototyping, songs is not loaded from anyDirectory
 File[] FileListGutHubDir = githubDirectory.listFiles();
 if ( song[0] == null ) {
  printArray(FileListGutHubDir);
  for (File file : FileListGitHubDir) {
    if ( file.isFile() ) {
      if ( file.toString().endWith(".mp3") ) {
        println("File Name .mp3 only", file.getName() );
        song[i] = minim.loadFile(file.getName());
        i+=1;
      }
    }
  }
} //Catch when Pathway NULL, not exported
  songs[0].loop(0); //Channeg the index manually
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program 
