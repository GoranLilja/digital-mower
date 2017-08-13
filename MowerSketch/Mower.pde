int randomNumber = 10;

class Mower {
  PVector pos;
  float angleX;
  float angleY;
  float size;
  ArrayList<PVector> trail;
  
  Mower(PVector pos, float size) {
    this.pos = pos;
    this.angleX = random(-randomNumber, randomNumber);
    this.angleY = random(-randomNumber, randomNumber);
    this.size = size;
    this.trail = new ArrayList<PVector>();
  }
  
  void update() {
    this.trail.add(this.pos.copy());
    if (this.trail.size() > 200) {
      this.trail.remove(0);
    }
    
    if (this.pos.x > width - this.size / 2) {
      this.angleX *= random(-1, -5);
    }
    if (this.pos.y > height - this.size / 2) {
      this.angleY *= random(-1, -5);
    }
    
    if (this.pos.x < this.size / 2) {
      this.angleX *= random(-1, -5);
    }
    if (this.pos.y < this.size / 2) {
      this.angleY *= random(-1, -5);
    }
    PVector angle = new PVector(this.angleX, this.angleY);
    this.pos.add(angle);
  }
  
  void draw() {
    noStroke();
    for (int i = 0; i < this.trail.size(); i++) {
      fill(0, 170, 0);
      ellipse(this.trail.get(i).x, this.trail.get(i).y, this.size, this.size);
    }
    
    fill(255, 100, 100);
    ellipse(this.pos.x, this.pos.y, this.size, this.size);
  }
}