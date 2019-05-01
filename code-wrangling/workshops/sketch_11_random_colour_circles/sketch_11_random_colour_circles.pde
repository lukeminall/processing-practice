// set up vars
float r, g, b;
color rgb; 

void setup() {
  size(640, 480);
  background(#ffffff);
}


// colours
void colours()
{
  r = random(255);
  g = random(255);
  b = random(255);
  rgb = color(r, g, b);
  fill(rgb);
}

// circle
void circle()
{
  colours();
  ellipse(100, 100, 100, 100);
  translate(110, 0);
}

void draw() {
  // drw 5 circles
  for (int i = 0; i < 5; i++)
  {
    circle();
  }
  noLoop();
}
