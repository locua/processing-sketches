float r = 0;

void setup() {
  size(500,500);
  
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(mouseX,mouseY);
  rotate(r);
 rect(0,0,100,100);

r = r + 0.1;
}