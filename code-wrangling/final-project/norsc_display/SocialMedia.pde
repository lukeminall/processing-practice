//--------------------------------------------------------------------------------//
// Code adapted from http://codigogenerativo.com/code/twitter-para-processing-2-0/
//-------------------------------------------------------------------------------//

class SocialMedia{
  void drawLayout(){
    noFill();
    rect(976, 160, 288, 544);
    fill(#ffffff);
    textFont(headerFont);
    textSize(36);
    textAlign(CENTER, TOP);
    text("Latest Tweets", 1120, 176);
    stroke(#ffffff);
    strokeWeight(1);
    line(992,220,1248,220);
  }
}
