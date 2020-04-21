float n;
float x;
float y;
float m;
float z;
float l;
void setup () {
  size(1000, 200);
  background(200, 100, 250, 6);
 }

void draw() {
 x = noise(n);
 y = noise(m);
 z = noise(l);
 m += 0.02;
 n += 0.01;
 l += 0.001;
  
 float r = map(x, 0, 1, 0, 255);
 float g = map(y, 0, 1, 0, 255);
 float b = map(z, 0, 1, 0, 255);
 
 float i = map(sin(m), -1, 1, 0, width);
 float j = map(y, 0, 1, 0, height);
 
// background(r, g, b);
 
 println(r, g, b);
 strokeWeight(5);
 point(i, j);
}