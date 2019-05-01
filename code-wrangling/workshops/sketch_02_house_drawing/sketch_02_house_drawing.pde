void setup(){
  size(500,500);
  background(#009BFF);
}

void draw(){
  // grass
  noStroke();
  fill(#22BC59);
  rect(0,350,500,250);

  // house block
  stroke(#000000);
  strokeWeight(1);
  fill(#D61E1E);
  rect(100,150,300,300);
  
  // roof
  fill(#434141);
  triangle(90, 150, 410, 150, 250, 50);
  
  // door
  fill(#8E0606);
  rect(225,350,50,100);
  
  // window fill
  fill(#4681FF);
  
  // bottom left window
  rect(125,350,75,75);
  
  // bottom right window
  rect(300,350,75,75);
  
  // top right window
  rect(125,200,75,100);
 
  // top middle window
  rect(212.5,200,75,100); 
  
  // top right window
  rect(300,200,75,100);
  
  //sun
  fill(#F8FF46);
  ellipse(50,50,50,50);
}