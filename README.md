# Demo

Demo Only

Top comments are edits in progress*

- So far both pause, play and stop buttons are created but they don't have any function yet while the other buttons are being created (ex Skipforward, Skipbackward, Fastforward, Fastbackward, etc)

List of buttons for music player:

- Stop
- Play-Pause
- Skip Forward
- Skip Backward
- Fast Foward
- Fast Backward
- Previous Track
- Next Track
- Loop Single Song Once
- Loop Single Song Infnite
- Loop Playlist Infinite
- Mute Button
- Optional - Shuffle

- Organize with Population Tab and Music Button Tab, each with a TAB-Driver and VOIDs connected to the Driver
- Future: connect player function to visual feedback of button
- Keyboard Shortcuts for button algorithms

Play-Pause: pressing the "P" keyboard button will...

1. At anytime, pause will stop playing the file and hold the position in the file
2. Beginning of .mp3: play file
"Up to 80%" of .mp3: "I want to play the rest of the song"
3. "After 80%": "I am done, play the next song"
ERROR - the computer can play a song file at the end of the file, but nothing will be heard in the speakers

Stop: pressing S will...

1. pause() the current .mp3 file
2. rewind() the current .mp3 file so it ready to play at the begining of the file
ERROR - "STOP" does not exist, only pause()

