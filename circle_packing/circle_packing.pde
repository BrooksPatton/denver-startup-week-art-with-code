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
      circle.growing = false;
    }

    circle.grow();
    circle.display();
  }
}

void addToCircles() {
  Circle circle = new Circle();

  for (Circle otherCircle : circles) {
    float dist = otherCircle.location.dist(circle.location);
    if (dist <= otherCircle.radius) {
      circle = null;
      break;
    }
  }

  if (circle != null) {
    circles.add(circle);
  }
}