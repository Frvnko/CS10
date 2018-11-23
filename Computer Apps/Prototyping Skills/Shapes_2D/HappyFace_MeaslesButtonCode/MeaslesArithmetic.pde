void measlesArithmetic() {
  
  //measlesX = random(width);
  //measlesY = random(height);
  
  measlesX = random(width*1/40, width*39/40);
  measlesY = random(height*1/2, height*1/2 + height*1/8);
 
  
  fill(red); 
  noStroke(); //remove
  ellipse(measlesX, measlesY, measlesDiamter, measlesDiamter);
  stroke(1); //default
  
}
