float a;
float rad = 100;
float w = width;
float h = height;
float z = 300;

float size = 30;
void setup() {
  lights();
  size(600, 400, P3D);
}

void draw() {
  noStroke();
  fill(100, 255, 100);
  
  directionalLight(250, 100, 255, 1, 1, 1);
  directionalLight(250, 100, 255, -1, -1, -1);

  
  translate(width/2, height/2);
  background(200, 150, 0);

  rotateZ(a);
  rotateY(a);
  
  pushMatrix();
  translate(rad, rad);
  sphere(size);
  popMatrix();

  pushMatrix();
  translate(rad, -rad);
  sphere(size);
  popMatrix();

  pushMatrix();
  translate(-rad, -rad);
  sphere(size);
  popMatrix();

  pushMatrix();
  translate(-rad, rad);
  sphere(size);
  popMatrix();

  /*  translate(width/2, 3*height/4);
   sphere(10); */

  a+=0.01;
}