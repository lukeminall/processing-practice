class smallBlock {
  // init variables
  float x, y; 
  int position;
  PImage img;  

  // add colours to array
  // colours taken from: https://material.io/design/color/the-color-system.html#tools-for-picking-colors
  color [] colours = new color[]{#FF1744, #F50057, #D500F9, #00B0FF, #C6FF00, #FFEA00, #FF9100, #FF3D00, #00E5FF}; 

  // pull in the data
  Table profiles = loadTable("new-norsc-data.csv", "header");

  // block position and size
  smallBlock(float tempX, float tempY, int tempPosition) {
    x = tempX;
    y = tempY;
    position = tempPosition;
  }

  // block set up
  void display() {
    fill(colours[position]);
    noStroke();
    rect(x, y, 220, 170.67);
  }

  void populate() {
    // get data
    TableRow row = profiles.getRow(position);
    String imgSrc = row.getString("photo");
    String first = row.getString("first");
    String last = row.getString("last");
    String title = row.getString("title");
    
    // generate name
    String name = title + " " + first + " " + last;

    // generate image
    if (imgSrc.equals("null") == true) {
      String titleAndFirst = title + " " + first;
      fill(#ffffff);
      textSize(38);
      textAlign(CENTER,BOTTOM);
      text(titleAndFirst,x+110,y+81.335);
      textAlign(CENTER,TOP);
      text(last,x+110,y+85.335);
    } else {
      img = loadImage(imgSrc);
      image(img, x+4, y+4, 212, 162.67);
    }
  }
}
