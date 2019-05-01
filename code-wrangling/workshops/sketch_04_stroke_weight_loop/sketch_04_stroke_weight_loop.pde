void setup( ) { 
  // sets window size and background
  size( 640 , 480 ) ; 
  background( #FAC0E9 ); 
} 

void draw() { 
  
  // sets initial y value 
  int y = 20;
  
  // sets initial stroke value
  int s = 1; 
  
  // ellipse styling
  fill(#B4056C);
  stroke(#F3FC00);
  strokeWeight(s);
  
  // creates 13 elipses with incrimentally larger strokes 
  for(int i=0; i<13; i++){ 
    ellipse(y,50,35,50);
    strokeWeight(s);
    y += 50;
    s ++;
  }
} 