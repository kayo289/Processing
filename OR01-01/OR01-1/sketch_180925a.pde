int [] number = {1, 0, 1, 31, 42, 1000, 1001, 39, 43, 42, 0};
int even = 0;
int odd = 0;//奇数
for (int i = 0; i < number.length; i++) {
  if (number[i]%2==0) {
    even++;
  } else {
    odd++;
  }
}

println("偶数:  "+even+"奇数:  "+odd);
