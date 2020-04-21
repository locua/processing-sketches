PImage being;

void setup() {
  size(400, 400);
  being = loadImage("being.jpg");
}

void draw() {
  //image(being, 0, 0);
  for (int i = 0; i < 50; i++) {
    float x = random(width);
    float y = random(height);

    //fill(

    color c = being.get(int(x), int(y));
    fill(c);
    ellipse(x, y, 2, 2);
    noStroke();
  }
}