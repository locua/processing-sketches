
float d;
float a =0;

void setup() {
  size(400, 400);
  background(0);
  noFill();
}

void draw() {

  float x = noise(a, 10) * width;
  float y = noise(a, 20) * height;

  float d = dist(x,y,mouseX,mouseY);
  if ( d > 100) {
    strokeWeight(1);
  } else {
    strokeWeight(5);
  }

  background(0);
  stroke(255, 255, 0);
  ellipse(mouseX, mouseY, 100, 100);

  stroke(0, 255, 0);
  ellipse( x, y, 100, 100);

  a = a + 0.01;
}