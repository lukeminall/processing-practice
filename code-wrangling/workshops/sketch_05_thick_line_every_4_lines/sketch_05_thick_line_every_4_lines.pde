void setup( ) { 
  // sets window size and background
  size( 640, 480 ) ; 
  background( #FAC0E9 );
} 

void draw() { 

  // line styling
  stroke(#3961F7);

  // initial y axis value
  int y = 10;

  // create the lines
  for (int i=0; i<6; i++) { 

    // create the thin lines 
    for (int i2=0; i2<3; i2++) { 
      strokeWeight(1);
      line(0, y, 640, y);
      y += 20;
    }

    // create the thick lines 
    strokeWeight(3);
    line(0, y, 640, y);
    y += 20;
  }
} 
