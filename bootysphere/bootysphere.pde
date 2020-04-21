import nervoussystem.obj.*;
boolean record = false;
PImage img;

void setup() {
  size(600, 600, P3D); 
  img = loadImage("booty600inverse.JPG");
  img.loadPixels();
  noStroke();
}
void draw() {
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "booty3d.obj");
    background(255); 
    lights();
    translate(width/4, height/4);
    scale(5);
    rotateX(mouseY *0.01);
    rotateY(mouseX *0.01);

    //image(img,0,0);
    for (int x =0; x <100; x++) {
      for (int y =0; y <100; y ++) {
        int imgx = (int)map(x, 0, 100, 0, img.width);
        int imgy = (int)map(y, 0, 100, 0, img.height);
        float bri = brightness(img.get(imgx, imgy));
        if (bri > 50) {
          pushMatrix();
          translate(x, y);
          sphere(bri / 160);
          popMatrix();
        }
     }
    }
    if (record) {
    endRecord();
      record = false;
    }
  }
}
void keyPressed() {
  if (key == 's') {
    record = true;
  }
}