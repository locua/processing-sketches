float r =0;
static final int no = 10;

void setup() {
  size(400, 400);
  background(0);

  rectMode(CENTER);
}

void draw() {
  noStroke();
  fill(0, 20);
  rect(200, 200, width, height);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotate(r);

  for ( int i = 0; i < no; i++) {
    rect(0 + i*10, 0 + i*10, 200 * noise(i), 100 * noise(i));
  }
  r = r + 0.05;
}