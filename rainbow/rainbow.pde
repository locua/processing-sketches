
void setup() {
  size(300,300);
  background(#36FFFA);
  noFill();
  colorMode(HSB);
  
  
}

void draw() {
  float rainbow_size = random(100,300);
  stroke(random(255),200,255);  //Hue Saturation Brightness
  strokeWeight(random(3,10));
  ellipse(150,330,rainbow_size,rainbow_size);
  
}