ArrayList<Circle> circles;

void setup() {
  size(800, 800);
  circles = new ArrayList<Circle>();
}

void draw() {
  background(0);

  addToCircles();

  for (Circle circle : circles) {
    if (circle.hittingEdge() || hittingOtherCircles(circle)) {
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

boolean hittingOtherCircles(Circle circle) {
  for (Circle otherCircle : circles) {
    if (circle != otherCircle) {
      float dist = otherCircle.location.dist(circle.location);
      if (dist <= otherCircle.radius + circle.radius) {
        return true;
      }
    }
  }

  return false;
}