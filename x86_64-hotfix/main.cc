#include <iostream>
#include "app.h"
#include "hot_fix.h"

int main() {
    if (init_hot_fix_signal() != 0) {
        std::cerr << "Failed to initialize hotfix signal." << std::endl;
        return 1;
    }

    std::cout << "Running main logic. Use `kill -USR1 <pid>` to trigger hotfix." << std::endl;
    business_logic();
    return 0;
}
