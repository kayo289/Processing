int target = 1000;
int divCount;//割れる回数
int div;// 割る数
int mainCount = 0;

while (target <  10000) {
  div = 1;
  divCount=0;
  while (div <= target) {
    if (target%div==0) {
      divCount++;
    }
    div++;
  }

  if (divCount == 2) {
    mainCount ++;
  }

  target++;
}

println("素数="+mainCount+"個");
