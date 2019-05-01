// set up varriables
float x, y;
float y_velocity;
float x_velocity;
float gravity;
float radius;

void setup()
{
  // set up window
  size(640, 480);
  // set initial position
  x = width/2;
  y = height/2;
  x_velocity = 10;
  y_velocity = 5;
  gravity = 5;
  radius = 10;
}

void draw()
{
  //set background
  background(#333333);

  // move ball 
  y_velocity += gravity;
  x += x_velocity;
  y = y_velocity;

  // make ball bounce off edges
  if (y<radius)
  {
    y = radius;
    y_velocity *= -0.7;
  }

  if ( y>(height-radius))
  {
    y = height-radius;
    y_velocity *= -0.7;
  } 

  if (x<radius)
  {
    x = radius;
    x_velocity *= -0.5;
  }

  if ( x>(width-radius))
  {
    x = width-radius;
    x_velocity *= -0.5;
  }

  // set ball position
  ball(x, y);
}

void ball(float x, float y)
{
  pushMatrix();
  translate(x, y);
  ellipseMode(RADIUS);
  ellipse(0, 0, radius, radius);
  popMatrix();
}