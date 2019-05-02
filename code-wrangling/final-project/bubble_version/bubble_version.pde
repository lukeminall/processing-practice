// init global varriables 
Guides g;
PImage logo;

// set up array of bubbles
Bubble[] bubbles = new Bubble[50];

void setup() {
  // setup window
  size(1280, 720);

  // add objects to varriables 
  g = new Guides();
  
  // design assets
  logo = loadImage("logo.png");

  // set up the bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(0, width), random(100, height), random(0, 64));
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
  
}

void mousePressed() {
  // make the bubble disapear on click
}
