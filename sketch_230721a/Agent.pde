class Agent {
  float r = random(0, 3) + 1;
  float x = random(r, img.width-r);
  float y = random(r, img.height -r);
  float speedY = random(10, 100);
  float coef_a = random(-0.5,0.5);
  float coef_b = random(-0.1,0.1);
  float time = 0;

  void step() {
    x += coef_a*sin(radians(millis()) * coef_b) + coef_b*sin(radians(millis()*3)*coef_a);
    y += speedY/frameRate;

    if (y > height + r*2) {
      y = -r*2;
    }
  }

  void display() {
    noStroke();
    fill(255);
    circle(x, y, r*2);
  }
}
