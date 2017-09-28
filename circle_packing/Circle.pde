class Circle {
  PVector location;
  float radius;
  float growBy;

  Circle() {
    float x = random(0, width);
    float y = random(0, height);
    location = new PVector(x, y);
    radius = 1;
    growBy = 0.5;
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(location.x, location.y, radius * 2, radius * 2);
  }
  
  void grow() {
   radius += growBy; 
  }
}