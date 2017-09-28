ArrayList<Circle> circles;

void setup() {
  size(800, 800);
  circles = new ArrayList<Circle>();
}

void draw() {
  background(0);

  addToCircles();

  for (Circle circle : circles) {
    if (circle.hittingEdge()) {
      circle.grow();
    }
    circle.display();
  }
}

void addToCircles() {
 Circle circle = new Circle();
 circles.add(circle);
}