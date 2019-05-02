class Time{
  int colour;
  String hs, ms, ss;
  String hex;
  
  void getTime(){ 
     // store time in varriables 
    int h = hour();
    int m = minute();
    int s = second();
  
    //format time as double digits 
    hs = trim(nfs(h, 2));
    ms = trim(nfs(m, 2));
    ss = trim(nfs(s, 2));  
  }
  
  void setBg(){
    getTime();
    // converts time (00:00:00) to hex (#000000).
    // INSPIRED BY: https://www.jacopocolo.com/hexclock/ 
    String hex = hs+ms+ss; 
  
    //converts hex to RGB
    colour = unhex(hex);
    
    
    // sets background
    background(colour);
  }
  
  void createClock(){
    // Time in 00:00:00 format
    String x = hs+":"+ms+":"+ss;
    
    // creates text element
    fill(#ffffff);
    textFont(headerFont);
    textSize(56);
    textAlign(CENTER,CENTER);
    text(x,1120,72);
  }  
  
}
