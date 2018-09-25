int x, y, r, stepR;
int number = 10;

void setup() {
  size(800, 800);
  x=width/2;
  y=height/2;
  stepR = width/2/number;
}

void draw() {
  r = width/2;

  for (int i = 1; i <= 10; i++) {
    ellipse(x, y, r*2, r*2);
    r -= stepR;
  }
}
