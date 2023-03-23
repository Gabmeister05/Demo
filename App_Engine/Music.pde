//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, iceandfire, iwishiknew, factory, daytimebonfire;
int currentSong=0;
Boolean autoPlayOn=false;
//
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3;
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
void drawMusic() {
  //Debugging in CONSOLE
  print("Current Song Position:", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
  //
  autoPlayMusic();
  //
}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  //
  if ( key == 'm' || key == 'M' ) {
    mute();
  }//End Mute Button
  //
  //Forward & Reverse Skip
  if ( key == 'f' || key == 'F' ) {
    forward();
  }//End Forward
  if ( key == 'r' || key == 'R' ) {
    reverse();
  }//End Reverse
  //
  //Single Loop
  //if (key == '1') song{currentSongs].loop(1); //ERROR: immediately restarts song
  if ( key == '1' ) {
    singleLoop();
  }//End Single Loop
  //
  //Loop Infinte Loop
  if ( key <= '9' && key != '1' ) {
    infiniteLoop();
  }//End Infinte Loop
  //
  //Stop
  if ( key == 's' || key == 'S' ) {
    stop();
  }//End Stop
  //
  //Play-Pause
  if ( key == 'p' || key == 'P' ) {
    playPause();
  }// End Play-Pause
  //
  //Autoplay Button
  if ( key == 'o' || key == 'O' ) {
    if ( autoPlayOn == false ) {
      autoPlayOn = true;
    } else {
      autoPlayOn = false;
    }
  }//End Autoplay
  //
  //Next Song Button
  if ( key == 'n' || key == 'N' ) {
    songNext();
  } //End Next Song Button
  //
  //Previous Song Button
  if ( key == 'b' || key == 'B' ) {
    songPrevious();
  } //End Previous Song Button
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
void autoPlayMusic() {
  if ( autoPlayOn ) {
    if ( songs[currentSong].position() <= songs[currentSong].length()*3/4 ) {
      songs[currentSong].play();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
      currentSong+=1;
    } else {
      songs[currentSong].rewind();
    }
    //Ex#1: .position() >= .length(), then rewind(), currentSong+=1, .play()
    //Ex#2: .isPlaying(), when false rewind(), currentSong+=1, .play()
    //ERROR Catch:ArrayOutOfBounds
  }
}//End Auto Play Music
//
void mute() {
  //Mute Button, not PAUSE, only affect speakers
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
    currentSong++; //ERROR: Just like the autoplay, both next and previous songs are mixed and match together
    songs[currentSong].rewind(); //simple solution, contains ERROR
  } else {
    songs[currentSong].mute();
  }
}//End Mute
//
void forward() {
  //ERROR: if at end, plays begining
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].skip(10000); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*3/4 );
  //Finish Conditional
  //ERROR Catch: if end of song then next song
}//End Forward
//
void reverse() {
  //Spamming R means start playing at begining of song
  songs[currentSong].skip(-10000); //parameter in milliseconds
}//End Reverse
//
void singleLoop() {
  //Finish Playing current song, then replay once
  delay( songs[currentSong].length() - songs[currentSong].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if song is playing
  songs[currentSong].loop(0);
}//End Single Loop
//
void infiniteLoop() {
  //Finish Playing current song, then replay once
  delay( songs[currentSong].length() - songs[currentSong].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if song is playing
  songs[currentSong].loop(-1); //parameter is empty or -1
}//End Infinite Loop
//
void stop() {
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
void playPause() {
  //Play-Pause Button
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*3/4 ) {
    //CAUTION: without code, this conditional will not do anything
  } else {
    songs[currentSong].play(); //no auto rewind like loop()
  }
}//End Play-Pause
//
void songNext() {
  if ( songs[currentSong].isPlaying() ) {
  } else if ( currentSong == songs.length - 1 ) { //ERROR Catch:ArrayOutOfBounds
    currentSong = songs.length - songs.length; //Intention is Zero
    songs[currentSong].rewind();
  } else {
    //.rewind();
    //THROWS ArrayOutOfBounds Error
    currentSong++;
    songs[currentSong].rewind();
  }
}// Next Song
//
void songPrevious() {
  if ( songs[currentSong].isPlaying() ) {
  } else if ( currentSong == songs.length - 1 ) { //ERROR Catch:ArrayOutOfBounds
    currentSong = songs.length - songs.length; //Suppost intention is Zero
    songs[currentSong].rewind();
  } else {
    //.rewind();
    //ERROR: -1 is out of bounds, needs a better solution instead of rewind()
    //error is gone but it can't rewind from song[0] back to whaatever songs the program has
    currentSong--;
    currentSong++;
  }
}//Previous Song
//
//End Music SubProgram
