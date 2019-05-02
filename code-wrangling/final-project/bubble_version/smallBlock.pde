class smallBlock {
  // init variables
  float x, y; 
  int position;
  PImage img;  
  Table profiles;
  TableRow row;
  String imgSrc, first, last, title;

  // add colours to array
  // colours taken from: https://material.io/design/color/the-color-system.html#tools-for-picking-colors
  color [] colours = new color[]{#FF1744, #F50057, #D500F9, #00B0FF, #C6FF00, #FFEA00, #FF9100, #FF3D00, #00E5FF}; 

  // block position and size
  smallBlock(Table tempData, float tempX, float tempY, int tempPosition) {
    profiles = tempData;
    x = tempX;
    y = tempY;
    position = tempPosition;
    
    // get data
    row = profiles.getRow(position);
    imgSrc = row.getString("photo");
    first = row.getString("first");
    last = row.getString("last");
    title = row.getString("title");
    
    // load image
    img = loadImage(imgSrc);
  }

  // block set up
  void display() {
    fill(colours[position]);
    noStroke();
    rect(x, y, 220, 170.67);
  }

  void populate() {
    
    // generate image
    if (imgSrc.equals("null") == true) {
      String titleAndFirst = title + " " + first;
      fill(#ffffff);
      textSize(38);
      textAlign(CENTER, BOTTOM);
      text(titleAndFirst, x+110, y+81.335);
      textAlign(CENTER, TOP);
      text(last, x+110, y+85.335);
    } else {
      image(img, x+4, y+4, 212, 162.67);
    }
  }
}
