int len = 100;
int x;
int y;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  noFill();
  y= len/2;
  while (y+len/2<=height) {
    x = len/2;
    while (x+len/2<=width) {
      ellipse(x, y, len, len);
      rect(x-len/2, y-len/2, len, len);
      x+=len;
    }
    y+=len;
  }
}
