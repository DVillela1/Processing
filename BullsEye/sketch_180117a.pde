void setup() {
  size(1000, 1000);
  noFill();
  int w = 100;
  for (int i = 10; i >= 0; i--) {
    w = w - 10;
    if (i%2==0) {
      fill(0,0,0);
    }
    else {
      fill(255, 0, 0);
    }
    ellipse(500, 500, w, w);
  }
}