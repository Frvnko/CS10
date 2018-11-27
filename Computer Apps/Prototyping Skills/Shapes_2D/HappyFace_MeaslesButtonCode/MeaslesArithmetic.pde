void measlesArithmeticDraw() {

  //measlesX = random(width);
  //measlesY = random(height);

  measlesX = random(width*1/40, width*39/40);
  measlesY = random(height*1/2, height*1/2 + height*1/8);
  drawMeasles();
  
  measlesX = random(width*1/40, width*39/40);
  measlesY = random((height*1/2) - (height*1/8), height*1/2);
  drawMeasles();
  
  //measlesX = random();
  //measlesY = random();
  //drawMeasles();
}
