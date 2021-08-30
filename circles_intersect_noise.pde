import processing.sound.*;
Ball ball1;
Ball ball2;
Timer timer;
WhiteNoise noise;

void setup() {
  size(400, 300);
  background(random(155, 255), random(155, 255), random(155, 255));
  noise = new WhiteNoise(this);
  ball1 = new Ball(100, 100, 50, 1, 1);
  ball2 = new Ball(250, 150, 50, -1, -2);
  timer = new Timer(2000);
  timer.start();
}

void draw() {
  if (timer.isFinished()) {
    background(random(155, 255), random(155, 255), random(155, 255));
    timer.start();
  }

  ball1.display();
  ball1.move();
  ball1.intersect(ball2);
  ball2.display();
  ball2.move();
}
