#include<stdio.h>


int main() {
   unsigned long var = 14444;
   char *var_char = (char *) &var;

   printf("%x\n", var);
   printf("%x\n", var_char[0]);
   printf("%x\n", var_char[1]);
   printf("%p\n", var_char[2]);
   printf("%p\n", var_char[3]);
   printf("%x\n", *((unsigned long *)var_char));
}
