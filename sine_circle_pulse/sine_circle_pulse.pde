float r = 150;
float j;

void setup() {
  size(400, 400);
  stroke(#FF08B9);
  fill(#FF08B9, 30);
}

void draw() {
  background(255);
  translate(width/2, height/2);

  for ( float i = 0; i< 2*PI; i+=0.05) {
    float s = map(i, 0, 1.6*PI, 0, 20*PI);
    float S = map(sin(s+j), -1, 1, 0.2, 1);
    
    float x = r*cos(i) ;
    float y = r*sin(i) ;
    ellipse(x, y, 40*S, 40*S);
    j+=0.001;
    
  }
}