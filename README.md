

>   [一种基于so的C/C++服务热更新方案 - 简书](https://www.jianshu.com/p/b7c7102119fa);

原始版本:

1. 首先编译 hotfix 目录下的内容为 libhotfix.a 静态库:
2. 将该库编入 main 中, 
3. 将 patch.cc 编译为 patch.so
4. 运行main, 发送 USR1 信号给 main

>   原始版本缺少了头文件定义, 不过问题不大, 我主要不理解为什么直接设置 old_func 的地址就能实现更新. 

---

我的版本:

先编译主程序

```bash
$ g++ main.cc app.cc hot_fix.cc -o main && ./main
```



然后编译动态库 patch.so:

```bash
$ g++ patch.cc app.cc -fpic -shared -o patch.so -ldl -rdynamic
```

这里需要 app.cc 主要是因为需要 need_fix_func 的符号定义. 

我的理解是 patch 里面虽然写入了 need_fix_func 函数的指针(首地址), 但是因为是 pic 代码, 所以实际运行main时need_fix_func 的地址会变, 所以不能简单的直接赋值, 而是要在程序执行时读取:

```cpp
int ret = fix_func(fix_item->new_func, 
		    //fix_item->old_func
		    (void*)&need_fix_func);
```

这样可以正确完成热更新. 

发送信号的命令 

```bash
kill -USR1 `ps -ef|grep main|grep -v grep|awk '{print $2}'`
```

>   注意这里先查一下`ps aux| grep main`, 不要有程序跟 main 同名, 否则没法正确发送信号. 

```c
before fix_func addr : 0x559a110cb391
before fix cur times 0
before fix cur times 1
before fix cur times 2
before fix cur times 3
before fix cur times 4
before fix cur times 5
before fix cur times 6
before fix cur times 7
before fix cur times 8
before fix cur times 9
do fix
0x7f2357852380   new_func=0x7f23578521e9
begin fix func
fix result ret 0
call fix_func()
before fix_func addr : 0x7f2357852380
after  fix_func addr : 0x7f23578521e9
load new fix function
after fix cur times 0
after fix cur times 1
after fix cur times 2
call fix_func()
before fix_func addr : 0x7f2357852380
after  fix_func addr : 0x7f23578521e9
load new fix function
after fix cur times 0
after fix cur times 1
after fix cur times 2
call fix_func()
before fix_func addr : 0x7f2357852380
after  fix_func addr : 0x7f23578521e9
load new fix function
after fix cur times 0
after fix cur times 1
after fix cur times 2
```

