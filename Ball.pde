class Ball {
  float x;
  float y;
  float r;
  float speedX;
  float speedY;

  Ball (float x_, float y_, float r_, float speedX_, float speedY_) {
    x = x_;
    y = y_;
    r = r_;
    speedX = speedX_;
    speedY = speedY_;
  }

  void display() {
    ellipseMode(CENTER);
    noStroke();
    ellipse(x, y, 2*r, 2*r);
  }

  void move() {
    x += speedX;
    y += speedY;

    if (x == 0 + r || x == width - r) {
      speedX *= -1;
    }
    if (y == 0 + r || y == height - r) {
      speedY *= -1;
    }
  }

  void intersect(Ball b) {
    if (dist(x, y, b.x, b.y) < r + b.r) {
      fill(random(155, 255), random(155, 255), random(155, 255));
      noise.play();
    } else {
      fill(255);
      noise.stop();
    }
  }
}
