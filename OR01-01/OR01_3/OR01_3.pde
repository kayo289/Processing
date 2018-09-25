int[] data = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89};

int tmp = 0;
for (int  i =0; i<data.length/2; i++) {
  tmp = data[i];
  data[i] = data[data.length-1-i];
  data[data.length-1-i] =tmp;
}

for (int i = 0; i < data.length; i++) {
  print(data[i]+", ");
}
