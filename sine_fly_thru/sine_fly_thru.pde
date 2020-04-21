int cols, rows, fly = 0;
int scl = 10;
int w = 2000;
int h = 2800;

float[][] terrain;

void setup() {
  size(600, 600, P3D);

  cols = w/scl;
  rows = h/scl;

  terrain = new float[cols][rows];
}
void draw() {
  fly -=1;
  
 float yoff = fly;
  for ( int y = 0; y < rows; y++) {
    float xoff =0;
    for ( int x = 0; x < cols; x++) {
      
      terrain[x][y] = sin(xoff*0.5 )*sin(yoff*0.5 )*20;

     xoff+=1;
    }
    yoff+=1;
  }



  lights();
  directionalLight(255, 33, 219, 200, 200, 200);
  background(20);
  noStroke();
  fill(#12FF2F);
  translate(width/2, height/2);
  float r = map(mouseY, 0, h, 0, TWO_PI);
  rotateX(r);
  
  //rotateZ(map(mouseX, 0, h, 0, TWO_PI));
  
  translate(-w/2, -h/2);

  for ( int y = 0; y < rows -1; y++) {
    beginShape(TRIANGLE_STRIP);
    for ( int x = 0; x < cols; x++) {

      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
   
  fill(#1400FF);
  translate(w/2, h/2, 80);
  sphere(40);
  
  
  stroke(2);
  text(r, 20, 500);
  
}