class Emitter {
  PVector location;
  ArrayList<Particle> particles;

  Emitter() {
    location = new PVector(width / 2, height / 2);
    particles = new ArrayList<Particle>();
  }

  void run() {
    particles.add(new Particle(location));

    for (Particle p : particles) {
      p.run();
    }
  }
}