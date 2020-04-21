float ellipse_1 = 0;
float ellipse_2 = 0;

void setup() {
 size(500,500); 

noStroke();
fill(0,100,150);
}

void draw() {
  float e_size    = 50;
  if(random(10) > 9) {
    e_size = 100; }
    
    
 background(255,0,0);
 fill(40,0,0);
  ellipse(ellipse_1,250,e_size,e_size);
  
  fill(0,255,0);
  ellipse(ellipse_2,300,100,25);
  
  if(ellipse_1 > 550) {
    ellipse_1 = -50;
    }
    if(ellipse_2 > 550){
      
    ellipse_2 = -50;
    }
  ellipse_1 = ellipse_1 + 2;
  ellipse_2 = ellipse_2 + 4;
}