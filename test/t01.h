#include <stdint.h>

const uint16_t *cstring_to_utf16(uint8_t *utf8);
uint8_t *utf16_to_cstring(const uint16_t *input);
void print(const uint16_t *text);
int32_t main();
