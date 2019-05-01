void setup( ) { 
  // sets window size and background
  size( 640 , 480 ) ; 
  background( #FAC0E9 ); 
} 

void draw() { 
  // sets initial y value 
  float y = 7.5;
  
  // creates 25 squares
  for(int i=0; i<25; i++){ 
    rect(y,25,20,20);
    y += 25; 
  }
} 