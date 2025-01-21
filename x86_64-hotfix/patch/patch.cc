#include <iostream>
#include "../app.h"
#include "../hot_fix.h"

using namespace std;

// 更新后的函数
int fix_func() {
    cout << "Updated function called!" << endl;
    for (int i = 0; i < 3; i++) {
        cout << "New logic: iteration " << i << endl;
    }
    return 0;
}

// extern "C"
FIXTABLE fix_table = {
    (void *)&fix_func, (void *)&need_fix_func,
    // NULL,
};
