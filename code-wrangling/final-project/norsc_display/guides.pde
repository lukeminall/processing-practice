class Guides {
  void displayGuides() {
    // lines
    stroke(#ffffff);
    line(960, 0, 960, height);
    line(0, 144, width, 144);

    // clock
    noStroke();
    fill(255, 255, 255, 75);
    rect(976, 16, 288, 112);

    // logo
    rect(16, 16, 928, 112);

    // twitter 
    rect(976, 160, 288, 544);

    //profiles
    rect(16, 160, 928, 544);
  }
}
