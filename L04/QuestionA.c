#include <stdio.h>

int main() {
  int i, j,m,n,x;
  for (i = 2; i <= 84; i++) {
    if (168 % i == 0) {
      j = 168 / i;
      if (i > j && (((i  % 2 == 0)&&(j  % 2 == 0) )||((i  % 2 == 1)&&(j  % 2 == 1)))){
        m =  (i + j)/2;
        n = i - m;
        x = n*n-100;
        printf("%d\n", x);
       
      }
    }
  }

  return 0;
}
