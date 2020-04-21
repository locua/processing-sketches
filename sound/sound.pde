import processing.sound.*;

AudioIn in;

void setup() {
  size(200, 200);
  background(100);
  
  in = new AudioIn(this, 0);
  in.play();

}

void draw() {
}