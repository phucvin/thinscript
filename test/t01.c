#include "t01.h"
#include <stdlib.h>
#include <string.h>

#ifdef THINSCRIPT_BIG_ENDIAN
  #define S(a, b) (((a) << 16) | (b))
#else
  #define S(a, b) ((a) | ((b) << 16))
#endif

static const uint32_t __string_0_Hello_from_C[] = {12, S('H', 'e'), S('l', 'l'), S('o', ' '), S('f', 'r'), S('o', 'm'), S(' ', 'C')};

#undef S

struct Link;
struct List;

struct Link {
  int32_t value;
  struct Link *next;
};

struct List {
  struct Link *first;
  struct Link *last;
};

static const uint16_t *string_new(uint32_t length);
const uint16_t *cstring_to_utf16(uint8_t *utf8);
uint8_t *utf16_to_cstring(const uint16_t *input);
void print(const uint16_t *text);
static void List_append(struct List *__this, int32_t value);
int32_t main();

static const uint16_t *string_new(uint32_t length) {
  uint8_t *ptr = malloc((length << 1) + 4);
  *(uint32_t *)ptr = length;

  return (const uint16_t *)ptr;
}

const uint16_t *cstring_to_utf16(uint8_t *utf8) {
  if (utf8 == NULL) {
    return NULL;
  }

  uint32_t utf16_length = 0;
  uint8_t a = 0;
  uint8_t b = 0;
  uint8_t c = 0;
  uint8_t d = 0;
  uint32_t i = 0;

  while ((a = *(utf8 + i)) != 0) {
    i = i + 1;
    uint32_t codePoint = 0;

    if ((b = *(utf8 + i)) != 0 && a >= 192) {
      i = i + 1;

      if ((c = *(utf8 + i)) != 0 && a >= 224) {
        i = i + 1;

        if ((d = *(utf8 + i)) != 0 && a >= 240) {
          i = i + 1;
          codePoint = (a & 7) << 18 | (b & 63) << 12 | (c & 63) << 6 | (d & 63);
        }

        else {
          codePoint = (a & 15) << 12 | (b & 63) << 6 | (c & 63);
        }
      }

      else {
        codePoint = (a & 31) << 6 | (b & 63);
      }
    }

    else {
      codePoint = a;
    }

    utf16_length = utf16_length + (uint32_t)(codePoint < 65536 ? 1 : 2);
  }

  const uint16_t *output = string_new(utf16_length);
  uint16_t *utf16 = (uint16_t *)output + 2;
  i = 0;

  while ((a = *(utf8 + i)) != 0) {
    i = i + 1;
    uint32_t codePoint = 0;

    if ((b = *(utf8 + i)) != 0 && a >= 192) {
      i = i + 1;

      if ((c = *(utf8 + i)) != 0 && a >= 224) {
        i = i + 1;

        if ((d = *(utf8 + i)) != 0 && a >= 240) {
          i = i + 1;
          codePoint = (a & 7) << 18 | (b & 63) << 12 | (c & 63) << 6 | (d & 63);
        }

        else {
          codePoint = (a & 15) << 12 | (b & 63) << 6 | (c & 63);
        }
      }

      else {
        codePoint = (a & 31) << 6 | (b & 63);
      }
    }

    else {
      codePoint = a;
    }

    if (codePoint < 65536) {
      *utf16 = (uint16_t)codePoint;
    }

    else {
      *utf16 = (uint16_t)((codePoint >> 10) + 55232);
      utf16 = utf16 + 1;
      *utf16 = (uint16_t)((codePoint & 1023) + 56320);
    }

    utf16 = utf16 + 1;
  }

  return output;
}

uint8_t *utf16_to_cstring(const uint16_t *input) {
  if ((uint32_t *)input == NULL) {
    return NULL;
  }

  uint32_t utf16_length = *(uint32_t *)input;
  uint32_t utf8_length = 0;
  uint16_t *utf16 = (uint16_t *)input + 2;
  uint32_t i = 0;

  while (i < utf16_length) {
    uint32_t codePoint = 0;
    uint16_t a = *(utf16 + i);
    i = i + 1;

    if (i < utf16_length && a >= 55296 && a <= 56319) {
      uint16_t b = *(utf16 + i);
      i = i + 1;
      codePoint = (a << 10) + b - 56613888;
    }

    else {
      codePoint = a;
    }

    utf8_length = utf8_length + (uint32_t)(codePoint < 128 ? 1 : codePoint < 2048 ? 2 : codePoint < 65536 ? 3 : 4);
  }

  uint8_t *utf8 = malloc(utf8_length + 1);
  uint8_t *next = utf8;
  i = 0;

  while (i < utf16_length) {
    uint32_t codePoint = 0;
    uint16_t a = *(utf16 + i);
    i = i + 1;

    if (i < utf16_length && a >= 55296 && a <= 56319) {
      uint16_t b = *(utf16 + i);
      i = i + 1;
      codePoint = (a << 10) + b - 56613888;
    }

    else {
      codePoint = a;
    }

    if (codePoint < 128) {
      *next = (uint8_t)codePoint;
    }

    else {
      if (codePoint < 2048) {
        *next = (uint8_t)((codePoint >> 6 & 31) | 192);
      }

      else {
        if (codePoint < 65536) {
          *next = (uint8_t)((codePoint >> 12 & 15) | 224);
        }

        else {
          *next = (uint8_t)((codePoint >> 18 & 7) | 240);
          next = next + 1;
          *next = (uint8_t)((codePoint >> 12 & 63) | 128);
        }

        next = next + 1;
        *next = (uint8_t)((codePoint >> 6 & 63) | 128);
      }

      next = next + 1;
      *next = (uint8_t)((codePoint & 63) | 128);
    }

    next = next + 1;
  }

  *next = 0;

  return utf8;
}

static void List_append(struct List *__this, int32_t value) {
  struct Link *link = calloc(1, sizeof(struct Link));
  link->value = value;

  if (__this->first == NULL) {
    __this->first = link;
  }

  else {
    __this->last->next = link;
  }

  __this->last = link;
}

int32_t main() {
  struct List *list = calloc(1, sizeof(struct List));
  List_append(list, 1);
  List_append(list, 2);
  List_append(list, 3);
  int32_t total = 0;
  struct Link *link = list->first;

  while (link != NULL) {
    total = total + link->value;
    link = link->next;
  }

  print((const uint16_t *)__string_0_Hello_from_C);

  return total;
}
