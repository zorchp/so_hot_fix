#include "app.h"
#include "hot_fix.h"

int main() {
  init_hot_fix_signal();

  business_logic();

  return 0;
}
