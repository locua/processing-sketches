

void setup() {
  size(600, 400, P3D);
 
}

void draw() {
  background(20);

  translate(width/2, height/2);
  drawCircle(0, 0, 200);
  
}

void drawCircle(float x, float y, float d) {
  stroke(255);
  noFill();
  ellipse(x, y, d, d);

  if (d > 10) {
    drawCircle(x + d/2, y, d/2);
    drawCircle(x - d/2, y, d/2);
    drawCircle(x, y + d/2, d/2);
    drawCircle(x, y - d/2, d/2);
  }
}