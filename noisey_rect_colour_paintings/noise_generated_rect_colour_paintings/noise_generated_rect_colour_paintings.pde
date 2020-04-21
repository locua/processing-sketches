float t = 0;

void setup() {
  size(1000, 700);
  background(0);
  rectMode(CENTER);
  noFill();
  stroke(255);
  smooth(8);
  colorMode(HSB);
}

void draw() {
  float n = 0;
  for (int i = 0; i < 300; i = i + 1) {
    strokeWeight(1);

    float co = map(noise(n, t), 0, 1, 0, 255); 
    float st = map(noise(n), 0, 1, 100, 255);
    stroke(co, st, 255);
    //rect(width/2, height/2, i, i, 90);
    ellipse(width/2,height/2,i,i);
    n = n + 0.007;
  }
  t = t + 0.01;
}


void keyPressed() {
  int rndno = int (random(10000));
  println("saved" + rndno);

  save(rndno+ ".jpg");
}