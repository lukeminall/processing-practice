Table stars;
Table BVcolours;

void setup(){
  size(900,900,P3D);
  stars = loadTable("HIP_star.dat","header , tsv");
  BVcolours = loadTable("BV_T_c.dat", "header, tsv");
}

void draw(){
  
  background(#000000);
  
  for(TableRow s : stars.rows()){
    float Vmag = s.getFloat("Vmag");
    float B_V  = s.getFloat("B-V");
    float Plx  = s.getFloat("Plx");
    
    float logL = (15 - Vmag - 5*log10(Plx))/2.5;
    
    // only continues if number is Not NaN
    if ( Float.isNaN(B_V) ) continue;
    
    float x = map(B_V, -0.5, 2.5, 0, width);
    float y = map(logL, -2.5, 4, height, 0);
    
    float br = Vmag/3;
    
    noStroke();
    fill( BVlookup( B_V ) );
    ellipse(x, y, br,br);
  }
}

float log10(float x){
  return(log(x)/log(10));
}

color colour(String c){
  int r = unhex(c.substring(1,3));
  int g = unhex(c.substring(3,5));
  int b = unhex(c.substring(5,7));
  return color(r,g,b);
}

color BVlookup(float bv){
  String rgb = "";
  
  for(TableRow bvc : BVcolours.rows()){
    rgb = bvc.getString("rgb");
    
    if( bv < bvc.getFloat("B-V")) break;
  }
  
  return colour(rgb);
}
