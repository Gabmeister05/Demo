//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, ice and fire, i wish i knew, factory, daytime bonfire;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Set the Directory or Pathway to the Music
  //Pathway: data / Music or Sound Effect Files
  //
  //Remininder: finish OS_Level COde to auto read pathway and files (See Operating System)
  //
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + ice & fire );
  song[1] = minim.loadFile( pathway + i wish i knew );
  soundEffects[0] = minim.loadFile( pathway + factory );
  soundEffects[1] = minim.loadFile( pathway + daytime bonfire );
  //
}//End setupMusic
//
void drawMusic() {}//End drawMusic
//
void keyPressedMusic() {}//End keyPressedMusic
//
void mousePressedMusic() {}//End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  ice and fire = "Ice & Fire - King Canyon.mp3";
  i wish i knew  = "I Wish I Knew - Otis McDonald.mp3";
  factory = "Factory Background.mp3";
  daytime bonfire = "Daytime Forrest Bonfire.mp3";
}//End concatentation
//
//End Music SubProgram
