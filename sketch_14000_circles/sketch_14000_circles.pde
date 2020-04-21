int k;
float c, j;
Face f;

void setup() {
  size(700, 700, P3D);
  stroke(20);
  stroke(#3F2EFF, 150);
  strokeWeight(1);
  fill(#B2ACF7, 50);

  f = new Face();
}

void draw() {
  background(255);

  f.render();
  f.mouth();
  f.eyes();
  f.nose();

  c = map(mouseX, 0, width, 0, 20000);

  
  text(c, 20, 30);


  translate(width/2, height/2);
  for ( k = 1; k <= 14000; k+=2) {
    float sinz = sin(j);

    float X = cos(10*PI*k/c)*(1-(0.5*(sq(cos(sinz*PI*k/14000)))));
    float Y = sin(10*PI*k/c)*(1-(0.5*(sq(cos(sinz*PI*k/14000)))));

    float n = sin(52*PI*k/14000);  
    float r = 1/200 + 0.1*(n*n*n*n);

    ellipse(400*X, 400*Y, 800*r, 800* r );
    // println(r);
    //rotateZ(j);

    j+=0.00001;
  }
  for (int h = 350; h < 750; h+=20) {
    pushMatrix();
    noStroke();
    fill(#FCFC00, 10);
    ellipse(0, 0, h, h);
    popMatrix();
  }
}