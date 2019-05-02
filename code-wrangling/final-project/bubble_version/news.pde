class News{
  void drawLayout(){
    noFill();
    noStroke();
    rect(976, 160, 288, 544);
    fill(#ffffff);
    textFont(headerFont);
    textSize(36);
    textAlign(CENTER, TOP);
    text("Latest News", 1120, 176);
    stroke(#ffffff);
    strokeWeight(1);
    line(992,220,1248,220);
  }
}
