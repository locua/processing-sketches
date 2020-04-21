float r = 0;


void setup() {
  size(400, 400, P3D);
  background(255);
  stroke(0);
  noFill();
  smooth(8);
  
}

void draw() {
  background(255);

  //translate(0,0,-100);
  stroke(190);
  strokeWeight(1);
  line(-200, 0, 200, 0);
  translate(200, 200);
  //line(0, 200, 0, -200);


  rotateY(PI);
  for ( int x = -134; x <  134; x = x + 1) {
    float y = map(sin(radians(x) * 8), -1, 1, -100, 100);
    rotateX(r);
    
    stroke(0);
    strokeWeight( 0.1 * y);
    point(x, y);
    //ellipse(x, y, 0.1 * y, 0.1 * y);
  }
  r = r + 0.0005;
}

void keyPressed() {
  float rndno = int(random(100000));
  println(rndno);
  save(rndno + ".jpg");
}