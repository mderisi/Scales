void setup(){
  size(800, 800);
  noLoop();
}

void draw(){
  boolean shift = true;
  for(int y = -80; y <= 850; y += 80){
    for(int x = -160; x <= 800; x+=80){
      if(shift == true){
        scale(x + 80, y, 1);
      }else{
        scale(x, y, 1);
      }
      if(shift == true){
        shift = false;
      }else{
        shift = true;
      }
    }
  }

}

void scale(int x, int y, int siz) {
  int diam = 0;
  float b = 255;
  float r = 175;


  noFill();
  while(diam < 200){
    stroke(r, 0, b);
    ellipse(x,y, diam*siz, diam*siz);
    diam = diam + 2;
    b-=255/200.0;
    r-=175/200.0;
   fill(#000000);
       ellipse(x - 30, y - 30, 22, 32);
       ellipse(x + 30, y - 30, 22, 32);
   fill(#FFF7F7);
       ellipse(x - 30, y - 30, 20, 30);
       ellipse(x + 30, y - 30, 20, 30);
   fill(#000000);
       ellipse(x - 30, y - 30, 5, 10);
       ellipse(x + 30, y - 30, 5, 10);
    fill(#FFD6D6);
       triangle(x - 4, y - 20, x + 4, y - 20, x, y - 12);
       line(x, y - 12, x - 6, y - 6);
       line(x, y - 12, x + 6, y - 6); 
       noFill();
  }
}
