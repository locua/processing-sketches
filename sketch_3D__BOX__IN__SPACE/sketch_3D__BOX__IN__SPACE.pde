float r = 0;

void setup() {
  size(500, 500, P3D);
  noCursor();
}
void draw() {
  background(70);
  translate(mouseX, mouseY,noise(r)*-200);
  rotateX(r);
  rotateY(r);
  rotateZ(r);
  box(60);
  r = r +0.03;
}