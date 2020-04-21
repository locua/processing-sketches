PImage being;

void setup() {
  size(400, 400);
  being = loadImage("being.jpg");
  colorMode(HSB);
}

void draw() {

  //image(being, 0, 0);

  loadPixels();
  being.loadPixels();
  for ( int x = 0; x < width-1; x++) {
    for (int y = 0; y < height; y++) {
      int loc1 = x+y*width;
      int loc2 = (x+1) + y*width;
      float b1 = brightness(being.pixels[loc1]);
      float b2 = brightness(being.pixels[loc2]);

      float diff = abs(b1 - b2);

      if (diff > mouseX) {
        pixels[loc1] =  color(0);
      } else {
        pixels[loc1] = color(255);
      }
    }
  }
  updatePixels();
}