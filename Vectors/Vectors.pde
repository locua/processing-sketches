float x = 100;
float y = 170;
float xspeed = 4;
float yspeed = 3;

void setup() {
  size(400, 400);
}

void draw() {
  background(20);
  
  x = x + xspeed;
  y = y + yspeed;
  
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  
  noStroke();
  fill(255);
  ellipse(x, y, 48, 48);
  
}