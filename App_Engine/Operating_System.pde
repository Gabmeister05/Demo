/* CAUTION, code no finished
Also see Music SubProgram
*/
//Global Varibales
String path = new File("").getAbsolutePath(); //Exported
//CAUTION: GitHub must be linked to the C-Drive instead of FS ... This might need a lesson
String directory = "C:/Users/g.kazimierczak/Documents/Github/Demo/App_Engine"; //Not exported
//Reminder: \n is a character escape, so pathway must have forward slashes
//
void steupOS_Level() {
  File anyDirectory = new File(path); //Used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in FileList:", FileListAnyDirectory.length);
  int i = 0; //songs index
  for (File file : FileListAnyDirectory) {
    if ( file.isFile() ) {
      if ( file.toString().endsWith(".mp3") ) {
        println("Any Directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
      }
    }
  }
  //
  //When Prototyping, songs is not loaded from anyDirectory
  File[] FileListGitHubDir = githubDirectory.listFiles();
  if ( songs[0] == null ) {
    printArray(FileListGitHubDir);
    for ( File file : FileListGitHubDir ) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          println("File Name .mp3 only", file.getName() );
          songs[i] = minim.loadFile(file.getName());
          i+=1;
        }
      }
    }
  } //Catch when Pathway NULL, not exported
}//End setupOS_Level
//
//End Operating System Subprogram