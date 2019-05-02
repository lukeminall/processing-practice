Bubble[] bubbles = new Bubble[50];

void setup(){
  size(640,360);
  for(int i = 0; i < bubbles.length; i++){
    bubbles[i] = new Bubble(random(0,width),random(100,height), random(0,64));
  }
}

void draw(){
  background(#1E88E5);
  
  for(int i = 0; i < bubbles.length; i++){
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}

void mousePressed() {
  // make the bubble disapear on click
}
