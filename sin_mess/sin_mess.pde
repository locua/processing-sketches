float a =0;

void setup() {
  size(500, 500);
  background(0);
  colorMode(HSB);
  noStroke();
}

void draw() {
  translate(125, 125);
 
  float x = map(sin(a/2) * sin(a*0.8) , -1, 1, 0, width/2);
  float y = map(sin(a), -1, 1, 0, height/2);
  float co = map(sin(a*0.3), -1, 1, 0, 255);
  //float br = map(sin(a*0.06), -1, 1, 0, 255);
  float sz = map(sin(a*0.06), -1, 1, 5, 100);
;
  fill(co,255,255);
  ellipse(x, y, sz,sz );

  a = a + 0.1;
}