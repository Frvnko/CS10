//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;
Boolean looping = false;
int loopNum = 0;

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press l or L to turn ON and OFF LOOP.");
}

void draw() {
  while (looping == true && loopNum == 1) {
      println ("while", looping, loopNum);
      song1.loop(loopNum);
    }
}

void mousePressed() {
}

void keyPressed() {
  println ("keyPressed", looping, loopNum);
  if ( key == 'l' || key == 'L') {
    println ("l", looping, loopNum);
    if (looping == false) {
      println ("true", looping, loopNum);
      looping = true;
      loopNum = 1;
    } else {
      println ("false", looping, loopNum);
      looping = false;
      loopNum = 0;
      song1.loop(loopNum);
    }
  }
}
