class Time {
  String hs, ms, ss;

  void createClock() {
    // store time in varriables 
    int h = hour();
    int m = minute();
    int s = second();

    //format time as double digits 
    hs = trim(nfs(h, 2));
    ms = trim(nfs(m, 2));
    ss = trim(nfs(s, 2));  

    // Time in 00:00:00 format
    String x = hs+":"+ms+":"+ss;

    // creates text element
    fill(#ffffff);
    textFont(headerFont);
    textSize(56);
    textAlign(CENTER, CENTER);
    text(x, 1120, 72);
  }
}
