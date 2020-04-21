float rr = 0;
void setup() {
  size(400, 400); 
  background(#49D802);
  noStroke();
  colorMode(HSB);
}
void control(float x, float y, float z, float q, float rr) {
  fill(x*y%255, 255, 255);
  translate(x, y);
  rotate(rr);
  rect(0, 0, z, z, q);
  //ellipse(0, 0, z, z);
  resetMatrix();
}

void draw() {
  background(#fffff1);
  float x = 0;
  while (x < 8) {
    float y = 0;
    while (y < 8) {
      control(50 + x * 40, 50 + y * 40, 16, 20, rr + x + y );
      y = y + 0.2;
    }
    x = x + 0.2;
  }
  rr = rr + 0.1;
}