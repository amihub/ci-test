#include <stdlib.h>

int main(int argc, char *argv[]) {
  char *p = malloc(100);
  free(p);
  // free(p);
  return 0;
}
