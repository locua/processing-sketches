float r = 0;

void setup() {
  size(640,360,P3D);
}
 
void draw() {
  background(255);
  drawCircle(width/2, height/2, 200);
  
  
  r = r +0.001;
}
 
void drawCircle(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 16) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
   
  }
}