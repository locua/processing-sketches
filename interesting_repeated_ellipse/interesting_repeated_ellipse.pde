float r;

void setup() {
  size(600, 400, P3D);
  colorMode(HSB);
  smooth(8);
  strokeWeight(2);
  noFill();
  stroke(255, 100);
}
void draw() {
  background(0);
  translate(300,200);
  float i = 0;
  while ( i < 100) {
    
    ellipse(0, 0, 150 + i*4, 100 -i*4);
    i = i +4;
    //rotateX(r);
    r = r + 0.0001;
  }
  
}