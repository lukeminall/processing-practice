// set up window
size(1024, 769);

// draw lines
line(20,5,80,5);
line(20,5,80,20);
line(20,10,80,25);
line(20,15,80,30);
line(20,20,80,35);
line(20,25,80,40);
line(20,30,80,45);

// styling for rectangles
fill(#1E07F5);
stroke(#ffffff);
strokeWeight(5);

// create 4 rectangles
int x = 20;
for(int i=0; i<4; i++)
{
  rect(x,55,60,50);
  x += 100;
}

//styling for lines
stroke(#000000);
strokeWeight(1);

int y = 120;

for( int i=0; i<50; i++){ 
  line(0,y,1024,y);
  y += 10;
}