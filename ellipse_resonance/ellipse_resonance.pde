float r = 0;

void setup() {
  size(500, 500, P3D);
  
  noFill();
  smooth(5);
}
void draw() {
  background(230);
  strokeWeight(1);
  lights();
  ambientLight(0,100,100);
  translate(width/2, height/2);
  //line(-250,0,250,0);
  //line(0,-250,0,250);
  for (int i = 0; i < 200; i = i + 20) {

    rotateX(r);
    rotateZ(r);
    stroke(0);
    ellipse(0 , 0, width/2 - i, height/2 - i);
    stroke(150);
    sphere(20);
      
  }
  r = r + 0.01;
}