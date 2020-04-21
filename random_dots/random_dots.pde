

void setup() {
  size(400, 400);
  background(255);
}
void draw() {
  point(random(400),random(400));  
}

void keyPressed() {
 save(key + ".jpg");
  println(key);
}