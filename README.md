>   环境:
>
>   x86_64 ubuntu22.04.4
>
>   gcc 11.4.0

## 旧版方案

>   [一种基于so的C/C++服务热更新方案 - 简书](https://www.jianshu.com/p/b7c7102119fa);

原始版本:

1. 编译 hotfix 目录下的内容为 libhotfix.a 静态库:
2. 将该库编入 main 中, 
3. 将 patch.cc 编译为 patch.so
4. 运行main, 发送 USR1 信号给 main

>   原始版本缺少了头文件定义, 不过问题不大, 我主要不理解为什么直接在 patch.cc 文件里面设置 old_func 的地址就能实现更新. 
>
>   ```cc
>   // 定义替换的函数和更新后的函数
>   FIXTABLE fix_table = {(void *)&fix_func, (void *)&need_fix_func};
>   ```
>
>   我的理解: 
>
>   patch.so 是在 main(也就是正在运行的程序)之后才编译的, 而且使用了位置无关代码, 那么这时候就算取了 need_fix_func的地址, 还是找不到实际正在运行的 need_fix_func 的地址, 此时就需要直接取地址, 在 main 编译的时候就定好了fix_table 的 old_func 项, 在动态加载了 patch.so 之后更新 new_func 的地址. 

---

## 我的版本

先编译主程序

```bash
$ g++ main.cc app.cc hot_fix.cc -o main && ./main
```



然后编译动态库 patch.so:

```bash
$ g++ patch.cc app.cc -fpic -shared -o patch.so -ldl
```

这里需要 app.cc 是因为 app.cc 里面定义了 need_fix_func . 

我的理解是 patch 里面虽然写入了 need_fix_func 函数的指针(首地址), 但是因为是 PIC 代码, 所以实际运行main时need_fix_func 的地址会变, 所以不能简单的直接赋值, 而是要在程序执行时读取: 

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

## 结果

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

## 还需要解决的问题

1.   为什么定位了 mov 指令就可以更改函数
2.   
