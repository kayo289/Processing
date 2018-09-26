int len = 40;
int candyCnt =7;
int[] candySteps = new int[candyCnt];
int[] candyX = new int[candyCnt];
int[] candyY = new int[candyCnt];
int[] candyCols = new color[candyCnt*2];
int[] candyR = new int[candyCnt];
color bg = color(245, 198, 244);
void setup() {
  size(800, 800);
  for (int i = 0; i <candyCnt; i++) {
    candyCols[i] = color(int(random(30, 230)), int(random(50, 220)), int(random(40, 225)));
  }
}

void draw() {
  
  background(bg);
  noStroke();
  fill(137, 93, 28);
  rect(mouseX+18, mouseY+40, 15, 70);
  fill(125, 173, 247);
  rect(mouseX, mouseY, len*1.3, len*2);

  for (int i = 0; i < candyCnt; i++) {
    if (candyY[i] == 0) {
      candyX[i] = int(random(1, 800));
      candySteps[i] = int(random(1, 30));
      candyR[i]=int(random(5, 30));
    }

    fill(candyCols[i*2]);
    triangle(candyX[i], candyY[i], 
      candyX[i]+candyR[i]*1.5, candyY[i]-candyR[i], 
      candyX[i]+candyR[i]*1.5, candyY[i]+candyR[i]);
    triangle(candyX[i], candyY[i], 
      candyX[i]-candyR[i]*1.5, candyY[i]-candyR[i], 
      candyX[i]-candyR[i]*1.5, candyY[i]+candyR[i]);

    fill(candyCols[i]);
    ellipse(candyX[i], candyY[i], candyR[i]*2, candyR[i]*2);
    candyY[i] += candySteps[i];

    if (candyY[i] >= height+candyR[i]) {
      candyY[i] = 0;
    }
  }
}
