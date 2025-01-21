#ifndef HOTFIX_H
#define HOTFIX_H

#include <signal.h>

// #ifdef __cplusplus
// extern "C" {
// #endif

struct FIXTABLE {
    void *new_func;
    void *old_func;
};

int init_hot_fix_signal();

// #ifdef __cplusplus
// }
// #endif

#endif // HOTFIX_H
