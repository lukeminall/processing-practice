class News {
  // set up varriables
  String URL;
  XML xml, theChannel, title, d; 
  
  //positioning
  int y = 220; 
  
  // set up individual items array
  XML[] children;

  // set up object
  News(String tempURL) {
    // pull in news feed
    URL = tempURL;
    xml = loadXML(URL);  
    theChannel = xml.getChild("channel");

    // split into array items 
    children = theChannel.getChildren("item");
  }

  void printNews() {
    // pull in text
    title = children[0].getChild("title");
    d = children[0].getChild("description");

    // draw title
    textAlign(LEFT, TOP);
    textFont(headerFont, 16);
    fill(#ffffff);
    //text(title.getContent(), 976, 220, 288, 40);
    text(title.getContent(), 976, y, 288, 40);

    // draw description 
    textAlign(RIGHT, TOP);
    textFont(bodyFont, 14);
    fill(#ffffff);
    //text(d.getContent(), 992, 260, 256, 50);
    text(d.getContent(), 992, y+40, 256, 50);

    // draw line
    stroke(#ffffff);
    strokeWeight(2);
    //line(976, 315, 1248, 315);
    line(976, y+95, 1248, y+95);
  }
}
