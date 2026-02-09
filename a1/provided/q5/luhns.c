#include <stdio.h>
int main() {
int num;
int l_dig;
int store;
int asf;
asf = 0;
scanf("%d",&num);
l_dig = num%10;
num = num/10;
store = l_dig;
while (num > 0) {
    l_dig = num%10;
    num = num/10;
    if (l_dig*2 >= 10) {
        asf = asf + (2*l_dig - 9);
    } else {
        asf = asf + 2*l_dig;
    }
    l_dig = num%10;
    num = num/10;
    asf = asf + l_dig;
    }
if ((asf*9)%10 == store) {
    printf("Valid\n");
} 
else {
    printf("Invalid\n");
}
}