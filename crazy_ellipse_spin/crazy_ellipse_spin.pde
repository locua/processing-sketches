float r = 0;
float t = 0;
void setup() {
  size(500, 450, P3D);

  noFill();
  smooth(5);
}
void draw() {
  background(0);
  strokeWeight(2);
  translate(250, 200);
  //line(0,-200,0,500);
  //line(-250,0,250,0);
  for (int i = 0; i < 70; i = i + 3) {

    stroke(100, 255, 255);
    
    rotateX(r);
    rotateY(r);
    //rotateZ(r);
    ellipse(150, 0, 150 -i, 150 - i);
  }
  r = r + 0.004;
}