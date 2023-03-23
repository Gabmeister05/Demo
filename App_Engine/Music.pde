//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, iceandfire, iwishiknew, factory, daytimebonfire;
int currentSong=0;
Boolean autoPlayOn=false;
Boolean playOn=false;
//
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3;
float stopX, stopY, muteX, muteY, loopIX, loopIY;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextXR2, nextYR2, nextWidth;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevXR, prevYR, prevWidth;
float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY;
//
color deafaultWhite=#FFFFFF, red=#FF0000, green=#00FF00; //Note: colours for nightmode
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
  //print("Confirming Center X:", centerX);
  //print("/t Confirming Center Y:", centerY);
  //println("/t Confirming Button Position Couter:", buttonPosition);
  //
  //Button Space
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //rect( spaceX, spaceY, spaceHeight, buttonSide );
  //
  //Stop Button
  rect( stopX, stopY, buttonSide, buttonSide );
  //
  //Pause Button
  rect( pauseX1, pauseY1, buttonSide, buttonSide );
  rect( pauseX2, pauseY2, buttonSide, buttonSide );
  //
  //Play Button
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
  //MUTE Button
  rect( muteX, muteY, buttonSide, buttonSide ); //Layout
  //Students to develop
  //
  //Fast Forward in the Song
  //rect( ffX, ffY, buttonSide, buttonSide ); //Layout
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the Song
  //rect( rrX, rrY, buttonSide, buttonSide ); //Layout
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next Button, skip file
  //rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  rect( nextXR2, nextYR2, nextWidth, buttonSide );
  //
  //Previous Button
  //rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevXR, prevYR, prevWidth, buttonSide );
  //
  //Loop the Song Once
  //Students to Develop
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //Layout
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //Layout
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
  //OPTINAL Shuffle
  //rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  //2-D Shapes
  //
}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) fastRewind(); //teacher started
  if ( key == 'N' || key=='n' ) nextSong(); //teacher started
  if ( key == 'B' || key=='b' ) previousSong(); //See Next Button, student finishes Previous Button
  if ( key == 'L' || key=='l' ) loopSongOnce(); //loops current song once
  if ( key == 'O' || key=='o' ) loopSong(); //loops current song infinitely
  if ( key == 'K' || key=='k' ) loopPlaylist(); //entire playlist
  if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
  //
}//End keyPressedMusic
//
void mousePressedMusic() {
  if ( mouseX>=playX && mouseX<=playX+buttonSide && mouseY>=playY && mouseY<=playY+buttonSide ) playPause();
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
void autoPlay() { //See autoPlayMusic()
  if ( autoPlayOn == false ) {
    autoPlayOn = true;
    playOn=true;
  } else {
    autoPlayOn = false;
    playOn=false;
  }
}//End Auto Play
//
void playPause() {
  //Play-Pause Button
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    playOn=false;
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*3/4 ) {
    //CAUTION: without code, this conditional will not do anything
  } else {
    autoPlay();
    songs[currentSong].play(); //no auto rewind like loop()
    playOn=true;
  }
}//End Play-Pause
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
void stopSong() {
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
