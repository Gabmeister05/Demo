//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[3]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Set the Directory or Pathway to the Music
  //Pathway
}//End setupMusic
//
void drawMusic() {}//End drawMusic
//
void keyPressedMusic() {}//End keyPressedMusic
//
void mousePressedMusic() {}//End mousePressedMusic
//
//End Music SubProgram