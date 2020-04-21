float r;

void setup() {
  size(500, 500, P3D);
  rectMode(CENTER);
}
void draw() {
  stroke(200);
  background(50);
  fill(#7905F0);
  translate(250, 250);
  
  //rotateZ(r);

  //box(30);
  //rect(0, 0, 600, 600);

  for ( int i = 0; i < 300; i = i + 10) {
    //rotateY(r);
    //rotateX(r);
    //rotateX(r);
    rotate(r);
    noFill();
    rect( 0, 0, 300 - i, 300 - i);
  }
  r = r + 0.003;
}