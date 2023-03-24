
#include <stdio.h>

int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int index = 6; // index out of bounds
    int i = 0;
    int b = 1;
    int x = 0;
    
    // out of bounds array access
    printf("arr[%d] = %d\n", index, arr[index]);
    
    // incrementing a Boolean variable
    b++;
    
    // matching if and else if conditions
    if (i > 0) {
        printf("i is positive\n");
    }
    else if (i < 0) {
        printf("i is negative\n");
    }
    else if (i == 0) { // this condition will always be true
        printf("i is zero\n");
    }
    
    // zero division
    int y = 10 / x;
    printf("y = %d\n", y);
    
    return 0;
}
