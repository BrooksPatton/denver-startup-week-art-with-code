class Walker {
  PVector location;

  Walker(PVector _location) {
    location = _location;
  }

  void run() {
    move();
    display();
  }

  void move() {
    int direction = floor(random(0, 4));

    if (direction == 0) {
      location.x++;
    } else if (direction == 1) {
      location.y++;
    } else if (direction == 2) {
      location.x--;
    } else {
      location.y--;
    }
  }
  
  void display() {
    ellipse(location.x, location.y, 1, 1);
  }
}