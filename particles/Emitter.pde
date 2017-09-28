class Emitter {
  PVector location;
  Particle particle;

  Emitter() {
    location = new PVector(width / 2, height / 2);
    particle = new Particle(location);
  }

  void run() {
    particle.run();
  }
}