# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testCombine

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4705.489 ops/s
# Warmup Iteration   2: 9620.337 ops/s
# Warmup Iteration   3: 9845.974 ops/s
# Warmup Iteration   4: 9828.856 ops/s
# Warmup Iteration   5: 9790.531 ops/s
# Warmup Iteration   6: 9362.100 ops/s
# Warmup Iteration   7: 9376.873 ops/s
# Warmup Iteration   8: 9761.647 ops/s
# Warmup Iteration   9: 9731.899 ops/s
# Warmup Iteration  10: 9671.153 ops/s
# Warmup Iteration  11: 9805.374 ops/s
# Warmup Iteration  12: 9866.154 ops/s
# Warmup Iteration  13: 9937.537 ops/s
# Warmup Iteration  14: 9917.360 ops/s
# Warmup Iteration  15: 9933.424 ops/s
# Warmup Iteration  16: 9900.847 ops/s
# Warmup Iteration  17: 9045.367 ops/s
# Warmup Iteration  18: 9847.307 ops/s
# Warmup Iteration  19: 9912.362 ops/s
# Warmup Iteration  20: 9926.865 ops/s
Iteration   1: 9920.793 ops/s
Iteration   2: 9898.966 ops/s
Iteration   3: 9904.205 ops/s
Iteration   4: 9799.321 ops/s
Iteration   5: 9844.766 ops/s
Iteration   6: 9846.193 ops/s
Iteration   7: 9861.272 ops/s
Iteration   8: 9879.884 ops/s
Iteration   9: 9870.770 ops/s
Iteration  10: 9882.481 ops/s
Iteration  11: 9925.571 ops/s
Iteration  12: 9825.818 ops/s
Iteration  13: 9937.173 ops/s
Iteration  14: 9938.286 ops/s
Iteration  15: 9923.137 ops/s
Iteration  16: 9810.956 ops/s
Iteration  17: 9866.331 ops/s
Iteration  18: 9912.341 ops/s
Iteration  19: 9914.840 ops/s
Iteration  20: 9909.176 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9883.614 ±(99.9%) 36.347 ops/s [Average]
  (min, avg, max) = (9799.321, 9883.614, 9938.286), stdev = 41.857
  CI (99.9%): [9847.267, 9919.961] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 216492 total address lines.
