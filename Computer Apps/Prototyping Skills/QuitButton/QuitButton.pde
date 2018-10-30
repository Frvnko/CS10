// Global Variables
color purple = #FF03F3;
color yellow = #FFF703;
color regularButton = purple;
color hoverOverButton = yellow;

void setup() {
  size(500, 600);
  rect(width*15/16, height*0/16, width*1/16, height*1/16);
}

void draw() {
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
}

//Listener
void mouseClicked () {
  if (mouseX>width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) {
    exit();
  }
} //End mouseClicked
