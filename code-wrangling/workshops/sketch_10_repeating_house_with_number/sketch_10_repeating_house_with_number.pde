int houseNo = 1;

void setup() {
  size(640, 480);
  background(#ffffff);
}

// house number
void number()
{
  textSize(20);
  textAlign(CENTER, CENTER);
  text(houseNo, 60, 65);
  houseNo++;
}

// house
void house()
{
  fill(#333333);
  translate(80, 0);
  triangle(30, 40, 90, 40, 60, 25);
  rect(30, 40, 60, 50);
  fill(#ffffff);
  number();
}

void draw()
{
  for (int i = 0; i < 5; i++)
  {
    house();
  }
  noLoop();
}