Perf output processed (skipped 23.174 seconds):
 Column 1: cycles (20344 events)
 Column 2: instructions (20420 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 586 (1551 bytes) 

                                                                                             ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                                               0x00007f554481a170: mov    0x3c(%rsp),%r8d
                                               0x00007f554481a175: test   %r8d,%r8d
                                               0x00007f554481a178: jl     0x00007f554481ad75  ;*caload
                                                                                             ; - java.lang.String::indexOf@133 (line 1779)
                                                                                             ; - java.lang.String::indexOf@21 (line 1718)
                                                                                             ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                                             ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                                             ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%                                        0x00007f554481a17e: mov    $0x5,%r9d          ;*if_icmpne
                                                                                             ; - java.lang.String::indexOf@134 (line 1779)
                                                                                             ; - java.lang.String::indexOf@21 (line 1718)
                                                                                             ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                                             ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                                             ; - com.google.re2j.Machine::match@206 (line 224)
                                               0x00007f554481a184: cmp    $0xa,%r8d
                                               0x00007f554481a188: je     0x00007f554481ae2d  ;*invokestatic codePointAt
                                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
                                               0x00007f554481a18e: mov    %r8d,%r10d
                                               0x00007f554481a191: add    $0xffffffbf,%r10d
  0.00%    0.00%                               0x00007f554481a195: cmp    $0x1a,%r10d
                  ╭                            0x00007f554481a199: jb     0x00007f554481a1a9  ;*invokestatic indexOf
                  │                                                                          ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                                          ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                                          ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                                          ; - com.google.re2j.Machine::match@206 (line 224)
                  │                            0x00007f554481a19b: add    $0xffffff9f,%r8d
                  │                            0x00007f554481a19f: cmp    $0x1a,%r8d
                  │                            0x00007f554481a1a3: jae    0x00007f554481ae36  ;*getfield re2
                  │                                                                          ; - com.google.re2j.Machine::match@202 (line 224)
           0.00%  ↘                            0x00007f554481a1a9: or     $0x10,%r9d
                                               0x00007f554481a1ad: mov    0x24(%rsp),%r10d
  0.01%                                        0x00007f554481a1b2: and    $0x4,%r10d         ;*invokeinterface charAt
                                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                             ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                        0x00007f554481a1b6: mov    %r10d,0x4c(%rsp)
  0.00%                                        0x00007f554481a1bb: mov    %rax,%r10
  0.00%                                        0x00007f554481a1be: shl    $0x3,%r10
                                               0x00007f554481a1c2: mov    %r10,0x68(%rsp)
                                               0x00007f554481a1c7: xor    %eax,%eax
                                               0x00007f554481a1c9: xor    %r10d,%r10d
                                               0x00007f554481a1cc: mov    $0x1,%r8d
                                               0x00007f554481a1d2: mov    %r8d,0x7c(%rsp)
  0.00%            ╭                           0x00007f554481a1d7: jmpq   0x00007f554481a350
                   │         ↗                 0x00007f554481a1dc: or     $0xa,%r11d         ;*if_icmplt
                   │         │                                                               ; - java.lang.String::indexOf@3 (line 1756)
                   │         │                                                               ; - java.lang.String::indexOf@21 (line 1718)
                   │         │                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │         │                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │         │                                                               ; - com.google.re2j.Machine::match@206 (line 224)
                   │╭        │                 0x00007f554481a1e0: jmpq   0x00007f554481a521  ;*caload
                   ││        │                                                               ; - java.lang.String::charAt@27 (line 660)
                   ││        │                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││        │                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││        │                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.46%    0.52%   ││        │            ↗↗   0x00007f554481a1e5: mov    $0x1,%r8d
  0.29%    0.21%   ││╭       │            ││   0x00007f554481a1eb: jmpq   0x00007f554481a626
                   │││       │    ↗       ││   0x00007f554481a1f0: mov    0x50(%rsp),%r9
                   │││       │    │       ││   0x00007f554481a1f5: mov    0x30(%rsp),%r11
                   │││╭      │    │       ││   0x00007f554481a1fa: jmp    0x00007f554481a213
  0.18%    0.23%   ││││      │    │   ↗   ││   0x00007f554481a1fc: mov    0x18(%rsp),%r11
  0.09%    0.11%   ││││      │    │   │   ││   0x00007f554481a201: mov    0x10(%r11),%r8d    ;*if_icmplt
                   ││││      │    │   │   ││                                                 ; - java.lang.Character::charCount@3 (line 4818)
                   ││││      │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                   ││││      │    │   │   ││                                                 ; - com.google.re2j.Machine::match@249 (line 232)
  0.18%    0.26%   ││││      │    │   │   ││   0x00007f554481a205: mov    %r8d,0xc(%rsp)
  0.04%    0.05%   ││││      │    │   │   ││   0x00007f554481a20a: mov    0x50(%rsp),%r9
  0.18%    0.22%   ││││      │    │   │   ││   0x00007f554481a20f: mov    0x14(%r9),%r14d    ;*arraylength
                   ││││      │    │   │   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   ││││      │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││      │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││      │    │   │   ││                                                 ; - com.google.re2j.Machine::match@60 (line 193)
  0.10%    0.10%   │││↘      │    │   │   ││   0x00007f554481a213: mov    0x48(%rsp),%r10d
  0.20%    0.34%   │││       │    │   │   ││   0x00007f554481a218: movzbl 0x18(%r12,%r10,8),%r8d
  0.05%    0.06%   │││       │    │   │   ││   0x00007f554481a21e: test   %r8d,%r8d
                   │││ ╭     │    │   │   ││   0x00007f554481a221: jne    0x00007f554481a240  ;*aload_0
                   │││ │     │    │   │   ││                                                 ; - java.lang.String::indexOf@126 (line 1779)
                   │││ │     │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │││ │     │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │││ │     │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││ │     │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.16%    0.22%   │││ │     │    │   │   ││   0x00007f554481a223: mov    %r12d,0xc(%r12,%r10,8)
  0.12%    0.20%   │││ │     │    │   │   ││   0x00007f554481a228: mov    0x1c(%r12,%r10,8),%ebp
  0.19%    0.23%   │││ │     │    │   │   ││   0x00007f554481a22d: movb   $0x1,0x18(%r12,%r10,8)
  0.03%    0.06%   │││ │     │    │   │   ││   0x00007f554481a233: mov    %r12,0x10(%r12,%r10,8)
  0.25%    0.18%   │││ │     │    │   │   ││   0x00007f554481a238: test   %ebp,%ebp
                   │││ │     │    │   │   ││   0x00007f554481a23a: jne    0x00007f554481b751  ;*if_icmpne
                   │││ │     │    │   │   ││                                                 ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                   │││ │     │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││ │     │    │   │   ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.09%   │││ ↘     │    │   │   ││   0x00007f554481a240: mov    %r11,0x30(%rsp)
  0.17%    0.22%   │││       │    │   │   ││   0x00007f554481a245: movzbl 0x10(%r9),%eax     ;*bipush
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Utils::isWordRune@24 (line 149)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.04%    0.05%   │││       │    │   │   ││   0x00007f554481a24a: mov    %r9,0x50(%rsp)
  0.22%    0.14%   │││       │    │   │   ││   0x00007f554481a24f: movzbl 0x11(%r9),%r10d    ;*if_icmpgt
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.14%    0.08%   │││       │    │   │   ││   0x00007f554481a254: mov    0x38(%rsp),%r8d
  0.27%    0.16%   │││       │    │   │   ││   0x00007f554481a259: test   %r8d,%r8d
                   │││       │    │   │   ││   0x00007f554481a25c: je     0x00007f554481a870  ;*iload_2
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.06%    0.03%   │││       │    │   │   ││   0x00007f554481a262: test   %r10d,%r10d
                   │││       │    │   │   ││   0x00007f554481a265: jne    0x00007f554481b46d
  0.19%    0.18%   │││       │    │   │   ││   0x00007f554481a26b: test   %eax,%eax
                   │││       │    │   │   ││   0x00007f554481a26d: jne    0x00007f554481b659  ;*ifne
                   │││       │    │   │   ││                                                 ; - java.lang.String::isEmpty@5 (line 635)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.13%    0.06%   │││       │    │   │   ││   0x00007f554481a273: mov    0x30(%rsp),%r10
  0.23%    0.17%   │││       │    │   │   ││   0x00007f554481a278: mov    0xc(%r10),%ecx     ;*aload
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.05%    0.05%   │││       │    │   │   ││   0x00007f554481a27c: mov    0x14(%r10),%ebx    ;*if_icmpgt
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@57 (line 1769)
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.24%    0.10%   │││       │    │   │   ││   0x00007f554481a280: mov    0x3c(%rsp),%r8d
  0.10%    0.05%   │││       │    │   │   ││   0x00007f554481a285: cmp    $0xffffffff,%r8d
                   │││       │    │   │   ││   0x00007f554481a289: je     0x00007f554481a8b0  ;*caload
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@133 (line 1779)
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.15%    0.15%   │││       │    │   │   ││   0x00007f554481a28f: mov    0x40(%rsp),%r9d
  0.03%    0.02%   │││       │    │   │   ││   0x00007f554481a294: add    0x5c(%rsp),%r9d
  0.19%    0.10%   │││       │    │   │   ││   0x00007f554481a299: add    %ecx,%r9d          ;*if_icmplt
                   │││       │    │   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.10%    0.09%   │││       │    │   │   ││   0x00007f554481a29c: cmp    0xc(%rsp),%r9d
                   │││       │    │   │   ││   0x00007f554481a2a1: jge    0x00007f554481a8bf  ;*caload
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@129 (line 1779)
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.17%    0.07%   │││       │    │   │   ││   0x00007f554481a2a7: mov    0x8(%r12,%rbx,8),%r8d  ; implicit exception: dispatches to 0x00007f554481c4c1
  0.30%    0.08%   │││       │    │   │   ││   0x00007f554481a2ac: cmp    $0xf80002da,%r8d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││       │    │   │   ││   0x00007f554481a2b3: jne    0x00007f554481b2e5  ;*invokevirtual isEmpty
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.33%    0.18%   │││       │    │   │   ││   0x00007f554481a2b9: lea    (%r12,%rbx,8),%rdx  ;*if_icmplt
                   │││       │    │   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.06%    0.01%   │││       │    │   │   ││   0x00007f554481a2bd: test   %r9d,%r9d
  0.12%    0.02%   │││       │    │   │   ││   0x00007f554481a2c0: jl     0x00007f554481b4a5  ;*ireturn
                   │││       │    │   │   ││                                                 ; - java.lang.String::isEmpty@13 (line 635)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.02%    0.01%   │││       │    │   │   ││   0x00007f554481a2c6: mov    0xc(%rdx),%r10d    ;*aload_0
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@60 (line 1771)
                   │││       │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.32%    0.26%   │││       │    │   │   ││   0x00007f554481a2ca: mov    0xc(%r12,%r10,8),%ebp  ;*synchronization entry
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@-1 (line 172)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                   │││       │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c4d5
  1.14%    1.42%   │││       │    │   │   ││   0x00007f554481a2cf: cmp    %ebp,%r9d
                   │││       │    │   │   ││   0x00007f554481a2d2: jge    0x00007f554481b68d  ;*ireturn
                   │││       │    │   │   ││                                                 ; - java.lang.String::isEmpty@13 (line 635)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.42%    0.34%   │││       │    │   │   ││   0x00007f554481a2d8: cmp    %ebp,%r9d
                   │││       │    │   │   ││   0x00007f554481a2db: jae    0x00007f554481b285  ;*synchronization entry
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@-1 (line 182)
  0.09%    0.02%   │││       │    │   │   ││   0x00007f554481a2e1: shl    $0x3,%r10
  0.08%            │││       │    │   │   ││   0x00007f554481a2e5: movzwl 0x10(%r10,%r9,2),%edi  ;*if_icmplt
                   │││       │    │   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.13%    0.17%   │││       │    │   │   ││   0x00007f554481a2eb: cmp    $0xd800,%edi
                   │││       │    │   │   ││   0x00007f554481a2f1: jge    0x00007f554481b6f1  ;*aload
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.40%    0.43%   │││       │    │   │   ││   0x00007f554481a2f7: shl    $0x3,%edi          ;*invokeinterface charAt
                   │││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.07%    0.05%   │││       │    │   │   ││   0x00007f554481a2fa: mov    %edi,%r8d
  0.06%    0.00%   │││       │    │   │   ││   0x00007f554481a2fd: and    $0x7,%r8d
  0.34%    0.45%   │││       │    │   │   ││   0x00007f554481a301: or     $0x1,%edi
  0.05%    0.05%   │││       │    │   │   ││   0x00007f554481a304: or     $0x1,%r8d
  0.39%    0.48%   │││       │    │   │   ││   0x00007f554481a308: sar    $0x3,%edi          ; OopMap{rbx=NarrowOop r14=NarrowOop [16]=Oop [48]=Oop [80]=Oop [104]=Oop off=875}
                   │││       │    │   │   ││                                                 ;*goto
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.06%    0.02%   │││       │    │   │   ││   0x00007f554481a30b: test   %eax,0x15dd7cef(%rip)        # 0x00007f555a5f2000
                   │││       │    │   │   ││                                                 ;*aload
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@136 (line 211)
                   │││       │    │   │   ││                                                 ;   {poll}
  0.01%    0.01%   │││       │    │   │   ││   0x00007f554481a311: mov    0x50(%rsp),%r10
  0.05%    0.08%   │││       │    │   │   ││   0x00007f554481a316: mov    0x28(%r10),%r11d   ;*aload_0
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@158 (line 216)
  0.48%    0.56%   │││       │    │   │   ││   0x00007f554481a31a: mov    0x68(%rsp),%r10
  0.02%    0.05%   │││       │    │   │   ││   0x00007f554481a31f: mov    %r10,%r9
                   │││       │    │   │   ││   0x00007f554481a322: shr    $0x3,%r9           ;*aload_0
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::step@21 (line 284)
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.09%   │││       │    │   │   ││   0x00007f554481a326: mov    %r9d,0x48(%rsp)
  0.41%    0.51%   │││       │    │   │   ││   0x00007f554481a32b: mov    0x60(%rsp),%r9d
  0.02%    0.06%   │││       │    │   │   ││   0x00007f554481a330: mov    0x5c(%rsp),%r10d
  0.00%    0.01%   │││       │    │   │   ││   0x00007f554481a335: mov    %edi,0x44(%rsp)
  0.10%    0.08%   │││       │    │   │   ││   0x00007f554481a339: mov    0x10(%rsp),%rdi
  0.39%    0.66%   │││       │    │   │   ││   0x00007f554481a33e: mov    %rdi,0x68(%rsp)
  0.02%    0.04%   │││       │    │   │   ││   0x00007f554481a343: mov    0x40(%rsp),%edx
           0.00%   │││       │    │   │   ││   0x00007f554481a347: mov    %edx,0x38(%rsp)
  0.08%    0.07%   │││       │    │   │   ││   0x00007f554481a34b: mov    %r8d,0x40(%rsp)    ;*aload_0
                   │││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@158 (line 216)
  0.36%    0.48%   ↘││       │    │   │   ││   0x00007f554481a350: mov    0x48(%rsp),%edi
  0.04%    0.03%    ││       │    │   │   ││   0x00007f554481a354: movzbl 0x18(%r12,%rdi,8),%r8d  ; implicit exception: dispatches to 0x00007f554481c46d
  0.04%    0.01%    ││       │    │   │   ││   0x00007f554481a35a: mov    0x50(%rsp),%rdi
  0.09%    0.08%    ││       │    │   │   ││   0x00007f554481a35f: movzbl 0x11(%rdi),%edi    ;*ishl
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.34%    0.49%    ││       │    │   │   ││   0x00007f554481a363: vmovd  %edi,%xmm1
  0.03%    0.01%    ││       │    │   │   ││   0x00007f554481a367: mov    0x48(%rsp),%edx
  0.00%    0.00%    ││       │    │   │   ││   0x00007f554481a36b: lea    (%r12,%rdx,8),%rdi  ;*aaload
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::step@83 (line 294)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.08%    ││       │    │   │   ││   0x00007f554481a36f: mov    %rdi,0x10(%rsp)
  0.45%    0.48%    ││       │    │   │   ││   0x00007f554481a374: test   %r8d,%r8d
                    ││  ╭    │    │   │   ││   0x00007f554481a377: je     0x00007f554481a3bb  ;*caload
                    ││  │    │    │   │   ││                                                 ; - java.lang.String::indexOf@63 (line 1771)
                    ││  │    │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%             ││  │    │    │   │   ││   0x00007f554481a379: mov    0x4c(%rsp),%r8d
  0.00%    0.00%    ││  │    │    │   │   ││   0x00007f554481a37e: test   %r8d,%r8d
                    ││  │    │    │   │   ││   0x00007f554481a381: jne    0x00007f554481b8f9  ;*invokestatic isWordRune
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.02%    0.00%    ││  │    │    │   │   ││   0x00007f554481a387: test   %eax,%eax
                    ││  │    │    │   │   ││   0x00007f554481a389: jne    0x00007f554481b93d  ;*if_icmpne
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.18%    0.10%    ││  │    │    │   │   ││   0x00007f554481a38f: mov    0x24(%r12,%r14,8),%r8d  ;*if_icmpeq
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                    ││  │    │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c4fd
  0.00%             ││  │    │    │   │   ││   0x00007f554481a394: mov    %r8d,%edx
                    ││  │    │    │   │   ││   0x00007f554481a397: mov    0xc(%r12,%r8,8),%r8d  ;*instanceof
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                    ││  │    │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c50d
  0.01%    0.02%    ││  │    │    │   │   ││   0x00007f554481a39c: vmovd  %r8d,%xmm0
  0.18%    0.20%    ││  │    │    │   │   ││   0x00007f554481a3a1: mov    0xc(%r12,%r8,8),%r8d  ;*caload
                    ││  │    │    │   │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││  │    │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
                    ││  │    │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c51d
  0.02%    0.02%    ││  │    │    │   │   ││   0x00007f554481a3a6: mov    %r8d,0x58(%rsp)
  0.02%    0.03%    ││  │    │    │   │   ││   0x00007f554481a3ab: test   %r8d,%r8d
                    ││  │    │    │   │   ││   0x00007f554481a3ae: jne    0x00007f554481a9a8  ;*iload
                    ││  │    │    │   │   ││                                                 ; - java.lang.String::indexOf@91 (line 1776)
                    ││  │    │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││  │    │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%    0.01%    ││  │    │    │   │   ││   0x00007f554481a3b4: mov    %r10d,0x18(%rsp)
  0.23%    0.19%    ││  │╭   │    │   │   ││   0x00007f554481a3b9: jmp    0x00007f554481a3c0
  0.03%    0.05%    ││  ↘│   │    │   │   ││   0x00007f554481a3bb: mov    %r10d,0x18(%rsp)   ;*ireturn
                    ││   │   │    │   │   ││                                                 ; - java.lang.Character::charCount@11 (line 4818)
                    ││   │   │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                    ││   │   │    │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%    ││   ↘   │    │   │   ││   0x00007f554481a3c0: test   %eax,%eax
                    ││       │    │   │   ││   0x00007f554481a3c2: jne    0x00007f554481b3d5  ;*ifeq
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@148 (line 212)
  0.08%    0.07%    ││       │    │   │   ││   0x00007f554481a3c8: mov    0x18(%rsp),%r8d
  0.38%    0.32%    ││       │    │   │   ││   0x00007f554481a3cd: test   %r8d,%r8d
                    ││    ╭  │    │   │   ││   0x00007f554481a3d0: je     0x00007f554481a3e0  ;*iinc
                    ││    │  │    │   │   ││                                                 ; - java.lang.String::indexOf@69 (line 1772)
                    ││    │  │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││    │  │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││    │  │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││    │  │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.11%    ││    │  │    │   │   ││   0x00007f554481a3d2: mov    0x64(%rsp),%r10d
  0.00%             ││    │  │    │   │   ││   0x00007f554481a3d7: test   %r10d,%r10d
                    ││    │  │    │   │   ││   0x00007f554481a3da: jne    0x00007f554481b421  ;*getfield value
                    ││    │  │    │   │   ││                                                 ; - java.lang.String::indexOf@11 (line 1718)
                    ││    │  │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││    │  │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││    │  │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.09%    0.07%    ││    ↘  │    │   │   ││   0x00007f554481a3e0: vmovd  %xmm1,%r8d
  0.23%    0.33%    ││       │    │   │   ││   0x00007f554481a3e5: test   %r8d,%r8d
                    ││       │    │   │   ││   0x00007f554481a3e8: jne    0x00007f554481b555  ;*ifeq
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@148 (line 212)
  0.23%    0.05%    ││       │    │   │   ││   0x00007f554481a3ee: mov    0x50(%rsp),%r10
  0.01%             ││       │    │   │   ││   0x00007f554481a3f3: mov    0x18(%r10),%r8d    ;*getfield value
                    ││       │    │   │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                    ││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.06%    0.04%    ││       │    │   │   ││   0x00007f554481a3f7: mov    0x1c(%r12,%r8,8),%ebp  ;*arraylength
                    ││       │    │   │   ││                                                 ; - java.lang.String::indexOf@19 (line 1718)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                    ││       │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c47d
  0.30%    0.34%    ││       │    │   │   ││   0x00007f554481a3fc: mov    0x8(%r12,%rbp,8),%r10d  ;*getfield value
                    ││       │    │   │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                    ││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
                    ││       │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c48d
  0.79%    0.64%    ││       │    │   │   ││   0x00007f554481a401: lea    (%r12,%rbp,8),%rcx
  0.00%             ││       │    │   │   ││   0x00007f554481a405: cmp    $0xf8019a53,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││     ╭ │    │   │   ││   0x00007f554481a40c: je     0x00007f554481a4d4  ;*getfield prefix
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.13%    ││     │ │    │   │   ││   0x00007f554481a412: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││     │ │    │   │   ││   0x00007f554481a419: jne    0x00007f554481b5a1  ;*ifeq
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@148 (line 212)
  0.14%    0.21%    ││     │ │    │   │   ││   0x00007f554481a41f: mov    0x18(%rcx),%r8d    ;*ifne
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@115 (line 204)
  0.04%    0.05%    ││     │ │    │   │   ││   0x00007f554481a423: cmp    $0x40,%r8d
                    ││     │ │    │   │   ││   0x00007f554481a427: jg     0x00007f554481b79d  ;*ifeq
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@148 (line 212)
  0.06%    0.17%    ││     │ │    │   │   ││   0x00007f554481a42d: mov    %rcx,%rbx
  0.01%    0.00%    ││     │ │    │   │   ││   0x00007f554481a430: mov    $0x1,%edi
  0.06%    0.13%    ││     │ │    │   │   ││   0x00007f554481a435: mov    %r8d,%ecx
  0.00%    0.01%    ││     │ │    │   │   ││   0x00007f554481a438: mov    %r8d,%r9d
  0.15%    0.17%    ││     │ │    │   │   ││   0x00007f554481a43b: shl    %cl,%rdi
  0.27%    0.32%    ││     │ │    │   │   ││   0x00007f554481a43e: mov    0x48(%rsp),%r8d
                    ││     │ │    │   │   ││   0x00007f554481a443: mov    0x10(%r12,%r8,8),%r10  ;*if_icmpgt
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@95 (line 1776)
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
           0.01%    ││     │ │    │   │   ││   0x00007f554481a448: mov    %rdi,%r8
  0.13%    0.09%    ││     │ │    │   │   ││   0x00007f554481a44b: and    %r10,%r8           ;*ifge
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.14%    0.17%    ││     │ │    │   │   ││   0x00007f554481a44e: test   %r8,%r8
                    ││     │ │    │   │   ││   0x00007f554481a451: jne    0x00007f554481b809  ;*getfield matched
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@159 (line 216)
                    ││     │ │    │   │   ││   0x00007f554481a457: cmp    $0x40,%r9d
                    ││     │ │    │   │   ││   0x00007f554481a45b: jge    0x00007f554481b88d
  0.00%    0.02%    ││     │ │    │   │   ││   0x00007f554481a461: mov    0x48(%rsp),%r11d
  0.13%    0.08%    ││     │ │    │   │   ││   0x00007f554481a466: mov    %r12b,0x18(%r12,%r11,8)  ;*ifeq
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@162 (line 216)
  0.14%    0.16%    ││     │ │    │   │   ││   0x00007f554481a46b: mov    0xc(%r12,%r11,8),%r8d  ;*invokestatic emptyOpContext
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                    ││     │ │    │   │   ││   0x00007f554481a470: mov    0x20(%r12,%r11,8),%ebp  ;*invokestatic indexOf
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%             ││     │ │    │   │   ││   0x00007f554481a475: or     %r10,%rdi
  0.09%    0.20%    ││     │ │    │   │   ││   0x00007f554481a478: mov    %rdi,0x10(%r12,%r11,8)  ;*ifeq
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@162 (line 216)
  0.15%    0.12%    ││     │ │    │   │   ││   0x00007f554481a47d: mov    %r8d,%r11d
                    ││     │ │    │   │   ││   0x00007f554481a480: inc    %r11d
                    ││     │ │    │   │   ││   0x00007f554481a483: mov    0x48(%rsp),%r10d
  0.10%    0.09%    ││     │ │    │   │   ││   0x00007f554481a488: mov    %r11d,0xc(%r12,%r10,8)
  0.12%    0.14%    ││     │ │    │   │   ││   0x00007f554481a48d: mov    0xc(%r12,%rbp,8),%r11d  ;*ifge
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                    ││     │ │    │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c4e5
                    ││     │ │    │   │   ││   0x00007f554481a492: cmp    %r11d,%r8d
                    ││     │ │    │   │   ││   0x00007f554481a495: jae    0x00007f554481b4fd
  0.00%    0.02%    ││     │ │    │   │   ││   0x00007f554481a49b: mov    0x8(%r12,%rbp,8),%r11d
  0.08%    0.07%    ││     │ │    │   │   ││   0x00007f554481a4a0: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││     │ │    │   │   ││   0x00007f554481a4a7: jne    0x00007f554481b601  ;*ifeq
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@162 (line 216)
  0.14%    0.14%    ││     │ │    │   │   ││   0x00007f554481a4ad: mov    %rbx,%r11
                    ││     │ │    │   │   ││   0x00007f554481a4b0: shr    $0x3,%r11          ;*aload_0
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@79 (line 1772)
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%    0.02%    ││     │ │    │   │   ││   0x00007f554481a4b4: lea    (%r12,%rbp,8),%r10  ;*aaload
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::step@83 (line 294)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.13%    ││     │ │    │   │   ││   0x00007f554481a4b8: lea    0x10(%r10,%r8,4),%r10  ;*aload_0
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@79 (line 1772)
                    ││     │ │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.19%    ││     │ │    │   │   ││   0x00007f554481a4bd: mov    %r11d,(%r10)
  0.06%    0.06%    ││     │ │    │   │   ││   0x00007f554481a4c0: shr    $0x9,%r10
  0.00%    0.02%    ││     │ │    │   │   ││   0x00007f554481a4c4: movabs $0x7f553ffd2000,%r11
  0.09%    0.08%    ││     │ │    │   │   ││   0x00007f554481a4ce: mov    %r12b,(%r11,%r10,1)  ;*instanceof
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││     │ │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.33%    0.44%    ││     │╭│    │   │   ││   0x00007f554481a4d2: jmp    0x00007f554481a4f8  ;*ireturn
                    ││     │││    │   │   ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││     │││    │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││     │││    │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.14%    0.09%    ││     ↘││    │   │   ││   0x00007f554481a4d4: mov    %r11,%r8
  0.03%    0.01%    ││      ││    │   │   ││   0x00007f554481a4d7: shl    $0x3,%r8           ;*iload_2
                    ││      ││    │   │   ││                                                 ; - com.google.re2j.Machine::match@114 (line 204)
  0.14%    0.04%    ││      ││    │   │   ││   0x00007f554481a4db: mov    %rcx,%rsi
                    ││      ││    │   │   ││   0x00007f554481a4de: mov    0x10(%rsp),%rdx
  0.14%    0.06%    ││      ││    │   │   ││   0x00007f554481a4e3: mov    0x18(%rsp),%ecx
  0.02%    0.02%    ││      ││    │   │   ││   0x00007f554481a4e7: xor    %edi,%edi
  0.18%    0.08%    ││      ││    │   │   ││   0x00007f554481a4e9: mov    0x50(%rsp),%r10
                    ││      ││    │   │   ││   0x00007f554481a4ee: mov    %r10,(%rsp)
  0.09%    0.07%    ││      ││    │   │   ││   0x00007f554481a4f2: nop
  0.03%    0.01%    ││      ││    │   │   ││   0x00007f554481a4f3: callq  0x00007f55445ea020  ; OopMap{[16]=Oop [48]=Oop [72]=NarrowOop [80]=Oop [104]=Oop off=1368}
                    ││      ││    │   │   ││                                                 ;*invokevirtual add
                    ││      ││    │   │   ││                                                 ; - com.google.re2j.Machine::match@314 (line 243)
                    ││      ││    │   │   ││                                                 ;   {optimized virtual_call}
  0.17%    0.19%    ││      ↘│    │   │   ││   0x00007f554481a4f8: mov    0x3c(%rsp),%r10d
  0.10%    0.11%    ││       │    │   │   ││   0x00007f554481a4fd: test   %r10d,%r10d
  0.15%    0.15%    ││       │    │   │   ││   0x00007f554481a500: jl     0x00007f554481a855  ;*if_icmplt
                    ││       │    │   │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                    ││       │    │   │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.30%    0.36%    ││       │    │   │   ││   0x00007f554481a506: xor    %r11d,%r11d        ;*if_icmpge
                    ││       │    │   │   ││                                                 ; - java.lang.String::indexOf@123 (line 1779)
                    ││       │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.06%    0.04%    ││       │    │   │   ││   0x00007f554481a509: cmp    $0xa,%r10d
                    ││       │    │   │   ││   0x00007f554481a50d: je     0x00007f554481a8d7  ;*if_icmplt
                    ││       │    │   │   ││                                                 ; - java.lang.String::indexOf@3 (line 1756)
                    ││       │    │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││       │    │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.07%    ││       │    │   │   ││   0x00007f554481a513: mov    0x44(%rsp),%r8d
  0.14%    0.09%    ││       │    │   │   ││   0x00007f554481a518: test   %r8d,%r8d
                    ││       ╰    │   │   ││   0x00007f554481a51b: jl     0x00007f554481a1dc  ;*getfield prefix
                    ││            │   │   ││                                                 ; - com.google.re2j.Machine::match@172 (line 220)
  0.33%    0.29%    ↘│            │   │   ││   0x00007f554481a521: cmp    $0xa,%r8d
                     │            │   │   ││   0x00007f554481a525: je     0x00007f554481a8e0  ;*ifge
                     │            │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.05%    0.07%     │            │   │   ││   0x00007f554481a52b: mov    0x3c(%rsp),%r9d
  0.05%    0.09%     │            │   │   ││   0x00007f554481a530: add    $0xffffffbf,%r9d
  0.08%    0.15%     │            │   │   ││   0x00007f554481a534: cmp    $0x1a,%r9d
                     │        ╭   │   │   ││   0x00007f554481a538: jb     0x00007f554481a54a
  0.35%    0.31%     │        │   │   │   ││   0x00007f554481a53a: mov    0x3c(%rsp),%ecx
  0.04%    0.09%     │        │   │   │   ││   0x00007f554481a53e: add    $0xffffff9f,%ecx
  0.04%    0.07%     │        │   │   │   ││   0x00007f554481a541: cmp    $0x1a,%ecx
                     │        │   │   │   ││   0x00007f554481a544: jae    0x00007f554481abb6  ;*ifne
                     │        │   │   │   ││                                                 ; - java.lang.String::indexOf@8 (line 1757)
                     │        │   │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                     │        │   │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │        │   │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │        │   │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.13%     │        ↘   │   │   ││   0x00007f554481a54a: mov    $0x1,%ebp          ;*getfield prefix
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@172 (line 220)
  0.19%    0.22%     │            │   │   ││   0x00007f554481a54f: mov    %rax,-0x8(%rsp)
  0.07%    0.06%     │            │   │   ││   0x00007f554481a554: mov    0x44(%rsp),%eax
  0.06%    0.08%     │            │   │   ││   0x00007f554481a558: mov    %eax,0x3c(%rsp)
  0.17%    0.19%     │            │   │   ││   0x00007f554481a55c: mov    -0x8(%rsp),%rax
  0.46%    0.31%     │            │   │   ││   0x00007f554481a561: mov    %r10d,0x84(%rsp)
  0.05%    0.04%     │            │   │   ││   0x00007f554481a569: mov    0x44(%rsp),%r10d
  0.08%    0.05%     │            │   │   ││   0x00007f554481a56e: add    $0xffffffbf,%r10d
  0.16%    0.24%     │            │   │   ││   0x00007f554481a572: cmp    $0x1a,%r10d
                     │         ╭  │   │   ││   0x00007f554481a576: jb     0x00007f554481a586  ;*if_icmplt
                     │         │  │   │   ││                                                 ; - java.lang.Character::charCount@3 (line 4818)
                     │         │  │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                     │         │  │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.24%    0.26%     │         │  │   │   ││   0x00007f554481a578: add    $0xffffff9f,%r8d
  0.03%    0.11%     │         │  │   │   ││   0x00007f554481a57c: cmp    $0x1a,%r8d
  0.08%    0.09%     │         │  │   │   ││   0x00007f554481a580: jae    0x00007f554481abda  ;*invokeinterface charAt
                     │         │  │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                     │         │  │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │         │  │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.13%    0.17%     │         ↘  │   │   ││   0x00007f554481a586: mov    $0x1,%r10d         ;*caload
                     │            │   │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                     │            │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                     │            │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.29%    0.41%     │            │   │   ││   0x00007f554481a58c: cmp    %r10d,%ebp
                     │          ╭ │   │   ││   0x00007f554481a58f: je     0x00007f554481a59c  ;*aload_0
                     │          │ │   │   ││                                                 ; - java.lang.String::indexOf@79 (line 1772)
                     │          │ │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                     │          │ │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │          │ │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │          │ │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.05%    0.02%     │          │ │   │   ││   0x00007f554481a591: or     $0x10,%r11d
  0.06%    0.07%     │          │ │   │   ││   0x00007f554481a595: mov    %r11d,0x60(%rsp)
  0.10%    0.12%     │          │╭│   │   ││   0x00007f554481a59a: jmp    0x00007f554481a5a5
  0.08%    0.13%     │          ↘││   │   ││   0x00007f554481a59c: or     $0x20,%r11d
  0.03%    0.06%     │           ││   │   ││   0x00007f554481a5a0: mov    %r11d,0x60(%rsp)   ;*invokeinterface charAt
                     │           ││   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                     │           ││   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │           ││   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.25%    0.31%     │           ↘│   │   ││   0x00007f554481a5a5: mov    0x30(%rsp),%r10
  0.14%    0.20%     │            │   │   ││   0x00007f554481a5aa: mov    0x10(%r10),%r11d   ;*if_icmplt
                     │            │   │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                     │            │   │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                     │            │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.31%    0.32%     │            │   │   ││   0x00007f554481a5ae: mov    %r11d,0xc(%rsp)
  0.13%    0.08%     │            │   │   ││   0x00007f554481a5b3: mov    0x18(%rsp),%r8d
  0.12%    0.10%     │            │   │   ││   0x00007f554481a5b8: cmp    %r11d,%r8d
                     │            │   │   ││   0x00007f554481a5bb: je     0x00007f554481a860  ;*aload_0
                     │            │   │   ││                                                 ; - java.lang.String::indexOf@126 (line 1779)
                     │            │   │   ││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                     │            │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │            │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.29%    0.34%     │            │   │   ││   0x00007f554481a5c1: xor    %r11d,%r11d
  0.08%    0.09%     │            │   │   ││   0x00007f554481a5c4: mov    %r11d,0x74(%rsp)   ;*if_icmpne
                     │            │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.13%    0.15%     │            │   │   ││   0x00007f554481a5c9: mov    %rax,-0x8(%rsp)
  0.10%    0.05%     │            │   │   ││   0x00007f554481a5ce: mov    0x18(%rsp),%eax
  0.25%    0.19%     │            │   │   ││   0x00007f554481a5d2: mov    %eax,0x58(%rsp)
  0.07%    0.09%     │            │   │   ││   0x00007f554481a5d6: mov    -0x8(%rsp),%rax
  0.17%    0.11%     │            │   │   ││   0x00007f554481a5db: rex.W pushq 0x30(%rsp)
  0.35%    0.31%     │            │   │   ││   0x00007f554481a5e0: rex.W popq 0x18(%rsp)
  1.16%    1.19%     │            │   │   ││   0x00007f554481a5e5: mov    0x50(%rsp),%r10
  0.12%    0.11%     │            │   │   ││   0x00007f554481a5ea: mov    0x14(%r10),%r14d   ;*invokevirtual step
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.26%    0.20%     │            │   │   ││   0x00007f554481a5ee: movzbl 0x18(%r12,%r14,8),%r10d  ;*if_icmpne
                     │            │   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                     │            │   │   ││                                                 ; implicit exception: dispatches to 0x00007f554481c4b1
  0.84%    0.58%     │            │   │   ││   0x00007f554481a5f4: mov    %r10d,0x70(%rsp)
  0.26%    0.23%     │            │   │   ││   0x00007f554481a5f9: mov    0x48(%rsp),%r10d
  0.03%    0.09%     │            │   │   ││   0x00007f554481a5fe: mov    0xc(%r12,%r10,8),%r11d  ;*invokeinterface charAt
                     │            │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                     │            │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.06%    0.04%     │            │   │   ││   0x00007f554481a603: add    0x38(%rsp),%r8d    ;*if_icmplt
                     │            │   │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                     │            │   │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                     │            │   │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │            │   │   ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.15%    0.15%     │            │   │   ││   0x00007f554481a608: mov    %r8d,0x5c(%rsp)
  0.29%    0.18%     │            │   │   ││   0x00007f554481a60d: test   %r11d,%r11d
                     │            ╰   │   ││   0x00007f554481a610: jle    0x00007f554481a1f0  ;*instanceof
                     │                │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                     │                │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                │   ││                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.09%     │                │   ││   0x00007f554481a616: xor    %r11d,%r11d
  0.04%    0.07%     │                │   ││   0x00007f554481a619: mov    %r11d,0x78(%rsp)
  0.15%    0.15%     │             ╭  │   ││   0x00007f554481a61e: jmpq   0x00007f554481a6b7
  0.93%    0.99%     │             │  │   ││↗  0x00007f554481a623: xor    %r8d,%r8d          ;*caload
                     │             │  │   │││                                                ; - java.lang.String::charAt@27 (line 660)
                     │             │  │   │││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │             │  │   │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │             │  │   │││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.22%    0.23%     ↘             │  │  ↗│││  0x00007f554481a626: test   %r8d,%r8d
                                   │╭ │  ││││  0x00007f554481a629: jne    0x00007f554481a637  ;*caload
                                   ││ │  ││││                                                ; - java.lang.String::indexOf@36 (line 1766)
                                   ││ │  ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                   ││ │  ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                   ││ │  ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                   ││ │  ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.54%    0.68%                   ││ │  ││││  0x00007f554481a62b: mov    0x48(%rsp),%r11d
  0.51%    0.55%                   ││ │  ││││  0x00007f554481a630: mov    0xc(%r12,%r11,8),%r11d  ;*ifne
                                   ││ │  ││││                                                ; - com.google.re2j.Machine::match@279 (line 237)
  1.04%    1.22%                   ││╭│  ││││  0x00007f554481a635: jmp    0x00007f554481a69b  ;*synchronization entry
                                   ││││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@-1 (line 172)
                                   ││││  ││││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.20%    0.12%                   │↘││↗ ││││  0x00007f554481a637: mov    0x1c(%r11),%r10d
  0.26%    0.15%                   │ │││ ││││  0x00007f554481a63b: mov    %r10,%rsi
  0.00%    0.01%                   │ │││ ││││  0x00007f554481a63e: shl    $0x3,%rsi          ;*if_icmpeq
                                   │ │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                                   │ │││ ││││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.09%    0.00%                   │ │││ ││││  0x00007f554481a642: mov    0x68(%rsp),%rdx
  0.12%    0.09%                   │ │││ ││││  0x00007f554481a647: mov    0x5c(%rsp),%ecx
  0.11%    0.13%                   │ │││ ││││  0x00007f554481a64b: xor    %r8d,%r8d
                                   │ │││ ││││  0x00007f554481a64e: mov    0x60(%rsp),%r9d
  0.09%    0.04%                   │ │││ ││││  0x00007f554481a653: xor    %edi,%edi
  0.19%    0.10%                   │ │││ ││││  0x00007f554481a655: mov    0x50(%rsp),%r10
  0.12%    0.11%                   │ │││ ││││  0x00007f554481a65a: mov    %r10,(%rsp)
  0.06%    0.01%                   │ │││ ││││  0x00007f554481a65e: mov    0x10(%rsp),%r10
  0.06%    0.05%                   │ │││ ││││  0x00007f554481a663: mov    %r10,0x8(%rsp)
  0.19%    0.07%                   │ │││ ││││  0x00007f554481a668: mov    0x58(%rsp),%r11d
  0.11%    0.11%                   │ │││ ││││  0x00007f554481a66d: mov    %r11d,0x20(%rsp)
  0.03%    0.01%                   │ │││ ││││  0x00007f554481a672: mov    0x64(%rsp),%ebp
  0.04%    0.01%                   │ │││ ││││  0x00007f554481a676: data16 xchg %ax,%ax
  0.12%    0.09%                   │ │││ ││││  0x00007f554481a679: movabs $0xffffffffffffffff,%rax
  0.13%    0.07%                   │ │││ ││││  0x00007f554481a683: callq  0x00007f55445ea220  ; OopMap{[8]=Oop [16]=Oop [24]=Oop [72]=NarrowOop [80]=Oop [104]=Oop off=1768}
                                   │ │││ ││││                                                ;*invokevirtual add
                                   │ │││ ││││                                                ; - com.google.re2j.Machine::step@202 (line 311)
                                   │ │││ ││││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                                   │ │││ ││││                                                ;   {virtual_call}
  0.38%    0.25%                   │ │││ ││││  0x00007f554481a688: test   %rax,%rax
                                   │ │││ ││││  0x00007f554481a68b: jne    0x00007f554481b32d
  0.04%    0.00%                   │ │││ ││││  0x00007f554481a691: mov    0x48(%rsp),%r10d
           0.00%                   │ │││ ││││  0x00007f554481a696: mov    0xc(%r12,%r10,8),%r11d  ;*caload
                                   │ │││ ││││                                                ; - java.lang.String::indexOf@133 (line 1779)
                                   │ │││ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                   │ │││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                   │ │││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                   │ │││ ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.47%    0.53%                   │ ↘││ ││││  0x00007f554481a69b: mov    0x78(%rsp),%r10d
  0.59%    0.62%                   │  ││ ││││  0x00007f554481a6a0: inc    %r10d              ;*if_icmpne
                                   │  ││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@32 (line 182)
                                   │  ││ ││││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.40%    0.43%                   │  ││ ││││  0x00007f554481a6a3: mov    %r10d,0x78(%rsp)   ; OopMap{[16]=Oop [24]=Oop [72]=NarrowOop [80]=Oop [104]=Oop off=1800}
                                   │  ││ ││││                                                ;*goto
                                   │  ││ ││││                                                ; - com.google.re2j.Machine::step@221 (line 281)
                                   │  ││ ││││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.13%    1.30%                   │  ││ ││││  0x00007f554481a6a8: test   %eax,0x15dd7952(%rip)        # 0x00007f555a5f2000
                                   │  ││ ││││                                                ;*aload_0
                                   │  ││ ││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                                   │  ││ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                   │  ││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                   │  ││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                   │  ││ ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
                                   │  ││ ││││                                                ;   {poll}
  0.47%    0.49%                   │  ││ ││││  0x00007f554481a6ae: cmp    %r11d,%r10d
                                   │  ╰│ ││││  0x00007f554481a6b1: jge    0x00007f554481a1fc  ;*iload_1
                                   │   │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                                   │   │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.76%    0.55%                   ↘   │ ││││  0x00007f554481a6b7: mov    0x50(%rsp),%r10
  0.30%    0.56%                       │ ││││  0x00007f554481a6bc: movzbl 0x11(%r10),%r10d   ;*ifge
                                       │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                       │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.83%    1.09%                       │ ││││  0x00007f554481a6c1: test   %r10d,%r10d
                                       │ ││││  0x00007f554481a6c4: jne    0x00007f554481af9d  ;*getfield prefix
                                       │ ││││                                                ; - com.google.re2j.Machine::match@172 (line 220)
  0.58%    0.65%                       │ ││││  0x00007f554481a6ca: mov    0x48(%rsp),%r10d
  0.57%    0.70%                       │ ││││  0x00007f554481a6cf: mov    0x20(%r12,%r10,8),%r8d  ;*ifge
                                       │ ││││                                                ; - java.lang.String::indexOf@19 (line 1759)
                                       │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                       │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                       │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                       │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.38%    0.43%                       │ ││││  0x00007f554481a6d4: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f554481c44e
  1.25%    1.78%                       │ ││││  0x00007f554481a6d9: mov    0x78(%rsp),%r9d
  0.48%    0.79%                       │ ││││  0x00007f554481a6de: cmp    %r11d,%r9d
                                       │ ││││  0x00007f554481a6e1: jae    0x00007f554481ae61  ;*invokevirtual isEmpty
                                       │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.39%    1.64%                       │ ││││  0x00007f554481a6e7: lea    (%r12,%r8,8),%r10
  0.22%    0.26%                       │ ││││  0x00007f554481a6eb: mov    0x10(%r10,%r9,4),%r10d  ;*ifne
                                       │ ││││                                                ; - java.lang.String::indexOf@27 (line 1762)
                                       │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                       │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                       │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                       │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.91%    0.93%                       │ ││││  0x00007f554481a6f0: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f554481c45d
  5.68%    6.90%                       │ ││││  0x00007f554481a6f5: cmp    $0x6,%r11d
                                       │ ││││  0x00007f554481a6f9: je     0x00007f554481ad5c  ;*aload_0
                                       │ ││││                                                ; - java.lang.String::indexOf@126 (line 1779)
                                       │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                       │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                       │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                       │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  2.19%    1.83%                       │ ││││  0x00007f554481a6ff: mov    0x8(%r12,%r10,8),%r11d
  0.20%    0.26%                       │ ││││  0x00007f554481a704: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                                       │ ││││  0x00007f554481a70b: jne    0x00007f554481aef5  ;*invokevirtual isEmpty
                                       │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.37%    1.23%                       │ ││││  0x00007f554481a711: lea    (%r12,%r10,8),%r11
  0.21%    0.27%                       │ ││││  0x00007f554481a715: mov    0xc(%r11),%r10d    ;*invokestatic isWordRune
                                       │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                       │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.61%    0.46%                       │ ││││  0x00007f554481a719: cmp    $0xa,%r10d
                                       ╰ ││││  0x00007f554481a71d: je     0x00007f554481a637  ;*if_icmpeq
                                         ││││                                                ; - java.lang.String::indexOf@66 (line 1771)
                                         ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                         ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                         ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                         ││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.22%    0.83%                         ││││  0x00007f554481a723: cmp    $0xb,%r10d
                                         ││││  0x00007f554481a727: je     0x00007f554481b025  ;*getfield value
                                         ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                                         ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.64%    0.55%                         ││││  0x00007f554481a72d: mov    0x20(%r11),%r9d    ;*invokevirtual step
                                         ││││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.16%    0.23%                         ││││  0x00007f554481a731: cmp    $0x9,%r10d
                                        ╭││││  0x00007f554481a735: jne    0x00007f554481a74d  ;*aload_0
                                        │││││                                                ; - java.lang.String::indexOf@126 (line 1779)
                                        │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                                        │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                        │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                        │││││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.29%    0.28%                        │││││  0x00007f554481a737: cmp    0x84(%rsp),%r9d
                                        │││││  0x00007f554481a73f: je     0x00007f554481a8cc  ;*invokestatic charCount
                                        │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                                        │││││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.24%    0.24%                        │││││  0x00007f554481a745: xor    %r8d,%r8d
  0.06%    0.11%                        │╰│││  0x00007f554481a748: jmpq   0x00007f554481a626
  1.00%    0.71%                        ↘ │││  0x00007f554481a74d: cmp    $0xc,%r10d
                                          │││  0x00007f554481a751: jne    0x00007f554481b10d  ;*arraylength
                                          │││                                                ; - java.lang.String::isEmpty@4 (line 635)
                                          │││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.06%    0.81%                          │││  0x00007f554481a757: cmp    0x84(%rsp),%r9d
                                          ╰││  0x00007f554481a75f: je     0x00007f554481a1e5  ;*if_icmplt
                                           ││                                                ; - java.lang.String::charAt@10 (line 657)
                                           ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                                           ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                           ││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.67%    0.58%                           ││  0x00007f554481a765: mov    0x24(%r11),%r8d    ;*ifeq
                                           ││                                                ; - java.lang.Character::codePointAt@12 (line 4867)
                                           ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                           ││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.19%    0.18%                           ││  0x00007f554481a769: cmp    0x84(%rsp),%r8d
                                           ╰│  0x00007f554481a771: je     0x00007f554481a1e5  ;*aload_0
                                            │                                                ; - java.lang.String::indexOf@126 (line 1779)
                                            │                                                ; - java.lang.String::indexOf@21 (line 1718)
                                            │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                            │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                            │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.17%    1.03%                            │  0x00007f554481a777: mov    0x28(%r11),%r10d   ;*if_icmpgt
                                            │                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                            │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                            │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.33%    0.38%                            │  0x00007f554481a77b: cmp    0x84(%rsp),%r10d
                                            │  0x00007f554481a783: je     0x00007f554481b1c9  ;*arraylength
                                            │                                                ; - java.lang.String::isEmpty@4 (line 635)
                                            │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.94%    0.75%                            │  0x00007f554481a789: mov    0x2c(%r11),%r8d
  0.16%    0.16%                            │  0x00007f554481a78d: cmp    0x84(%rsp),%r8d
                                            ╰  0x00007f554481a795: jne    0x00007f554481a623  ;*if_icmpgt
                                                                                             ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                                             ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                                               0x00007f554481a79b: mov    $0xffffff65,%esi   ;*if_icmpne
                                                                                             ; - com.google.re2j.Machine::step@99 (line 299)
                                                                                             ; - com.google.re2j.Machine::match@355 (line 246)
                                               0x00007f554481a7a0: mov    0x50(%rsp),%rbp
                                               0x00007f554481a7a5: mov    0x18(%rsp),%r10
                                               0x00007f554481a7aa: mov    %r10,0x8(%rsp)
....................................................................................................
 64.24%   65.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 553 (893 bytes) 

                            # parm4:    rdi:rdi   = &apos;[I&apos;
                            # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            0x00007f55447fe0c0: mov    0x8(%rsi),%r10d
                            0x00007f55447fe0c4: shl    $0x3,%r10
                            0x00007f55447fe0c8: cmp    %r10,%rax
                            0x00007f55447fe0cb: jne    0x00007f55445e9e20  ;   {runtime_call}
                            0x00007f55447fe0d1: data16 xchg %ax,%ax
                            0x00007f55447fe0d4: nopl   0x0(%rax,%rax,1)
                            0x00007f55447fe0dc: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.12%    0.16%            0x00007f55447fe0e0: mov    %eax,-0x14000(%rsp)
  0.16%    0.08%            0x00007f55447fe0e7: push   %rbp
  0.10%    0.18%            0x00007f55447fe0e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.08%    0.13%            0x00007f55447fe0ec: vmovd  %r9d,%xmm5
  0.02%    0.01%            0x00007f55447fe0f1: vmovq  %r8,%xmm4
  0.13%    0.08%            0x00007f55447fe0f6: vmovq  %rsi,%xmm3
           0.00%            0x00007f55447fe0fb: mov    %ecx,%r13d
  0.10%    0.10%            0x00007f55447fe0fe: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.02%    0.00%            0x00007f55447fe101: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                          ; implicit exception: dispatches to 0x00007f55447fea59
  0.09%    0.15%            0x00007f55447fe105: cmp    $0x40,%ecx
                            0x00007f55447fe108: jg     0x00007f55447fe63d  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.00%    0.00%            0x00007f55447fe10e: mov    $0x1,%esi
  0.07%    0.11%            0x00007f55447fe113: mov    $0x1,%r9d
  0.02%    0.03%            0x00007f55447fe119: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.23%    0.30%            0x00007f55447fe11c: mov    %r11,%r10
  0.02%    0.02%            0x00007f55447fe11f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.13%    0.14%            0x00007f55447fe122: test   %r10,%r10
                  ╭         0x00007f55447fe125: jne    0x00007f55447fe45e  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                  │         0x00007f55447fe12b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.12%    0.08%  │   ↗     0x00007f55447fe12d: test   %r10,%r10
                  │   │     0x00007f55447fe130: jne    0x00007f55447fe671  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 275)
  0.01%    0.05%  │   │     0x00007f55447fe136: cmp    $0x40,%ecx
                  │   │     0x00007f55447fe139: jge    0x00007f55447fe6a1  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.11%    0.15%  │   │     0x00007f55447fe13f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
                  │   │     0x00007f55447fe143: vmovq  %xmm3,%r10
  0.11%    0.11%  │   │     0x00007f55447fe148: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.06%    0.01%  │   │     0x00007f55447fe14c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.18%    0.12%  │   │     0x00007f55447fe14f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
                  │   │     0x00007f55447fe153: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f55447fea6d
  0.08%    0.20%  │   │     0x00007f55447fe158: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │   │     0x00007f55447fe15f: jne    0x00007f55447fe515
  0.05%    0.04%  │   │     0x00007f55447fe165: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.17%    0.15%  │   │     0x00007f55447fe169: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.00%  │   │     0x00007f55447fe16d: cmp    $0x40,%ecx
                  │   │     0x00007f55447fe170: jg     0x00007f55447fe6d5  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.10%  │   │     0x00007f55447fe176: mov    $0x1,%r10d
  0.02%    0.06%  │   │     0x00007f55447fe17c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.27%    0.39%  │   │     0x00007f55447fe17f: mov    %r9,%r8
  0.03%    0.04%  │   │     0x00007f55447fe182: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.17%    0.19%  │   │     0x00007f55447fe185: test   %r8,%r8
                  │╭  │     0x00007f55447fe188: jne    0x00007f55447fe468  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.03%  ││  │     0x00007f55447fe18e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.06%  ││  │↗    0x00007f55447fe190: test   %r8,%r8
                  ││  ││    0x00007f55447fe193: jne    0x00007f55447fe711  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.06%  ││  ││    0x00007f55447fe199: cmp    $0x40,%ecx
                  ││  ││    0x00007f55447fe19c: jge    0x00007f55447fe745  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.22%  ││  ││    0x00007f55447fe1a2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.02%  ││  ││    0x00007f55447fe1a5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.05%  ││  ││    0x00007f55447fe1a9: mov    0x70(%rsp),%rax
  0.06%    0.09%  ││  ││    0x00007f55447fe1ae: movzbl 0x11(%rax),%ebp    ;*getfield captures
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ││  ││                                                  ; implicit exception: dispatches to 0x00007f55447fea95
  0.10%    0.21%  ││  ││    0x00007f55447fe1b2: test   %ebp,%ebp
                  ││  ││    0x00007f55447fe1b4: jne    0x00007f55447fe785  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%           ││  ││    0x00007f55447fe1ba: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.06%  ││  ││    0x00007f55447fe1bd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.08%  ││  ││    0x00007f55447fe1c0: mov    %ecx,%r8d
  0.08%    0.27%  ││  ││    0x00007f55447fe1c3: inc    %r8d               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.02%  ││  ││    0x00007f55447fe1c6: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.09%  ││  ││    0x00007f55447fe1ca: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f55447feaa5
  0.08%    0.05%  ││  ││    0x00007f55447fe1cf: cmp    %r10d,%ecx
                  ││  ││    0x00007f55447fe1d2: jae    0x00007f55447fe49a
  0.12%    0.18%  ││  ││    0x00007f55447fe1d8: vmovd  %r8d,%xmm2
  0.01%    0.03%  ││  ││    0x00007f55447fe1dd: vmovd  %ebx,%xmm0
  0.04%    0.05%  ││  ││    0x00007f55447fe1e1: mov    %ecx,%r14d
  0.04%    0.09%  ││  ││    0x00007f55447fe1e4: mov    %r11,%r8
  0.07%    0.20%  ││  ││    0x00007f55447fe1e7: mov    0x8(%r12,%rbx,8),%r11d
  0.02%    0.00%  ││  ││    0x00007f55447fe1ec: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f55447fe1f3: jne    0x00007f55447fe545  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.07%  ││  ││    0x00007f55447fe1f9: vmovq  %xmm3,%r11
  0.12%    0.05%  ││  ││    0x00007f55447fe1fe: mov    0x20(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.12%    0.17%  ││  ││    0x00007f55447fe202: mov    %r8,%rcx
  0.03%    0.01%  ││  ││    0x00007f55447fe205: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.07%    0.04%  ││  ││    0x00007f55447fe209: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.05%  ││  ││    0x00007f55447fe20d: lea    0x10(%r11,%r14,4),%r8
  0.14%    0.15%  ││  ││    0x00007f55447fe212: mov    %ecx,(%r8)
  0.01%    0.02%  ││  ││    0x00007f55447fe215: mov    %r8,%rcx
  0.05%    0.06%  ││  ││    0x00007f55447fe218: shr    $0x9,%rcx
  0.07%    0.08%  ││  ││    0x00007f55447fe21c: movabs $0x7f553ffd2000,%r8
  0.17%    0.07%  ││  ││    0x00007f55447fe226: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.02%  ││  ││    0x00007f55447fe22a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f55447feabd
  0.04%    0.03%  ││  ││    0x00007f55447fe22f: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││  ││    0x00007f55447fe235: jne    0x00007f55447fe581
  0.10%    0.06%  ││  ││    0x00007f55447fe23b: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.16%    0.12%  ││  ││    0x00007f55447fe23f: vmovq  %rcx,%xmm1
  0.05%    0.02%  ││  ││    0x00007f55447fe244: mov    0x18(%rcx),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.06%    0.04%  ││  ││    0x00007f55447fe247: mov    %ecx,%edi
  0.10%    0.07%  ││  ││    0x00007f55447fe249: cmp    $0x40,%ecx
                  ││  ││    0x00007f55447fe24c: jg     0x00007f55447fe7c1  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.11%    0.16%  ││  ││    0x00007f55447fe252: mov    $0x1,%ebx
  0.03%    0.03%  ││  ││    0x00007f55447fe257: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.21%    0.26%  ││  ││    0x00007f55447fe25a: mov    %r9,%rcx
  0.03%    0.02%  ││  ││    0x00007f55447fe25d: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.02%  ││  ││    0x00007f55447fe260: test   %rcx,%rcx
                  ││╭ ││    0x00007f55447fe263: jne    0x00007f55447fe472  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.07%    0.07%  │││ ││    0x00007f55447fe269: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.18%    0.07%  │││ ││↗   0x00007f55447fe26b: test   %rcx,%rcx
                  │││ │││   0x00007f55447fe26e: jne    0x00007f55447fe801  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.03%  │││ │││   0x00007f55447fe274: mov    %edi,%ecx
  0.03%    0.09%  │││ │││   0x00007f55447fe276: cmp    $0x40,%ecx
                  │││ │││   0x00007f55447fe279: jge    0x00007f55447fe839  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.09%  │││ │││   0x00007f55447fe27f: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.15%    0.21%  │││ │││   0x00007f55447fe282: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.03%  │││ │││   0x00007f55447fe286: mov    %r14d,%ecx
  0.04%    0.08%  │││ │││   0x00007f55447fe289: add    $0x2,%ecx
  0.05%    0.09%  │││ │││   0x00007f55447fe28c: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.13%    0.18%  │││ │││   0x00007f55447fe28f: mov    %r14d,%edi
  0.02%    0.02%  │││ │││   0x00007f55447fe292: add    $0x4,%edi          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.07%  │││ │││   0x00007f55447fe295: cmp    %r10d,%edi
                  │││ │││   0x00007f55447fe298: jae    0x00007f55447fe4d5  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.08%    0.07%  │││ │││   0x00007f55447fe29e: vmovq  %xmm3,%r10
  0.11%    0.15%  │││ │││   0x00007f55447fe2a3: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.02%    0.01%  │││ │││   0x00007f55447fe2a7: vmovq  %xmm1,%r10
  0.06%    0.07%  │││ │││   0x00007f55447fe2ac: mov    %r10,%rcx
  0.08%    0.05%  │││ │││   0x00007f55447fe2af: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.09%    0.14%  │││ │││   0x00007f55447fe2b3: movslq %r14d,%r10
  0.06%    0.04%  │││ │││   0x00007f55447fe2b6: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.05%    0.05%  │││ │││   0x00007f55447fe2ba: mov    %rbx,%r10
  0.04%    0.03%  │││ │││   0x00007f55447fe2bd: add    $0x14,%r10
  0.18%    0.07%  │││ │││   0x00007f55447fe2c1: mov    %ecx,(%r10)
  0.02%    0.03%  │││ │││   0x00007f55447fe2c4: shr    $0x9,%r10
  0.04%    0.07%  │││ │││   0x00007f55447fe2c8: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.10%    0.07%  │││ │││   0x00007f55447fe2cc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f55447feae5
  0.14%    0.24%  │││ │││   0x00007f55447fe2d1: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││ │││   0x00007f55447fe2d7: jne    0x00007f55447fe5b1
  0.05%    0.07%  │││ │││   0x00007f55447fe2dd: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.07%  │││ │││   0x00007f55447fe2e1: vmovq  %r10,%xmm0
  0.04%    0.08%  │││ │││   0x00007f55447fe2e6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.18%    0.17%  │││ │││   0x00007f55447fe2ea: vmovd  %ecx,%xmm2
  0.06%    0.05%  │││ │││   0x00007f55447fe2ee: cmp    $0x40,%ecx
                  │││ │││   0x00007f55447fe2f1: jg     0x00007f55447fe879  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.06%  │││ │││   0x00007f55447fe2f7: mov    $0x1,%r10d
  0.07%    0.14%  │││ │││   0x00007f55447fe2fd: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.20%    0.32%  │││ │││   0x00007f55447fe300: mov    %r9,%rcx
  0.06%    0.06%  │││ │││   0x00007f55447fe303: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.22%  │││ │││   0x00007f55447fe306: test   %rcx,%rcx
                  │││╭│││   0x00007f55447fe309: jne    0x00007f55447fe47c  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.03%  │││││││   0x00007f55447fe30f: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.06%  │││││││↗  0x00007f55447fe311: test   %rcx,%rcx
                  ││││││││  0x00007f55447fe314: jne    0x00007f55447fe8b9  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.11%  ││││││││  0x00007f55447fe31a: vmovd  %xmm2,%ecx
  0.14%    0.18%  ││││││││  0x00007f55447fe31e: cmp    $0x40,%ecx
                  ││││││││  0x00007f55447fe321: jge    0x00007f55447fe8f1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.02%  ││││││││  0x00007f55447fe327: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.04%  ││││││││  0x00007f55447fe32a: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.06%    0.12%  ││││││││  0x00007f55447fe32e: vmovq  %xmm3,%r10
  0.11%    0.12%  ││││││││  0x00007f55447fe333: mov    0x28(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.04%    0.04%  ││││││││  0x00007f55447fe337: mov    %rbx,%r10
  0.04%    0.07%  ││││││││  0x00007f55447fe33a: add    $0x18,%r10
  0.10%    0.08%  ││││││││  0x00007f55447fe33e: vmovq  %xmm0,%rcx
  0.14%    0.18%  ││││││││  0x00007f55447fe343: shr    $0x3,%rcx
  0.02%    0.03%  ││││││││  0x00007f55447fe347: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.06%    0.06%  ││││││││  0x00007f55447fe34a: mov    %r14d,%ecx
  0.07%    0.07%  ││││││││  0x00007f55447fe34d: add    $0x3,%ecx
  0.09%    0.12%  ││││││││  0x00007f55447fe350: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.04%  ││││││││  0x00007f55447fe353: shr    $0x9,%r10
  0.05%    0.08%  ││││││││  0x00007f55447fe357: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.09%  ││││││││  0x00007f55447fe35b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f55447feb0d
  0.09%    0.14%  ││││││││  0x00007f55447fe360: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f55447fe366: jne    0x00007f55447fe5e1
  0.03%    0.03%  ││││││││  0x00007f55447fe36c: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.07%  ││││││││  0x00007f55447fe370: vmovq  %r10,%xmm0
  0.07%    0.10%  ││││││││  0x00007f55447fe375: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.12%    0.10%  ││││││││  0x00007f55447fe379: vmovd  %ecx,%xmm1
  0.04%    0.05%  ││││││││  0x00007f55447fe37d: cmp    $0x40,%ecx
  0.04%    0.07%  ││││││││  0x00007f55447fe380: jg     0x00007f55447fe931  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.05%  ││││││││  0x00007f55447fe386: mov    $0x1,%r10d
  0.13%    0.11%  ││││││││  0x00007f55447fe38c: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.18%    0.15%  ││││││││  0x00007f55447fe38f: mov    %r9,%rcx
  0.12%    0.13%  ││││││││  0x00007f55447fe392: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.04%    0.05%  ││││││││  0x00007f55447fe395: test   %rcx,%rcx
                  ││││││││  0x00007f55447fe398: jne    0x00007f55447fe486  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.08%    0.08%  ││││││││  0x00007f55447fe39e: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.17%  ││││││││  0x00007f55447fe3a0: test   %rcx,%rcx
                  ││││││││  0x00007f55447fe3a3: jne    0x00007f55447fe96d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.11%    0.25%  ││││││││  0x00007f55447fe3a9: vmovd  %xmm1,%ecx
  0.02%    0.05%  ││││││││  0x00007f55447fe3ad: cmp    $0x40,%ecx
                  ││││││││  0x00007f55447fe3b0: jge    0x00007f55447fe9a5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.04%    0.07%  ││││││││  0x00007f55447fe3b6: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.06%    0.07%  ││││││││  0x00007f55447fe3b9: vmovq  %xmm3,%rcx
  0.12%    0.15%  ││││││││  0x00007f55447fe3be: mov    0x2c(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.02%    0.02%  ││││││││  0x00007f55447fe3c1: mov    %rbx,%rcx
  0.03%    0.02%  ││││││││  0x00007f55447fe3c4: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.07%  ││││││││  0x00007f55447fe3c8: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.12%    0.13%  ││││││││  0x00007f55447fe3cb: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.04%  ││││││││  0x00007f55447fe3cf: vmovq  %xmm0,%r10
  0.08%    0.07%  ││││││││  0x00007f55447fe3d4: shr    $0x3,%r10
  0.08%    0.05%  ││││││││  0x00007f55447fe3d8: mov    %r10d,(%rcx)
  0.13%    0.12%  ││││││││  0x00007f55447fe3db: mov    %rcx,%r10
  0.03%    0.05%  ││││││││  0x00007f55447fe3de: shr    $0x9,%r10
  0.02%    0.05%  ││││││││  0x00007f55447fe3e2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.10%  ││││││││  0x00007f55447fe3e6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f55447feb35
  0.14%    0.09%  ││││││││  0x00007f55447fe3eb: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f55447fe3f2: jne    0x00007f55447fe611
  0.04%    0.05%  ││││││││  0x00007f55447fe3f8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.06%  ││││││││  0x00007f55447fe3fc: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.08%  ││││││││  0x00007f55447fe400: cmp    $0x40,%ecx
                  ││││││││  0x00007f55447fe403: jg     0x00007f55447fe9e5  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.13%  ││││││││  0x00007f55447fe409: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.19%    0.27%  ││││││││  0x00007f55447fe40c: mov    %r9,%rdi
  0.15%    0.18%  ││││││││  0x00007f55447fe40f: and    %rsi,%rdi          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.07%  ││││││││  0x00007f55447fe412: test   %rdi,%rdi
                  ││││││││  0x00007f55447fe415: jne    0x00007f55447fe490  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.06%  ││││││││  0x00007f55447fe417: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.08%  ││││││││  0x00007f55447fe419: test   %rdi,%rdi
                  ││││││││  0x00007f55447fe41c: jne    0x00007f55447fea0d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.14%    0.12%  ││││││││  0x00007f55447fe422: cmp    $0x40,%ecx
                  ││││││││  0x00007f55447fe425: jge    0x00007f55447fea31  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.02%  ││││││││  0x00007f55447fe42b: or     %rsi,%r9
  0.05%    0.03%  ││││││││  0x00007f55447fe42e: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.08%    0.03%  ││││││││  0x00007f55447fe432: add    $0x20,%rbx
  0.11%    0.07%  ││││││││  0x00007f55447fe436: shr    $0x3,%r10
  0.02%    0.06%  ││││││││  0x00007f55447fe43a: mov    %r10d,(%rbx)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.07%  ││││││││  0x00007f55447fe43d: mov    %rbx,%r10
  0.06%    0.11%  ││││││││  0x00007f55447fe440: add    $0x5,%r14d
  0.13%    0.18%  ││││││││  0x00007f55447fe444: mov    %r14d,0xc(%rdx)    ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.05%  ││││││││  0x00007f55447fe448: shr    $0x9,%r10
  0.04%    0.08%  ││││││││  0x00007f55447fe44c: mov    %r12b,(%r8,%r10,1)  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.04%    0.15%  ││││││││  0x00007f55447fe450: xor    %eax,%eax
  0.08%    0.15%  ││││││││  0x00007f55447fe452: add    $0x60,%rsp
  0.04%    0.05%  ││││││││  0x00007f55447fe456: pop    %rbp
  0.06%    0.10%  ││││││││  0x00007f55447fe457: test   %eax,0x15df3ba3(%rip)        # 0x00007f555a5f2000
                  ││││││││                                                ;   {poll_return}
  0.08%    0.09%  ││││││││  0x00007f55447fe45d: retq   
                  ↘│││││││  0x00007f55447fe45e: mov    $0x1,%ebp
                   │││╰│││  0x00007f55447fe463: jmpq   0x00007f55447fe12d
                   ↘││ │││  0x00007f55447fe468: mov    $0x1,%ebp
                    ││ ╰││  0x00007f55447fe46d: jmpq   0x00007f55447fe190
                    ↘│  ││  0x00007f55447fe472: mov    $0x1,%ebp
                     │  ╰│  0x00007f55447fe477: jmpq   0x00007f55447fe26b
                     ↘   │  0x00007f55447fe47c: mov    $0x1,%ebp
                         ╰  0x00007f55447fe481: jmpq   0x00007f55447fe311
                            0x00007f55447fe486: mov    $0x1,%ebp
....................................................................................................
 14.03%   16.78%  <total for region 2>

....[Hottest Regions]...............................................................................
 64.24%   65.08%         C2, level 4  com.google.re2j.Machine::match, version 586 (1551 bytes) 
 14.03%   16.78%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 553 (893 bytes) 
  6.64%    3.47%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 546 (362 bytes) 
  4.98%    6.38%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 546 (359 bytes) 
  1.99%    1.37%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 211 (14 bytes) 
  1.80%    2.17%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 546 (115 bytes) 
  1.46%    0.59%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 538 (188 bytes) 
  1.14%    1.19%         C2, level 4  com.google.re2j.Machine::match, version 586 (95 bytes) 
  0.79%    0.78%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.20%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 591 (137 bytes) 
  0.14%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 591 (28 bytes) 
  0.11%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 591 (12 bytes) 
  0.11%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 586 (210 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 591 (0 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.09%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 586 (144 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.08%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 591 (0 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 591 (144 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 586 (100 bytes) 
  1.77%    1.56%  <...other 359 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 65.76%   66.66%         C2, level 4  com.google.re2j.Machine::match, version 586 
 14.03%   16.78%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 553 
 13.42%   12.02%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 546 
  1.99%    1.37%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 211 
  1.55%    1.43%   [kernel.kallsyms]  [unknown] 
  1.46%    0.59%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 538 
  0.93%    0.35%         C2, level 4  com.google.re2j.RE2::match, version 591 
  0.06%    0.04%      hsdis-amd64.so  bfd_default_scan 
  0.05%    0.03%         C2, level 4  java.util.Collections::shuffle, version 604 
  0.04%    0.07%           libjvm.so  RelocIterator::initialize 
  0.03%    0.01%           libjvm.so  outputStream::update_position 
  0.03%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.03%    0.01%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 596 
  0.03%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 658 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.02%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%    0.05%        libc-2.26.so  vfprintf 
  0.43%    0.24%  <...other 66 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 95.72%   96.46%         C2, level 4
  2.00%    1.37%         C1, level 3
  1.55%    1.43%   [kernel.kallsyms]
  0.37%    0.43%           libjvm.so
  0.15%    0.21%        libc-2.26.so
  0.08%    0.02%  libpthread-2.26.so
  0.07%    0.04%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.02%    0.02%              [vdso]
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  9883.614 ± 36.347  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
