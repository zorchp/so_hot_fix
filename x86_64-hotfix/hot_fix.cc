#include "hot_fix.h"
#include <dlfcn.h>
#include <sys/mman.h>
#include <unistd.h>
#include <cstdio>
#include <cstring>
#include <iostream>

using namespace std;

static int fix_func(const void *new_func, void *old_func) {
    cout << "Applying hotfix..." << endl;

    // 指令跳转模板
    char prefix[] = {'\x48', '\xb8'};  // MOV $new_func, %rax
    char postfix[] = {'\xff', '\xe0'}; // JMP %rax

    // 获取内存页面大小
    size_t page_size = getpagesize();
    size_t inst_len = sizeof(prefix) + sizeof(void *) + sizeof(postfix);

    // 计算页起始地址
    char *align_point = (char *)old_func - ((uintptr_t)old_func % page_size);

    // 修改权限为可写可执行
    if (0 != mprotect(align_point, (char *)old_func - align_point + inst_len,
                      PROT_READ | PROT_WRITE | PROT_EXEC)) {
        perror("mprotect failed");
        printf("Align point: %p, Old func: %p, Size: %zu\n", align_point,
               old_func, (char *)old_func - align_point + inst_len);
        return -1;
    }

    // 写入跳转指令
    memcpy(old_func, prefix, sizeof(prefix));
    memcpy((char *)old_func + sizeof(prefix), &new_func, sizeof(void *));
    memcpy((char *)old_func + sizeof(prefix) + sizeof(void *), postfix,
           sizeof(postfix));

    // 恢复权限为只读可执行
    if (mprotect(align_point, inst_len, PROT_READ | PROT_EXEC) != 0) {
        perror("mprotect failed");
        return -1;
    }
    cout << "Hotfix applied successfully!" << endl;
    return 0;
}

static void do_fix(int signum) {
    cout << "Signal received for hotfix!" << endl;

    // 加载动态库
    const char *so_path = "./patch/patch.so";
    void *lib = dlopen(so_path, RTLD_NOW);
    if (!lib) {
        cerr << "dlopen failed: " << dlerror() << endl;
        return;
    }

    // 查找符号
    FIXTABLE *fix_table = (FIXTABLE *)dlsym(lib, "fix_table");
    if (!fix_table) {
        cerr << "dlsym failed: " << dlerror() << endl;
        dlclose(lib);
        return;
    }

    // 为什么需要检查 dlopen(NULL, RTLD_NOW)
    // 它尝试获取当前进程的主程序句柄，通常用于后续调用 dlsym
    // 查找主程序中的符号。
    // 常见场景:
    // 在补丁机制或热更新中，需要动态地查找和修改当前程序中的符号。
    // 或者，可能需要获取动态库之间共享的全局变量。
    void *result = dlopen(NULL, RTLD_NOW);
    printf("result:%p\n", result);
    if (NULL == result) {
        cout << "result is null" << endl;
        dlclose(lib);
        return;
    }

    // 更新函数
    fix_func(fix_table->new_func, fix_table->old_func);
}

int init_hot_fix_signal() {
    return signal(SIGUSR1, do_fix) == SIG_ERR ? -1 : 0;
}
