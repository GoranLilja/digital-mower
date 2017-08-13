Mower mower;

void setup() {
  size(600,400);
  
  PVector pos = new PVector(500, 100);
  mower = new Mower(pos, 40);
}

// For each frame
void draw() {
  background(0, 120, 0);
  mower.update();
  mower.draw();
}