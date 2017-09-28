Emitter emitter;

void setup() {
  size(800, 800);
  emitter = new Emitter();
}

void draw() {
  background(0);

  emitter.run();
}