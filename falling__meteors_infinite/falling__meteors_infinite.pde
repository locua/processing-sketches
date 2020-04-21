float circle_x[] = {};
float circle_y[] = {};
float move_x[] = {};
float j[] = {};

void setup() {
  size(200, 400);
  strokeWeight(3);
}
void draw() {
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);
  //noFill();

  int i = 0;
  while (i < circle_x.length) {
    float sz = random(10, 30);
    fill(#D60DFF);
    ellipse(circle_x[i] + random(-3, 3), circle_y[i] + random(-3, 3), sz, sz);

    circle_x[i] = circle_x[i] + move_x[i]; 
    circle_y[i] = circle_y[i] + j[i];

    if (circle_x[i] > width) {
      circle_x[i] = width;
      move_x[i] = -move_x[i];
    }
    if (circle_y[i] > height) {
      circle_y[i] = 0;
      //j[i] = -j[i];
    }
    if (circle_x[i] < 0) {
      circle_x[i] = 0;
      move_x[i] = -move_x[i];
    }
    if (circle_y[i] < 0) {
      circle_y[i] = 0;
      j[i] = - j[i];
    }
    i = i + 1;
  }
}
void mousePressed() {
  circle_x = append(circle_x, mouseX);
  circle_y = append(circle_y, mouseY);
  move_x = append(move_x, random(-2, 2));
  j = append(j, random(1, 3));
}