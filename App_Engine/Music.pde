//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, iceandfire, iwishiknew, factory, daytimebonfire;
int currentSong=0;
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
  songs[0] = minim.loadFile( pathway + iceandfire );
  songs[1] = minim.loadFile( pathway + iwishiknew );
  soundEffects[0] = minim.loadFile( pathway + factory );
  soundEffects[1] = minim.loadFile( pathway + daytimebonfire );
  //
}//End setupMusic
//
void drawMusic() {}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  //
  if ( key == 'm' || key == 'M' ) {//Mute Button, not PAUSE, only affect speakers
  //ERROR: this MUTE Button only works when song is playing
  //ERROR Fix: unmute or rewind when song is not playing (i.e. unmute next song)
    if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*3/4 ) {
      //Students to finish SMARTER Mute Button
      //ERROR: music player breaks if song finishes
      /* Ideas
       - rewind the song
       - play the next song automatically
       - play of notification to choose the next song
       */
      songs[currentSong].rewind(); //simple solution, contains ERROR
    } else {
      songs[currentSong].mute();
    }
  }//End Mute Button
  //
  //Forward & Reverse Skip
  if ( key == 'f' || key == 'F' ) {
    //ERROR: if at end, plays begining
    songs[currentSong].skip(1000); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*3/4 ) {
    //Finish Conditional
    //ERROR Catch: if end of song then next song
  }//End Forward
  if ( key == 'f' || key == 'R' ) {
    //Spamming R means start playing at begining of song
    songs[currentSong].skip(-1000); //parameter in milliseconds
  }//End Reverse
  //
  //Single Loop
  //if (key == '1') song{currentSongs].loop(1); //ERROR: immediately restarts song
  if ( key == '1' ) {
    //Finish Playing current song, then replay once
    delay( songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if song is playing
    songs[currentSong].loop(0);
  }//End Single Loop
  //
  //Loop Infinte Times
  if ( key <= '9' && key != '1' ) {
    //Finish Playing current song, then replay once
    delay( songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if song is playing
    songs[currentSong].loop(-1); //parameter is empty or -1
  }//End Infinte Times
  //
  //Stop
  if ( key == 's' || key == 'S' ) {
    /*Note: possible smarter STOP Buttons
  - include soft "PAUSE" for first 15 seconds
  - include auto previous & next track if STOP at beginning or end of ile
  */
  if ( songs[currentSong].isPlaying() ) { 
  songs[currentSong].pause(); 
  songs[currentSong].rewind(); 
} else { 
  songs[currentSong].rewind();
 }
  }//End Stop
  //
  //Play-Pause
if ( key == 'p' || key == 'P' ) { // Play-Pause Button
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >= songs[currentSong].length()*3/4) {
  } else {
    songs[currentSong].play(); //no auto rewind like loop()
  }
}// End Play-Pause

//
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  iceandfire = "Ice & Fire - King Canyon.mp3";
  iwishiknew  = "I Wish I Knew - Otis McDonald.mp3";
  factory = "Factory Background.mp3";
  daytimebonfire = "Daytime Forrest Bonfire.mp3";
}//End concatentation
//
//End Music SubProgram
