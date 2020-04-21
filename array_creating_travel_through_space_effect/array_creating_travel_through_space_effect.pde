float[] x = new float[100];
float[] y = new float[100];
float[] speed = new float[100];
float[] size = new float[100];

void setup() {
  size(500, 400);
  background(0);
  stroke(255);
  noCursor();
 

  int i = 0;
  while (i<100) {
    x[i] = random(width);
    y[i] = random(height);
    speed[i] = random(1, 5);
    
    i = i + 1;
  }
}

void draw() {
  background(0);
   noStroke();
   triangle(mouseX, mouseY -10, mouseX+ 50, mouseY, mouseX , mouseY + 10);
    
  int i = 0;
  while (i < 100) {
    float co = map(speed[i], 1, 5, 100, 255);
    stroke(co);
    strokeWeight(speed[i]);
    point(x[i], y[i]);

    x[i] = x[i] - speed[i]/2;
    if (x[i] < 0) {
      x[i] = width;
    }
    i = i + 1;
  }
}