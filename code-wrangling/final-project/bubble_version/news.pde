class News {
  // set up varriables
  String URL;
  XML xml, theChannel, title, d; 
  int itemNum;
  
  //positioning
  float y = 220; 
  
  // set up individual items array
  XML[] children;

  // set up object
  News(String tempURL, int tempItemNum, float tempY) {
    // pull in news feed
    URL = tempURL;
    xml = loadXML(URL);  
    theChannel = xml.getChild("channel");

    // split into array items 
    children = theChannel.getChildren("item");
    
    // array item number
    itemNum = tempItemNum;
    
    // y position 
    y = tempY;
  }

  void printNews() {
    // pull in text
    title = children[itemNum].getChild("title");
    d = children[itemNum].getChild("description");

    // draw title
    textAlign(LEFT, CENTER);
    textFont(headerFont, 16);
    fill(#ffffff);
    text(title.getContent(), 976, y, 288, 40);

    // draw description 
    textAlign(RIGHT, TOP);
    textFont(bodyFont, 14);
    fill(#ffffff);
    text(d.getContent(), 992, y+45, 256, 50);

    // draw line
    stroke(#ffffff);
    strokeWeight(2);
    line(976, y+100, 1248, y+100);
  }
}
