float y = 100;
float x = 0;
float n;

void setup() {
  size(800, 200);
  background(20);
}

void draw() {
  stroke(255);
  translate(0, 100);
  float y = map(noise(n), 0, 1, -50, 50);
  point(x, y);
  
  

  if ( x > 800 ) {
    x = 0;
  }
  x ++;
  n +=0.1;
}