
void setup(){
  size(500,400);
  background(#38F04E);
}
  void draw() { 
    
    if(mousePressed) {
      
      fill(random(0),random(255),random(255));
    rect(mouseX,mouseY,10,10);
    }
  }