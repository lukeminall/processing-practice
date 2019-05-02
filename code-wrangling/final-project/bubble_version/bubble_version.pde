// init global objects
Guides g;
Time t;
News n;

// init global variables
float x, y;
int p;
Table data;
PFont headerFont;
PFont bodyFont;
PImage logo;

// set up array of bubbles
Bubble[] bubbles = new Bubble[50];

// init block arrays
largeBlock[] lb = new largeBlock[3];
smallBlock[] sb = new smallBlock[6];

void setup() {
  // setup window
  size(1280, 720);

  // add objects to varriables 
  g = new Guides();
  t = new Time();
  n = new News();
  
  // pull in data
  data = loadTable("new-norsc-data.csv", "header");

  // design assets
  headerFont = loadFont("Environ.vlw");
  bodyFont = loadFont("Helvetica-24.vlw");
  logo = loadImage("logo.png");

  // set up the bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(0, width), random(100, height), random(0, 64));
  }

  // set initial block values
  x = 16;
  y = 160;
  p = 0;

  // position large blocks
  for (int i = 0; i < lb.length; i++) {
    lb[i] = new largeBlock(data, x, y, p);
    // incriment position
    p++;
    x += 236;
    y += 186.67;
  }
}

void draw() {
  // set background
  background(#1E88E5);

  // draw bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }

  // temporary design guides
  g.displayGuides();

  // logo
  image(logo, 16, 16, 367, 112);

  // clock
  t.createClock();

  // news section
  n.drawLayout();

  //large blocks
  for (int i = 0; i < lb.length; i++) {
    lb[i].display();
    lb[i].populate();
  }
}
