float a = 0;
float b = 0;
void setup() {
  background(255);
  size(400, 400);
  fill(0);
}

void draw() {
  float x = width/2 + cos(a) * (map(cos(b),-1,1,100,140));
  float y = height/2 + sin(a) *(map(sin(b),-1,1,100,140));

  ellipse(x, y, 2, 2);

  a = a + 0.1;
  b = b + 1;
  if (a>TWO_PI) {
    noLoop();
  }
}