Circle circle;

void setup() {
  size(800, 800);
  circle = new Circle();
}

void draw() {
  background(0);
  circle.grow();
  circle.display();
}