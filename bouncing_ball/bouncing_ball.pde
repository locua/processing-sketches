float circle_x = 300;
float circle_y = 10;
float i = -2;
float j = 2;

void setup() {
 size(400,200);
 stroke(#D60DFF);
 strokeWeight(7);
 
}
void draw() {
  background(#F8FF36);
  ellipse(circle_x, circle_y, 40, 40);
  
 circle_x = circle_x + i; 
 circle_y = circle_y + j;
 
 if(circle_x > width) {
   circle_x = width;
   i = -i;
 }
 if(circle_y > height) {
   circle_y = height;
   j = -j;
 }
 if (circle_x < 0) {
  circle_x = 0;
  i = -i;
 }
 if(circle_y < 0) {
  circle_y = 0;
  j = - j;
 }
}