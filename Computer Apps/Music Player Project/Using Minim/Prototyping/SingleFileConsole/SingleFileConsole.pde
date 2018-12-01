/* Prototyping Functions outputted to the console
 Explanations from from Minim Websites
 */
//Libraries: remember to add to IDE,
import ddf.minim.*; //

//Global Variables
Minim minim;
AudioPlayer player;

void setup() {
  //size(); //Console output, no visual data beside text prompts, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder

  player = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
  /*
  //Text for Start & Pause
   if ( player.isPlaying() ) {
   text("Press any key to pause playback.", 10, 20 );
   } else {
   text("Press any key to start playback.", 10, 20 );
   }
   
   
   */
}

void keyPressed() {
  //void keyPressed contains Boolean keyPressed so no ckeck is necessary with a listener
  if (key == 'p' || key == 'P') {
    if ( player.isPlaying() ) { //Either true of false, player class from gloabal variables
      player.pause();
    } else if ( player.position() == player.length() ) { //Example of loop when player is at end of file, rewind and continue playing
      player.rewind();
      player.play();
    } else {
      player.play();
    }
  }
}
