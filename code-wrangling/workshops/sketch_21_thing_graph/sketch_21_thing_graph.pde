Table spread;

void setup(){
  size(840,480);
  spread = loadTable("seeds.csv","header");
}

void draw(){
  int hoz = 0;
  
  for( TableRow row : spread.rows()){
    // values between 2.62 & 4.04
    float howHeigh = map( row.getFloat("thing"),2.62,4.04,0,-480);
    
    rect(hoz,480,5,howHeigh);
    
    hoz += 5;
  }
}