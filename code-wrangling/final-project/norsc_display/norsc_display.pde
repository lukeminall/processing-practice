// init global varriables 
Guides g;
Time t;
SocialMedia s;
PFont headerFont;
PFont bodyFont;
PImage logo;
float x, y;
int p;

// init block arrays
largeBlock[] lb = new largeBlock[3];
smallBlock[] sb = new smallBlock[6];

void setup() {
  // setup window
  size(1280, 720);

  // add objects to varriables 
  g = new Guides();
  t = new Time();
  s = new SocialMedia();

  // design assets
  headerFont = loadFont("Environ.vlw");
  bodyFont = loadFont("Helvetica-24.vlw");
  logo = loadImage("logo.png");

  // set initial block values
  x = 16;
  y = 160;
  p = 0;

  // position large blocks
  for (int i = 0; i < lb.length; i++) {
    lb[i] = new largeBlock(x, y, p);
    // incriment position
    p++;
    x += 236;
    y += 186.67;
  }
  
  // position small blocks, first row
  x = 488;
  y = 160;
  for (int i = 0; i < 2; i++) {
    sb[i] = new smallBlock(x, y, p);
    // incriment position
    p++;
    x += 236;
  }
  
  // position small blocks, second row
  x = 16;
  y = 346.67;
  for (int i = 2; i < 4; i++) {
    sb[i] = new smallBlock(x, y, p);
    // incriment position
    p++;
    x += 708;
  }
  
  // position small blocks, third row
  x = 16;
  y = 533.33;
  for (int i = 4; i < 6; i++) {
    sb[i] = new smallBlock(x, y, p);
    // incriment position
    p++;
    x += 236;
  }
  
}

void draw() {
  // sets bg as hex function based on time (see time class)
  t.setBg();

  // temporary design guides
  //g.displayGuides();

  // clock
  t.createClock();

  // logo
  image(logo, 16, 16, 367, 112);

  //large blocks
  for(int i = 0; i < lb.length; i++){
    lb[i].display();
    lb[i].populate();
  }
  
  //small blocks, first row
  for(int i = 0; i < 2; i++){
    sb[i].display();
    sb[i].populate();
  }
  
  //small blocks, second row
  for(int i = 2; i < 4; i++){
    sb[i].display();
    sb[i].populate();
  }
  
  //small blocks, third row
  for(int i = 4; i < 6; i++){
    sb[i].display();
    sb[i].populate();
  }

  //twitter feed
  s.drawLayout();
}
