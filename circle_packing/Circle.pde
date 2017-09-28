class Circle {
  PVector location;
  float radius;
  float growBy;
  boolean growing;
  color imgColor;

  Circle() {
    float x = random(0, width);
    float y = random(0, height);
    location = new PVector(x, y);
    radius = 1;
    growBy = 0.5;
    growing = true;
  }

  void display() {
    stroke(imgColor);
    noFill();
    ellipse(location.x, location.y, radius * 2, radius * 2);
  }

  void grow() {
    if (growing) {
      radius += growBy;
    }
  }

  boolean hittingEdge() {
    return location.x - radius <= 0 || location.x + radius >= width || location.y - radius <= 0 || location.y + radius >= height;
  }
}