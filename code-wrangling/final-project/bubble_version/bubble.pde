/* Code written while working through this Coding Train course on object orientated programming: 
https://www.youtube.com/watch?v=YcbcfkLzgvs&list=PLRqwX-V7Uu6bb7z2IJaTlzwzIg_5yvL4i */

class Bubble {
  // init variables
  float x, y, d;

  // bubble start position & diameter
  Bubble(float tempX, float tempY, float tempD) {
    x = tempX;
    y = tempY;
    d = tempD;
  }

  // bubble set up
  void display() {
    stroke(#c4c4c4);
    fill(#42A5F5);
    ellipse(x, y, d, d);
  }


  // move bubble
  void ascend() {
    y--;
    x += random(-2,2);
  }

  // stop bubble at the top
  void top() {
    if (y < 0) {
      y = height - d ;
    }
  }
}
