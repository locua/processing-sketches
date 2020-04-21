float lite;
float x;
float y;
float z;
void setup() {
  background(0);
  size(600, 400, P3D);
  smooth(8);
  colorMode(HSB);
}

void draw() {
  colorMode(HSB);
  noStroke();
  lights();
  //ambientLight(51, 102, 126, 600, 200, 200);
  directionalLight(100, 255, 255, x , y, z);
  fill(100);
  translate(300, 200);
   x = 0 + lite;
   y = -1 + lite;
   z = 0 + lite;

  rotate(lite);
  sphere(100);
  lite = lite + 0.01;
}