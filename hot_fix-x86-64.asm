00000000000014c3 <_ZL8fix_funcPKvPv>:
    14c3:   f3 0f 1e fa             endbr64
    14c7:   55                      push   %rbp
    14c8:   48 89 e5                mov    %rsp,%rbp
    14cb:   48 83 ec 40             sub    $0x40,%rsp
    14cf:   48 89 7d c8             mov    %rdi,-0x38(%rbp)
    14d3:   48 89 75 c0             mov    %rsi,-0x40(%rbp)
    14d7:   64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    14de:   00 00
    14e0:   48 89 45 f8             mov    %rax,-0x8(%rbp)
    14e4:   31 c0                   xor    %eax,%eax
    14e6:   48 8d 05 45 0b 00 00    lea    0xb45(%rip),%rax        # 2032 <_IO_stdin_used+0x32>
    14ed:   48 89 c6                mov    %rax,%rsi
    14f0:   48 8d 05 49 2b 00 00    lea    0x2b49(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    14f7:   48 89 c7                mov    %rax,%rdi
    14fa:   e8 91 fc ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    14ff:   48 8b 15 ca 2a 00 00    mov    0x2aca(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1506:   48 89 d6                mov    %rdx,%rsi
    1509:   48 89 c7                mov    %rax,%rdi
    150c:   e8 8f fc ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    1511:   66 c7 45 f4 48 b8       movw   $0xb848,-0xc(%rbp) # 写入立即数, 即 mov 和 jmp 的操作数
    1517:   66 c7 45 f6 ff e0       movw   $0xe0ff,-0xa(%rbp)
    151d:   e8 ee fc ff ff          call   1210 <getpagesize@plt>
    1522:   48 98                   cltq
    1524:   48 89 45 e0             mov    %rax,-0x20(%rbp)
    1528:   c7 45 dc 0c 00 00 00    movl   $0xc,-0x24(%rbp)
    152f:   48 8b 4d c0             mov    -0x40(%rbp),%rcx
    1533:   48 8b 45 c0             mov    -0x40(%rbp),%rax
    1537:   ba 00 00 00 00          mov    $0x0,%edx
    153c:   48 f7 75 e0             divq   -0x20(%rbp)
    1540:   48 89 d0                mov    %rdx,%rax
    1543:   48 f7 d8                neg    %rax
    1546:   48 01 c8                add    %rcx,%rax
    1549:   48 89 45 e8             mov    %rax,-0x18(%rbp)
    154d:   48 8b 45 c0             mov    -0x40(%rbp),%rax
    1551:   48 2b 45 e8             sub    -0x18(%rbp),%rax
    1555:   48 83 c0 0c             add    $0xc,%rax
    1559:   48 89 c1                mov    %rax,%rcx
    155c:   48 8b 45 e8             mov    -0x18(%rbp),%rax
    1560:   ba 07 00 00 00          mov    $0x7,%edx
    1565:   48 89 ce                mov    %rcx,%rsi
    1568:   48 89 c7                mov    %rax,%rdi
    156b:   e8 80 fc ff ff          call   11f0 <mprotect@plt>
    1570:   85 c0                   test   %eax,%eax
    1572:   0f 95 c0                setne  %al
    1575:   84 c0                   test   %al,%al
    1577:   74 0a                   je     1583 <_ZL8fix_funcPKvPv+0xc0>
    1579:   b8 ff ff ff ff          mov    $0xffffffff,%eax
    157e:   e9 9e 00 00 00          jmp    1621 <_ZL8fix_funcPKvPv+0x15e>
    1583:   48 8d 05 b8 0a 00 00    lea    0xab8(%rip),%rax        # 2042 <_IO_stdin_used+0x42>
    158a:   48 89 c6                mov    %rax,%rsi
    158d:   48 8d 05 ac 2a 00 00    lea    0x2aac(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1594:   48 89 c7                mov    %rax,%rdi
    1597:   e8 f4 fb ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    159c:   48 89 c2                mov    %rax,%rdx
    159f:   48 8d 45 c0             lea    -0x40(%rbp),%rax
    15a3:   48 89 c6                mov    %rax,%rsi
    15a6:   48 89 d7                mov    %rdx,%rdi
    15a9:   e8 92 fb ff ff          call   1140 <_ZNSolsEPKv@plt>
    15ae:   48 8b 15 1b 2a 00 00    mov    0x2a1b(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    15b5:   48 89 d6                mov    %rdx,%rsi
    15b8:   48 89 c7                mov    %rax,%rdi
    15bb:   e8 e0 fb ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    15c0:   48 8b 45 c0             mov    -0x40(%rbp),%rax
    15c4:   0f b7 55 f4             movzwl -0xc(%rbp),%edx # 改写地址, 替换新的
    15c8:   66 89 10                mov    %dx,(%rax)
    15cb:   48 8b 45 c0             mov    -0x40(%rbp),%rax
    15cf:   48 8d 50 02             lea    0x2(%rax),%rdx
    15d3:   48 8b 45 c8             mov    -0x38(%rbp),%rax
    15d7:   48 89 02                mov    %rax,(%rdx)
    15da:   48 8b 45 c0             mov    -0x40(%rbp),%rax
    15de:   48 8d 50 0a             lea    0xa(%rax),%rdx
    15e2:   0f b7 45 f6             movzwl -0xa(%rbp),%eax
    15e6:   66 89 02                mov    %ax,(%rdx)
    15e9:   48 8b 45 c0             mov    -0x40(%rbp),%rax
    15ed:   48 2b 45 e8             sub    -0x18(%rbp),%rax
    15f1:   48 83 c0 0c             add    $0xc,%rax
    15f5:   48 89 c1                mov    %rax,%rcx
    15f8:   48 8b 45 e8             mov    -0x18(%rbp),%rax
    15fc:   ba 05 00 00 00          mov    $0x5,%edx
    1601:   48 89 ce                mov    %rcx,%rsi
    1604:   48 89 c7                mov    %rax,%rdi
    1607:   e8 e4 fb ff ff          call   11f0 <mprotect@plt>
    160c:   85 c0                   test   %eax,%eax
    160e:   0f 95 c0                setne  %al
    1611:   84 c0                   test   %al,%al
    1613:   74 07                   je     161c <_ZL8fix_funcPKvPv+0x159>
    1615:   b8 ff ff ff ff          mov    $0xffffffff,%eax
    161a:   eb 05                   jmp    1621 <_ZL8fix_funcPKvPv+0x15e>
    161c:   b8 00 00 00 00          mov    $0x0,%eax
    1621:   48 8b 55 f8             mov    -0x8(%rbp),%rdx
    1625:   64 48 2b 14 25 28 00    sub    %fs:0x28,%rdx
    162c:   00 00
    162e:   74 05                   je     1635 <_ZL8fix_funcPKvPv+0x172>
    1630:   e8 7b fb ff ff          call   11b0 <__stack_chk_fail@plt>
    1635:   c9                      leave
    1636:   c3                      ret




0000000000001391 <_Z13need_fix_funcv>:
    1391:   f3 0f 1e fa             endbr64 # 要改写的函数指针
    1395:   55                      push   %rbp
    1396:   48 89 e5                mov    %rsp,%rbp
    1399:   48 83 ec 10             sub    $0x10,%rsp
    139d:   48 8d 05 60 0c 00 00    lea    0xc60(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    13a4:   48 89 c6                mov    %rax,%rsi
    13a7:   48 8d 05 92 2c 00 00    lea    0x2c92(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    13ae:   48 89 c7                mov    %rax,%rdi
    13b1:   e8 da fd ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    13b6:   48 89 c2                mov    %rax,%rdx
    13b9:   48 8d 05 d1 ff ff ff    lea    -0x2f(%rip),%rax        # 1391 <_Z13need_fix_funcv>
    13c0:   48 89 c6                mov    %rax,%rsi
    13c3:   48 89 d7                mov    %rdx,%rdi
    13c6:   e8 75 fd ff ff          call   1140 <_ZNSolsEPKv@plt>
    13cb:   48 8b 15 fe 2b 00 00    mov    0x2bfe(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    13d2:   48 89 d6                mov    %rdx,%rsi
    13d5:   48 89 c7                mov    %rax,%rdi
    13d8:   e8 c3 fd ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    13dd:   c7 45 fc 0a 00 00 00    movl   $0xa,-0x4(%rbp)
    13e4:   c7 45 f8 00 00 00 00    movl   $0x0,-0x8(%rbp)
    13eb:   eb 3f                   jmp    142c <_Z13need_fix_funcv+0x9b>
    13ed:   48 8d 05 28 0c 00 00    lea    0xc28(%rip),%rax        # 201c <_IO_stdin_used+0x1c>
    13f4:   48 89 c6                mov    %rax,%rsi
    13f7:   48 8d 05 42 2c 00 00    lea    0x2c42(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    13fe:   48 89 c7                mov    %rax,%rdi
    1401:   e8 8a fd ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1406:   48 89 c2                mov    %rax,%rdx
    1409:   8b 45 f8                mov    -0x8(%rbp),%eax
    140c:   89 c6                   mov    %eax,%esi
    140e:   48 89 d7                mov    %rdx,%rdi
    1411:   e8 ea fd ff ff          call   1200 <_ZNSolsEi@plt>
    1416:   48 8b 15 b3 2b 00 00    mov    0x2bb3(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    141d:   48 89 d6                mov    %rdx,%rsi
    1420:   48 89 c7                mov    %rax,%rdi
    1423:   e8 78 fd ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    1428:   83 45 f8 01             addl   $0x1,-0x8(%rbp)
    142c:   8b 45 f8                mov    -0x8(%rbp),%eax
    142f:   3b 45 fc                cmp    -0x4(%rbp),%eax
    1432:   7c b9                   jl     13ed <_Z13need_fix_funcv+0x5c>
    1434:   b8 00 00 00 00          mov    $0x0,%eax
    1439:   c9                      leave
    143a:   c3                      ret


0000000000001637 <_ZL6do_fixi>:
    1637:   f3 0f 1e fa             endbr64
    163b:   55                      push   %rbp
    163c:   48 89 e5                mov    %rsp,%rbp
    163f:   48 83 ec 50             sub    $0x50,%rsp
    1643:   89 7d bc                mov    %edi,-0x44(%rbp)
    1646:   64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    164d:   00 00
    164f:   48 89 45 f8             mov    %rax,-0x8(%rbp)
    1653:   31 c0                   xor    %eax,%eax
    1655:   48 8d 05 f4 09 00 00    lea    0x9f4(%rip),%rax        # 2050 <_IO_stdin_used+0x50>
    165c:   48 89 c6                mov    %rax,%rsi
    165f:   48 8d 05 da 29 00 00    lea    0x29da(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1666:   48 89 c7                mov    %rax,%rdi
    1669:   e8 22 fb ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    166e:   48 8b 15 5b 29 00 00    mov    0x295b(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1675:   48 89 d6                mov    %rdx,%rsi
    1678:   48 89 c7                mov    %rax,%rdi
    167b:   e8 20 fb ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    1680:   48 b8 2e 2e 2f 74 65    movabs $0x5f747365742f2e2e,%rax
    1687:   73 74 5f
    168a:   48 ba 70 72 6f 6a 2f    movabs $0x7461702f6a6f7270,%rdx
    1691:   70 61 74
    1694:   48 89 45 e0             mov    %rax,-0x20(%rbp)
    1698:   48 89 55 e8             mov    %rdx,-0x18(%rbp)
    169c:   c7 45 f0 63 68 2e 73    movl   $0x732e6863,-0x10(%rbp)
    16a3:   66 c7 45 f4 6f 00       movw   $0x6f,-0xc(%rbp)
    16a9:   48 8d 45 e0             lea    -0x20(%rbp),%rax
    16ad:   be 02 01 00 00          mov    $0x102,%esi
    16b2:   48 89 c7                mov    %rax,%rdi
    16b5:   e8 16 fb ff ff          call   11d0 <dlopen@plt>
    16ba:   48 89 45 c8             mov    %rax,-0x38(%rbp)
    16be:   48 83 7d c8 00          cmpq   $0x0,-0x38(%rbp)
    16c3:   75 6b                   jne    1730 <_ZL6do_fixi+0xf9>
    16c5:   e8 b6 fa ff ff          call   1180 <dlerror@plt>
    16ca:   48 89 c6                mov    %rax,%rsi
    16cd:   48 8d 05 6c 29 00 00    lea    0x296c(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    16d4:   48 89 c7                mov    %rax,%rdi
    16d7:   e8 b4 fa ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    16dc:   48 8b 15 ed 28 00 00    mov    0x28ed(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    16e3:   48 89 d6                mov    %rdx,%rsi
    16e6:   48 89 c7                mov    %rax,%rdi
    16e9:   e8 b2 fa ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    16ee:   48 8d 05 62 09 00 00    lea    0x962(%rip),%rax        # 2057 <_IO_stdin_used+0x57>
    16f5:   48 89 c6                mov    %rax,%rsi
    16f8:   48 8d 05 41 29 00 00    lea    0x2941(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    16ff:   48 89 c7                mov    %rax,%rdi
    1702:   e8 89 fa ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1707:   48 89 c2                mov    %rax,%rdx
    170a:   48 8d 45 e0             lea    -0x20(%rbp),%rax
    170e:   48 89 c6                mov    %rax,%rsi
    1711:   48 89 d7                mov    %rdx,%rdi
    1714:   e8 77 fa ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1719:   48 8b 15 b0 28 00 00    mov    0x28b0(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1720:   48 89 d6                mov    %rdx,%rsi
    1723:   48 89 c7                mov    %rax,%rdi
    1726:   e8 75 fa ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    172b:   e9 08 01 00 00          jmp    1838 <_ZL6do_fixi+0x201>
    1730:   48 8b 45 c8             mov    -0x38(%rbp),%rax
    1734:   48 8d 15 33 09 00 00    lea    0x933(%rip),%rdx        # 206e <_IO_stdin_used+0x6e>
    173b:   48 89 d6                mov    %rdx,%rsi
    173e:   48 89 c7                mov    %rax,%rdi
    1741:   e8 2a fa ff ff          call   1170 <dlsym@plt>
    1746:   48 89 45 d0             mov    %rax,-0x30(%rbp)
    174a:   48 83 7d d0 00          cmpq   $0x0,-0x30(%rbp)
    174f:   75 3c                   jne    178d <_ZL6do_fixi+0x156>
    1751:   48 8d 05 20 09 00 00    lea    0x920(%rip),%rax        # 2078 <_IO_stdin_used+0x78>
    1758:   48 89 c6                mov    %rax,%rsi
    175b:   48 8d 05 de 28 00 00    lea    0x28de(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1762:   48 89 c7                mov    %rax,%rdi
    1765:   e8 26 fa ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    176a:   48 8b 15 5f 28 00 00    mov    0x285f(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1771:   48 89 d6                mov    %rdx,%rsi
    1774:   48 89 c7                mov    %rax,%rdi
    1777:   e8 24 fa ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    177c:   48 8b 45 c8             mov    -0x38(%rbp),%rax
    1780:   48 89 c7                mov    %rax,%rdi
    1783:   e8 c8 f9 ff ff          call   1150 <dlclose@plt>
    1788:   e9 ab 00 00 00          jmp    1838 <_ZL6do_fixi+0x201>
    178d:   be 02 00 00 00          mov    $0x2,%esi
    1792:   bf 00 00 00 00          mov    $0x0,%edi
    1797:   e8 34 fa ff ff          call   11d0 <dlopen@plt>
    179c:   48 89 45 d8             mov    %rax,-0x28(%rbp)
    17a0:   48 83 7d d8 00          cmpq   $0x0,-0x28(%rbp)
    17a5:   75 39                   jne    17e0 <_ZL6do_fixi+0x1a9>
    17a7:   48 8d 05 dc 08 00 00    lea    0x8dc(%rip),%rax        # 208a <_IO_stdin_used+0x8a>
    17ae:   48 89 c6                mov    %rax,%rsi
    17b1:   48 8d 05 88 28 00 00    lea    0x2888(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    17b8:   48 89 c7                mov    %rax,%rdi
    17bb:   e8 d0 f9 ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    17c0:   48 8b 15 09 28 00 00    mov    0x2809(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    17c7:   48 89 d6                mov    %rdx,%rsi
    17ca:   48 89 c7                mov    %rax,%rdi
    17cd:   e8 ce f9 ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    17d2:   48 8b 45 c8             mov    -0x38(%rbp),%rax
    17d6:   48 89 c7                mov    %rax,%rdi
    17d9:   e8 72 f9 ff ff          call   1150 <dlclose@plt>
    17de:   eb 58                   jmp    1838 <_ZL6do_fixi+0x201>
    17e0:   48 8b 45 d0             mov    -0x30(%rbp),%rax
    17e4:   48 8b 00                mov    (%rax),%rax
    17e7:   48 8d 15 a3 fb ff ff    lea    -0x45d(%rip),%rdx        # 1391 <_Z13need_fix_funcv>
    17ee:   48 89 d6                mov    %rdx,%rsi
    17f1:   48 89 c7                mov    %rax,%rdi
    17f4:   e8 ca fc ff ff          call   14c3 <_ZL8fix_funcPKvPv>
    17f9:   89 45 c4                mov    %eax,-0x3c(%rbp)
    17fc:   48 8d 05 96 08 00 00    lea    0x896(%rip),%rax        # 2099 <_IO_stdin_used+0x99>
    1803:   48 89 c6                mov    %rax,%rsi
    1806:   48 8d 05 33 28 00 00    lea    0x2833(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    180d:   48 89 c7                mov    %rax,%rdi
    1810:   e8 7b f9 ff ff          call   1190 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1815:   48 89 c2                mov    %rax,%rdx
    1818:   8b 45 c4                mov    -0x3c(%rbp),%eax
    181b:   89 c6                   mov    %eax,%esi
    181d:   48 89 d7                mov    %rdx,%rdi
    1820:   e8 db f9 ff ff          call   1200 <_ZNSolsEi@plt>
    1825:   48 8b 15 a4 27 00 00    mov    0x27a4(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    182c:   48 89 d6                mov    %rdx,%rsi
    182f:   48 89 c7                mov    %rax,%rdi
    1832:   e8 69 f9 ff ff          call   11a0 <_ZNSolsEPFRSoS_E@plt>
    1837:   90                      nop
    1838:   48 8b 45 f8             mov    -0x8(%rbp),%rax
    183c:   64 48 2b 04 25 28 00    sub    %fs:0x28,%rax
    1843:   00 00
    1845:   74 05                   je     184c <_ZL6do_fixi+0x215>
    1847:   e8 64 f9 ff ff          call   11b0 <__stack_chk_fail@plt>
    184c:   c9                      leave
    184d:   c3                      ret


000000000000143b <_Z14business_logicv>:
    143b:   f3 0f 1e fa             endbr64
    143f:   55                      push   %rbp
    1440:   48 89 e5                mov    %rsp,%rbp
    1443:   bf 02 00 00 00          mov    $0x2,%edi
    1448:   e8 e3 fc ff ff          call   1130 <sleep@plt>
    144d:   e8 3f ff ff ff          call   1391 <_Z13need_fix_funcv>
    1452:   eb ef                   jmp    1443 <_Z14business_logicv+0x8>