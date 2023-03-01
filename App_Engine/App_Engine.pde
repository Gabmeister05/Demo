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
  //
  setupMusic();
  //
  songs[currentSong].loop(0); //Change the index manually
  //
}//End setup
//
void draw() {
  //Debugging in CONSOLE
  println("Current Song Position:", songs[currentSong].position() );
}//End draw
//
void keyPressed() {
  keyPressedMusic();
  //
  //Prototyping to copy when works
  if ( key == 'm' || key == 'M' ) {//Mute Button, not PAUSE, only affect speakers
    if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {}
  else{
    songs[currentSong].mute();
  }
 }//End Mute Button
   
  //
  }//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program (Driver)
