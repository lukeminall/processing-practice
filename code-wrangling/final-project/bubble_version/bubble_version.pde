// init global objects
Guides g;
Time t;

// init global variables
float x, y;
int p;
Table data;
XML xml;
PFont headerFont;
PFont bodyFont;
PImage logo;

// set up array of bubbles
Bubble[] bubbles = new Bubble[50];

// set up news array
News[] n = new News[4];

//set up block arrays
largeBlock[] lb = new largeBlock[3];
smallBlock[] sb = new smallBlock[6];

void setup() {
  // setup window
  size(1280, 720);

  // add objects to varriables 
  g = new Guides();
  t = new Time();

  // pull in news 
  String URL = "http://newsroom.northumbria.ac.uk/rss/current_news/70031";

  // pull in profile data
  data = loadTable("new-norsc-data.csv", "header");

  // design assets
  headerFont = loadFont("Environ.vlw");
  bodyFont = loadFont("Helvetica-24.vlw");
  logo = loadImage("logo.png");

  // set initial new y value
  y = 220;
  
  // set up news objects
  for (int i = 0; i < n.length; i++) {
     n[i] = new News(URL,i,y); 
     y += 110;
  }
  
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

  // position small blocks, first row
  x = 488;
  y = 160;
  for (int i = 0; i < 2; i++) {
    sb[i] = new smallBlock(data, x, y, p);
    // incriment position
    p++;
    x += 236;
  }

  // position small blocks, second row
  x = 16;
  y = 346.67;
  for (int i = 2; i < 4; i++) {
    sb[i] = new smallBlock(data, x, y, p);
    // incriment position
    p++;
    x += 708;
  }

  // position small blocks, third row
  x = 16;
  y = 533.33;
  for (int i = 4; i < 6; i++) {
    sb[i] = new smallBlock(data, x, y, p);
    // incriment position
    p++;
    x += 236;
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
  //g.displayGuides();

  // logo
  image(logo, 16, 16, 367, 112);

  // clock
  t.createClock();

  //large blocks
  for (int i = 0; i < lb.length; i++) {
    lb[i].display();
    lb[i].populate();
  }

  //small blocks, first row
  for (int i = 0; i < 2; i++) {
    sb[i].display();
    sb[i].populate();
  }

  //small blocks, second row
  for (int i = 2; i < 4; i++) {
    sb[i].display();
    sb[i].populate();
  }

  //small blocks, third row
  for (int i = 4; i < 6; i++) {
    sb[i].display();
    sb[i].populate();
  }
  
  
  // news section
  noFill();
  noStroke();
  rect(976, 160, 288, 544);
  fill(#ffffff);
  textFont(headerFont);
  textSize(36);
  textAlign(CENTER, TOP);
  text("Latest News", 1120, 176);
  
  // get news{
  for (int i = 0; i < n.length; i++) {
     n[i].printNews(); 
  } 
  
  // more news block
  fill(255, 255, 255, 75);
  strokeWeight(0);
  rect(976,649,272,55);
  textAlign(CENTER,CENTER);
  fill(#ffffff);
  text("For More News Visit: http://newsroom.northumbria.ac.uk/",976,649,272,55);
}
