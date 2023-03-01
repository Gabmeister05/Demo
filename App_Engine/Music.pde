//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[4]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
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
  songs[] = minim.loadFile( path + ice & fire );
  song[] = minim.loadFile( path + i wish i knew )
  soundEffects[] = minim.loadFile( path + factory );
  soundEffects[] = minim.loadFile( path + daytime bonfire );
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
  path = "data/";
  ice & fire = "Ice & Fire - King Canyon.mp3";
  i wish i knew  = "I Wish I Knew - Otis McDonald.mp3";
  factory = "Factory Background.mp3";
  daytime bonfire = "Daytime Forrest Bonfire.mp3";
}//End concatentation
//
//End Music SubProgram
