PImage photo;

void setup()
{
  size(612,640);
  photo = loadImage("cat.jpg");
}

void draw()
{
  fill(255,0,0);
  image(photo, 0,0);
  rect(0,0,150,150);
}