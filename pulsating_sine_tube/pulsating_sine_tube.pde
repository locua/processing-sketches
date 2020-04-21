

float j, p;


void setup() {
  size(1000, 400, P3D);
  stroke(#180F98, 100);
  fill(#180F98, 2);
  
  
  
}

void draw() {
  background(200);
  
 
  for ( int i = 100; i < 900; i+=4) {
    float q = map(i, 100, 900, 0, 9*PI);
    float s = map(sin(q -p), -1, 1, 0.2, 1);
    ellipse(i, 200, 100*s, 100*s);
    //rotate(PI/2);
    
    p+=0.0001;
  }
  
  //saveFrame("output/sine_vein_####.png");
}