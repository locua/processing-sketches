PImage being;

void setup() {
  size(413, 500);
  being = loadImage("being.jpg");
  colorMode(HSB);
}

void draw() {
  
  //image(being, 0, 0);
  
  loadPixels();
  being.loadPixels();
  for( int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      int loc = x+y*width;
      float b = brightness(being.pixels[loc]);
     /* 
      if (b > 100) {
        pixels[loc] = color(255);
      } else {                     //threshold
        pixels[loc] = color(0);
      }
      */
      float h = hue(being.pixels[loc]);
      float s = saturation(being.pixels[loc]);
      float sat = map(mouseX, 0, width, 0, 255);
      
      
      pixels[loc] = color(h, s, b);
      
    /*  float r = red(being.pixels[loc]); 
      float g = green(being.pixels[loc]); 
      float b = blue(being.pixels[loc]); 
     
      pixels[loc] = color(r, g, b); */
    }
  }
  updatePixels();
}