import processing.video.*;

Capture video;

void setup() {
  size(600, 400);

  video = new Capture(this, 640, 480, 30);
  video.start();
}
void draw() {
  background(20);
  video.read(); 
  //image(video, 0, 0, width, height);

  for (int x =10; x < width; x+=10) {
    for ( int y = 10; y < height; y+=10) {

      color c = video.get(int(x), int(y));
      fill(c);
      noStroke();

      ellipse(x, y, 10, 10);
    }
  }
}


void keyPressed() {
  if ( key == 'p' ) {
    saveFrame();
  }
}