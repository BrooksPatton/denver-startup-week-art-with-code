ArrayList<Walker> walkers;

void setup() {
 size(800, 800);
 background(255);
 walkers = new ArrayList<Walker>();
 
 for(int i = 0; i < 10; i++) {
   float x = random(0, width);
   float y = random(0, height);
  PVector location = new PVector(x, y);
  walkers.add(new Walker(location));
 }
}

void draw() {
 for(Walker w : walkers) {
  w.run(); 
 }
}