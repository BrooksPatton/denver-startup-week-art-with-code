class Particle {
  PVector location;

  Particle(PVector _location) {
    location = _location.copy();
  }

  void run() {
    display();
  }

  void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(location.x, location.y, 3, 3);
  }
}