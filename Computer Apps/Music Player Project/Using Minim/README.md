# Using Minim
A Summary of functions and snippets to introduce Music Players

**UNDER CONSTRUCTION**

**NOTE**: Processing's Sound Library is in beta to service an "array out of bounds" in WINDOWS 10 (20180901)
- Blogs mentioned to use Minim
- All Minim Selected Examples are compiling well

Web Presence: http://code.compartmental.net/minim/
- http://code.compartmental.net/minim/audioplayer_class_audioplayer.html

Sections
- Summary of functions, in a general learning order, <a href="">Click Here</a>
- Summary of functions, in a general learning order, <a href="">Click Here</a>
- Getting the Minim Library, installation and selected examples <a href="">Click Here</a>
- Playing a Single Song, control in console, <a href="">Click Here for Explanation</a>, <a href="">Click Here for Program</a>
  - Note: Console Output introduces Boolean influence of draw() and visual data or GUI
  - Also adds debugging ability
- <a href=""></a>

Prototype how to use Minim
- Loading songs
- playing songs and checking to see if song is playing (pause)
- stopping a song
- Option: previous song and next song


## Summary of Minim Functions

1.

## Getting the Minim Library

### Installing the Library
Buttons: Sketch / Import Library / Add Library
- See Image (not complete yet)
- See PDF (not complete yet)

Using Contributed Library Import Function
- See Image (not complete yet)
- See PDF (not complete yet)

### Getting Appropriate Examples
General References
- See <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Music%20Player%20Project/Using%20Minim/Selected%20Examples">Selected Examples</a> for an Introduction to reference programs used in Mercer's Kitchen Lessons
- See File / Examples / Contributed Libraries / Minim
- Also see .jpg or .pdf (not complete yet)

List of Programs and Order to Reference
- PlayAFile, <a href="">Click Here</a>
- <a href="">Click Here</a>
- **In Progress**
- <a href=""></a>

Note about programs: all contain a 2D graph, similar to a synthesizer
- Interesting addition some students want to code (illustrated in case studies)

## Playing a Single Song, control in console



---

# Include This

## Questions to answer from code
- AudioPlayer creates classes, do classes need to be loaded to an arrayList or an array


Lines of Code from PlayAFile
```java
import ddf.minim.*;

Minim minim;
AudioPlayer player;

minim = new Minim(this); //load files from data directory
player = minim.loadFile("groove.mp3"); //loadFile looks in data and sketch folders //Able to pass absolute path or URL

void draw() {
  if ( player.isPlaying() )
  {
    text("Press any key to pause playback.", 10, 20 );
  }
  else
  {
    text("Press any key to start playback.", 10, 20 );
  }
}

void keyPressed() {
  if ( player.isPlaying() )
  {
    player.pause();
  }
  // if the player is at the end of the file,
  // we have to rewind it before telling it to play again
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
}
```

Lines of Code from pause
```java
import ddf.minim.*;

Minim minim;
AudioPlayer groove;

minim = new Minim(this);
groove = minim.loadFile("groove.mp3", 2048);
groove.loop();

void keyPressed()
{
  if ( groove.isPlaying() )
  {
    groove.pause();
  }
  else
  {
    // simply call loop again to resume playing from where it was paused
    groove.loop();
  }
}
```


---
