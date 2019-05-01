float period = 2;
float amplitude = 90;

void setup()
{
  // set up window
  size(400,300);
}

void draw()
{
  // set background
  background(#333333);
  //position pendulum
  translate(width/2,20);
  float angle = motion();
  rotate(angle);
  pendulum();
}

void pendulum()
{
 // draw pendulum
 stroke(100);
 strokeWeight(10);
 line(0,0,0,150);
 stroke(250);
 strokeWeight(8);
 point(0,0);
}
  
float motion()
{
  // control motion using PHYSICS!!! 
  float time = norm(millis(),0,1000);
  float fraction = norm(time,0,period);
  float shm = sin(fraction*TWO_PI);
  float angle = shm*amplitude;
  return radians(angle);
}