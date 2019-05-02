class largeBlock {
  // init variables
  float x, y; 
  int position;
  PImage img;
  Table profiles;

  // add colours to array
  // colours taken from: https://material.io/design/color/the-color-system.html#tools-for-picking-colors
  color [] colours = new color[]{#FF1744, #F50057, #D500F9, #00B0FF, #C6FF00, #FFEA00, #FF9100, #FF3D00, #00E5FF}; 

  // block position and size
  largeBlock(Table tempData, float tempX, float tempY, int tempPosition) {
    profiles = tempData;
    x = tempX;
    y = tempY;
    position = tempPosition;
  }

  // block set up
  void display() {
    fill(colours[position]);
    noStroke();
    rect(x, y, 456, 170.67);
  }

  void populate() {
    
    // get data
    TableRow row = profiles.getRow(position);
    String imgSrc = row.getString("photo");
    String first = row.getString("first");
    String last = row.getString("last");
    String title = row.getString("title");
    String intrst1 = row.getString("intrst1");
    String intrst2 = row.getString("intrst2");
    String intrst3 = row.getString("inrst3");
    String skill1 = row.getString("skill1");
    String skill2 = row.getString("skill2");
    String skill3 = row.getString("skill3");
    
    // generate name
    String name = title + " " + first + " " + last;
    
    // generate interests & skills 
    String interests = intrst1 + " // " + intrst2 + " // " + intrst3;
    String skills = skill1 + " // " + skill2 + " // " + skill3;

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
    
    // add name
    textAlign(CENTER,TOP);
    textFont(headerFont,24);
    fill(#ffffff);
    text(name,x+346,y+8);
    
    // add interests
    textAlign(LEFT,TOP);
    textFont(headerFont,14);
    text("Interests:",x+248,y+36);
    textFont(bodyFont,14);
    text(interests, x+256,y+54,192,40);
    
    // add skills
    
    textAlign(LEFT,TOP);
    textFont(headerFont,14);
    text("Skills:", x+248,y+94);
    textFont(bodyFont,14);
    text(skills,x+256,y+114,192,70);
  }
}
