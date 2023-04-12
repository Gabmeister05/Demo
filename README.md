# Demo

Demo Only

Top comments are edits in progress*

- Creating button functions on the main app engine, reminder to create and draw the rest of the buttons
- Drawing the rest of the buttons (hopefully) and also creating two new functions for the app engine (more will probably added later on)
- Both Fast Forward and Fast Backward will be on hold for now
- Most of the buttons have functions but still they have ERRORS that needs to be corrected
- Fast Forward, Backward and Shuffle buttons are optional
- Planning Night-Mode and possible button functions, working and fixing on ERRORS
- The Autoplay button has function (sort of, it ran into a gitch ERROR)
- Autoplay button has function of 95% (The other 5% will have to be fixed) 
- Time to modify the App Engine, autoplay and other button functions will have to be on hold for now
- The modified App Engine will be on hold while text prototyping is online
- Currently working on images and text prototyping is on hold

List of buttons for music player:

- Stop
- Play-Pause
- Skip Forward
- Skip Backward
- Previous Track
- Next Track
- Loop Single Song Once
- Loop Single Song Infnite
- Loop Playlist Infinite
- Mute Button
- Optional -> Shuffle
- Optional -> Fast Foward
- Optional -> Fast Backward

- Organize with Population Tab and Music Button Tab, each with a TAB-Driver and VOIDs connected to the Driver
- Future: connect player function to visual feedback of button
- Keyboard Shortcuts for button algorithms

Play-Pause: pressing the "P" keyboard button will...

1. At anytime, pause will stop playing the file and hold the position in the file
2. Beginning of .mp3: play file
"Up to 75%" of .mp3: "I want to play the rest of the song"
3. "After 75%": "I am done, play the next song"

ERROR - the computer can play a song file at the end of the file, but nothing will be heard in the speakers :|

Stop: pressing S will...

1. pause() the current .mp3 file
2. rewind() the current .mp3 file so it ready to play at the begining of the file

ERROR - "STOP" does not exist, only pause() :|

Mute: pressing M will...

1. stop the speakers but the computer will continue to play the file until it ends

ERROR - if the .mp3 file is muted AND .mp3 is at the end, the unMute() will rewind() the current .mp3 and play it from the beginning :|

Forward Skip: within a song for milliseconds or seconds (it depends on the individual)

Reverse Skip: within a song for milliseconds or seconds (it depends on the individual)

Fast Forward: will speed up the song *twice than initially forwards (it depends on the individual)

Fast Backward: will speed up the song *twice than initially backwards (it depends on the individual)

Loop Single SOng Once: parameter = 1

Loop Single Song Infinite: parameter is -1 or blank

Loop Playlist Infinite: parameter = int ( random( 0, array.length() ) )

- Caution: random returns a float
- Fix with int(), called CASTING

Next track:

Current Song:

- pause(index)
- rewind(index)
- index + 1

Next Song

- play(index)
- Error -> Array Index out of Bounds: array.length()-1 = 0

if ( index + 1 >= array.length ) { index = 0; }

Previous track:

Current Song:

- pause(index)
- rewind(index)
- index - 1

Next Song

- play(index)
- Error -> Array Index out of Bounds: when index=0, index-1=array.length()-1

if ( index <= -1 ) { index = array.length() - 1 }

Shuffle:
