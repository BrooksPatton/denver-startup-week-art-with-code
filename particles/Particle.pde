class Particle {
  PVector location;
  PVector acceleration;
  PVector velocity;

  Particle(PVector _location) {
    location = _location.copy();
    acceleration = new PVector();
    velocity = new PVector(random(-5, 5), random(-5, 5));
  }

  void run() {
    update();
    display();
  }

  void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(location.x, location.y, 3, 3);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
}