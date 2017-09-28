ArrayList<Circle> circles;
PImage img;

void setup() {
  size(800, 800);
  circles = new ArrayList<Circle>();
  img = loadImage("Question_mark.png");
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
  int toAdd = 10;
  int attempts = 0;
  int maxAttempts = 1000;

  while (attempts < maxAttempts && toAdd > 0) {
    Circle circle = new Circle();

    for (Circle otherCircle : circles) {
      float dist = otherCircle.location.dist(circle.location);
      if (dist <= otherCircle.radius) {
        circle = null;
        break;
      }
    }

    if (circle != null) {
      circle.imgColor = img.get(int(circle.location.x), int(circle.location.y));
      circles.add(circle);
      toAdd--;
    } else {
      attempts++;
    }
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