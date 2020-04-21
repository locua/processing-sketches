float r = 0;

void setup() {
  size(400, 400);
  background(255);
  noStroke();
  fill(0);
  rectMode(CENTER);
}
void control(float x,float y, float z, float r){
  translate(x,y);
   rotate(r);
  rect(0, 0, z, z);
  resetMatrix();
}

void draw() {
  background(255);
  control(100,100,80,r*7);
  control(300,100,40,r*2);
  control(100,300,100,r*0.5 );
  control(300,300,20,r*5);
  control(200,200,150,r*0.08);
  r= r + 0.01;
}