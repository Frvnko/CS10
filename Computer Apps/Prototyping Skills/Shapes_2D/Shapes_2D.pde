size(500, 600);

//ellipse (x, y, horizontal-diameter, vertical-diameter);
ellipse(width/2, height/2, width, width);
ellipse(width/4, height/4, width/8, width /8);
ellipse(width*3/4, height/4, width/8, width /8);

//line(x-point1, y-point1, x-point2, y-point2);
line(width/4, height*3/4, width*3/4, height*3/4); //fix the tear to a smile

//triangle(x-point1, y-point1, x-point2, y-point2, x-point3, y-point3); 
triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*3/4);

fill(#FF0307);
ellipse(width*1/3, height*1/3, width*1/75, width*1/75);
ellipse(width*1/3, height*1/2, width*1/75, width*1/75); 
