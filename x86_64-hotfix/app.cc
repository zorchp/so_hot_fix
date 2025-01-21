#include "app.h"
#include <unistd.h>
#include <iostream>

using namespace std;

// 需要热更新的函数
int need_fix_func() {
    cout << "Original function called at address: " << (void *)&need_fix_func << endl;
    int times = 5;
    for (int i = 0; i < times; i++) {
        cout << "Original logic: iteration " << i << endl;
    }
    return 0;
}

int business_logic() {
    while (1) {
        sleep(2);         // 模拟业务逻辑
        need_fix_func();  // 调用需热更新的函数
    }
    return 0;
}
