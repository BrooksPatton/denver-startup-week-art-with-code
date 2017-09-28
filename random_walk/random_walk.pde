Walker walker;

void setup() {
 size(800, 800);
 background(255);
 PVector location = new PVector(width / 2, height / 2);
 walker = new Walker(location);
}

void draw() {
 walker.run();
}