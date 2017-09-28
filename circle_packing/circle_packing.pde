Circle circle;

void setup() {
  size(800, 800);
  circle = new Circle();
}

void draw() {
  background(0);

  if (circle.hittingEdge()) {
    circle.grow();
  }
  circle.display();
}