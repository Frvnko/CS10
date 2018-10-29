//Global Variables
color red = #FF0307;
color white = #FFFFFF;

void setup() {
  size(500, 600);
  //ellipse (x, y, horizontal-diameter, vertical-diameter);
  int faceX = width/2;
  int faceY= height/2;
  int leftEyeX = width/4;
  int leftEyeY = height/4;
  int rightEyeX = width*3/4;
  int rightEyeY = height/4;
  int eyeDiameter = width/8;
  ellipse(faceX, faceY, width, width); //Face
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter); //Rigtht Eye
  //line(x-point1, y-point1, x-point2, y-point2);
  line(width/4, height*3/4, width*3/4, height*3/4); //fix the tear to a smile
  //triangle(x-point1, y-point1, x-point2, y-point2, x-point3, y-point3); 
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*3/4);
  fill(red);
}

void draw() {
  fill(red); 
  ellipse(random(width), random(height), width*1/75, width*1/75);
  fill(white); //White
  ellipse(width/4, height/4, width/8, width /8);
}
