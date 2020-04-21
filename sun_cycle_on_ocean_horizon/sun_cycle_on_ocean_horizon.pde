float time = 0;
float n = 0;
void setup() {
  size(400, 400); 
  background(#0D73FF);
  noFill();
}
void draw() {
  float x = 0;
  background(#0D73FF);
    fill(#FFC503);
  translate(200,250);
  rotate(n);
  ellipse(100,100,70,70);
  resetMatrix();
  while (x < width) {
    stroke(#0FAA8C);
    line(x, 200 + 50 * noise(x / 100, time), x, height);
    x = x + 1;
  }
  time = time + 0.01;

  n = n + 0.01;
}