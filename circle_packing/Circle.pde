class Circle {
 PVector location;
 float radius;
 
 Circle() {
  float x = random(0, width);
  float y = random(0, height);
  location = new PVector(x, y);
  radius = 1;
 }
 
 void display() {
  stroke(255);
  noFill();
  ellipse(location.x, location.y, radius * 2, radius * 2);
 }
}