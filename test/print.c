#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include "t01.h"

void print(const uint16_t *text) {
  uint8_t *ctext = utf16_to_cstring(text);
  printf("C injected | %s\n", (const char*)ctext);
  free(ctext);
}