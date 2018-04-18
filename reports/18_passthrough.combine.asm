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
# Warmup Iteration   1: 3750.998 ops/s
# Warmup Iteration   2: 9387.421 ops/s
# Warmup Iteration   3: 6683.963 ops/s
# Warmup Iteration   4: 9447.868 ops/s
# Warmup Iteration   5: 9442.815 ops/s
# Warmup Iteration   6: 9445.673 ops/s
# Warmup Iteration   7: 9445.672 ops/s
# Warmup Iteration   8: 9416.166 ops/s
# Warmup Iteration   9: 9400.866 ops/s
# Warmup Iteration  10: 9461.411 ops/s
# Warmup Iteration  11: 9455.215 ops/s
# Warmup Iteration  12: 9451.471 ops/s
# Warmup Iteration  13: 9436.595 ops/s
# Warmup Iteration  14: 9477.938 ops/s
# Warmup Iteration  15: 9479.750 ops/s
# Warmup Iteration  16: 9472.904 ops/s
# Warmup Iteration  17: 9483.039 ops/s
# Warmup Iteration  18: 9488.942 ops/s
# Warmup Iteration  19: 9462.502 ops/s
# Warmup Iteration  20: 9486.414 ops/s
Iteration   1: 6598.206 ops/s
Iteration   2: 9484.207 ops/s
Iteration   3: 9489.521 ops/s
Iteration   4: 9489.380 ops/s
Iteration   5: 9490.415 ops/s
Iteration   6: 9489.156 ops/s
Iteration   7: 9487.135 ops/s
Iteration   8: 9487.193 ops/s
Iteration   9: 9451.887 ops/s
Iteration  10: 9469.062 ops/s
Iteration  11: 9468.152 ops/s
Iteration  12: 9470.106 ops/s
Iteration  13: 9129.850 ops/s
Iteration  14: 9471.097 ops/s
Iteration  15: 9470.027 ops/s
Iteration  16: 9469.163 ops/s
Iteration  17: 9468.174 ops/s
Iteration  18: 9451.279 ops/s
Iteration  19: 6657.872 ops/s
Iteration  20: 9478.959 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9173.542 ±(99.9%) 759.013 ops/s [Average]
  (min, avg, max) = (6598.206, 9173.542, 9490.415), stdev = 874.081
  CI (99.9%): [8414.529, 9932.555] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 195765 total address lines.
Perf output processed (skipped 23.348 seconds):
 Column 1: cycles (20374 events)
 Column 2: instructions (20358 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 538 (1333 bytes) 

                                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f93f523c60a: cmp    $0xd800,%r11d
                                              0x00007f93f523c611: jge    0x00007f93f523de0d  ;*if_icmplt
                                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%                                       0x00007f93f523c617: shl    $0x3,%r11d         ;*ishl
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f93f523c61b: mov    %r11d,%r9d
                                              0x00007f93f523c61e: and    $0x7,%r9d
                                              0x00007f93f523c622: or     $0x1,%r11d
           0.01%                              0x00007f93f523c626: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 201)
                                              0x00007f93f523c62a: mov    %r9d,0x30(%rsp)
                                              0x00007f93f523c62f: sar    $0x3,%r11d         ;*ishr
                                                                                            ; - com.google.re2j.Machine::match@113 (line 202)
                                              0x00007f93f523c633: mov    %r11d,0x38(%rsp)   ;*iand
                                                                                            ; - com.google.re2j.Machine::match@120 (line 203)
  0.00%                                       0x00007f93f523c638: vmovd  %xmm0,%r11d
                                              0x00007f93f523c63d: test   %r11d,%r11d
                                              0x00007f93f523c640: jne    0x00007f93f523db7d  ;*ifne
                                                                                            ; - com.google.re2j.Machine::match@124 (line 206)
                                              0x00007f93f523c646: test   %r10d,%r10d
                                              0x00007f93f523c649: jl     0x00007f93f523cfb7  ;*ifge
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f93f523c64f: mov    $0x5,%r11d         ;*iload_1
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%                                       0x00007f93f523c655: cmp    $0xa,%r10d
                                              0x00007f93f523c659: je     0x00007f93f523cfdd  ;*iload_0
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f93f523c65f: mov    %r10d,%r9d
                                              0x00007f93f523c662: add    $0xffffffbf,%r9d
                                              0x00007f93f523c666: cmp    $0x1a,%r9d
                  ╭                           0x00007f93f523c66a: jb     0x00007f93f523c67d  ;*if_icmple
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 207)
           0.00%  │                           0x00007f93f523c66c: mov    %r10d,%r8d
                  │                           0x00007f93f523c66f: add    $0xffffff9f,%r8d
                  │                           0x00007f93f523c673: cmp    $0x1a,%r8d
                  │                           0x00007f93f523c677: jae    0x00007f93f523cfec  ;*iconst_1
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 207)
           0.00%  ↘                           0x00007f93f523c67d: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f93f523c681: mov    %r11d,0x34(%rsp)   ;*iload_2
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 207)
                                              0x00007f93f523c686: mov    0x3c(%rsp),%r11d
  0.00%                                       0x00007f93f523c68b: test   %r11d,%r11d
                                              0x00007f93f523c68e: jne    0x00007f93f523d8d9  ;*aload
                                                                                            ; - com.google.re2j.Machine::match@145 (line 213)
                                              0x00007f93f523c694: mov    0x4c(%rsp),%r8d
  0.00%    0.00%                              0x00007f93f523c699: mov    0x8(%r12,%r8,8),%r8d  ;*invokevirtual add
                                                                                            ; - com.google.re2j.Machine::match@322 (line 245)
                                                                                            ; implicit exception: dispatches to 0x00007f93f523d8d9
  0.00%                                       0x00007f93f523c69e: mov    %r8d,0x14(%rsp)
                                              0x00007f93f523c6a3: mov    0x40(%rsp),%r11
           0.00%                              0x00007f93f523c6a8: movzbl 0x11(%r11),%ebx    ;*getfield captures
                                                                                            ; - com.google.re2j.Machine::match@292 (line 242)
                                              0x00007f93f523c6ad: mov    0x4c(%rsp),%r11d
                                              0x00007f93f523c6b2: shl    $0x3,%r11
           0.00%                              0x00007f93f523c6b6: mov    %r11,0x18(%rsp)
                                              0x00007f93f523c6bb: mov    0x48(%rsp),%r8d
                                              0x00007f93f523c6c0: and    $0x4,%r8d          ;*iand
                                                                                            ; - com.google.re2j.Machine::match@156 (line 214)
                                              0x00007f93f523c6c4: mov    %r8d,0x58(%rsp)
                                              0x00007f93f523c6c9: mov    %rcx,%r11
                                              0x00007f93f523c6cc: shl    $0x3,%r11          ;*getfield q1
                                                                                            ; - com.google.re2j.Machine::match@62 (line 194)
           0.01%                              0x00007f93f523c6d0: vmovd  %ebx,%xmm2
                                              0x00007f93f523c6d4: mov    %r11,0x68(%rsp)
                                              0x00007f93f523c6d9: xor    %eax,%eax
                                              0x00007f93f523c6db: mov    $0x1,%r11d
  0.01%                                       0x00007f93f523c6e1: xor    %r9d,%r9d
                                              0x00007f93f523c6e4: mov    %r11d,0x78(%rsp)
  0.00%                                       0x00007f93f523c6e9: mov    %r9d,0x64(%rsp)
                   ╭                          0x00007f93f523c6ee: jmpq   0x00007f93f523c93d
  0.15%            │              ↗           0x00007f93f523c6f3: mov    0x18(%rsp),%rbp    ;*ifeq
                   │              │                                                         ; - com.google.re2j.Machine::match@295 (line 242)
  0.02%    0.01%   │              │           0x00007f93f523c6f8: mov    %r14,%r8
  0.12%    0.08%   │              │           0x00007f93f523c6fb: shl    $0x3,%r8           ;*getfield matchcap
                   │              │                                                         ; - com.google.re2j.Machine::match@311 (line 245)
  0.06%    0.02%   │              │           0x00007f93f523c6ff: mov    %rbp,%rsi
  0.18%    0.03%   │              │           0x00007f93f523c702: mov    0x20(%rsp),%rdx
  0.01%    0.02%   │              │           0x00007f93f523c707: mov    0x5c(%rsp),%ecx
  0.09%    0.02%   │              │           0x00007f93f523c70b: mov    0x34(%rsp),%r9d
  0.04%    0.01%   │              │           0x00007f93f523c710: xor    %edi,%edi
  0.17%    0.04%   │              │           0x00007f93f523c712: mov    0x40(%rsp),%r10
  0.00%    0.01%   │              │           0x00007f93f523c717: mov    %r10,(%rsp)
  0.12%    0.07%   │              │           0x00007f93f523c71b: vmovss %xmm2,0x8(%rsp)
  0.04%    0.02%   │              │           0x00007f93f523c721: xchg   %ax,%ax
  0.14%    0.18%   │              │           0x00007f93f523c723: callq  0x00007f93f5046020  ; OopMap{rbp=Oop [24]=Oop [32]=Oop [40]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop off=712}
                   │              │                                                         ;*invokevirtual add
                   │              │                                                         ; - com.google.re2j.Machine::match@322 (line 245)
                   │              │                                                         ;   {optimized virtual_call}
  0.05%    0.07%   │              │           0x00007f93f523c728: mov    %rbp,0x70(%rsp)    ;*synchronization entry
                   │              │                                                         ; - com.google.re2j.Machine::match@-1 (line 182)
  0.25%    0.24%   │              │↗          0x00007f93f523c72d: mov    0x60(%rsp),%r10d
  0.17%    0.17%   │              ││          0x00007f93f523c732: test   %r10d,%r10d
                   │╭             ││          0x00007f93f523c735: jl     0x00007f93f523caa7  ;*ifge
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.03%   ││             ││          0x00007f93f523c73b: xor    %r8d,%r8d          ;*iload_0
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 247)
  0.33%    0.36%   ││             ││↗         0x00007f93f523c73e: cmp    $0xa,%r10d
                   ││╭            │││         0x00007f93f523c742: je     0x00007f93f523cb21  ;*iload_1
                   │││            │││                                                       ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││            │││                                                       ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.14%   │││            │││     ↗   0x00007f93f523c748: mov    0x38(%rsp),%r10d
  0.17%    0.14%   │││            │││     │   0x00007f93f523c74d: test   %r10d,%r10d
                   │││╭           │││     │   0x00007f93f523c750: jl     0x00007f93f523cab2  ;*iload_1
                   ││││           │││     │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││           │││     │                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.06%    0.03%   ││││           │││↗    │   0x00007f93f523c756: cmp    $0xa,%r10d
                   ││││╭          ││││    │   0x00007f93f523c75a: je     0x00007f93f523cb2a  ;*invokevirtual endPos
                   │││││          ││││    │                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.25%    0.31%   │││││          ││││    │↗  0x00007f93f523c760: mov    0x50(%rsp),%r10
  0.18%    0.14%   │││││          ││││    ││  0x00007f93f523c765: mov    0x10(%r10),%ebx    ;*getfield end
                   │││││          ││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@352 (line 248)
  0.22%    0.21%   │││││          ││││    ││  0x00007f93f523c769: mov    0x5c(%rsp),%r10d
  0.06%    0.06%   │││││          ││││    ││  0x00007f93f523c76e: add    0x2c(%rsp),%r10d   ;*iadd
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@344 (line 248)
  0.31%    0.29%   │││││          ││││    ││  0x00007f93f523c773: mov    %r10d,0x64(%rsp)
  0.16%    0.17%   │││││          ││││    ││  0x00007f93f523c778: mov    0x60(%rsp),%r11d
  0.12%    0.19%   │││││          ││││    ││  0x00007f93f523c77d: add    $0xffffffbf,%r11d
  0.04%    0.06%   │││││          ││││    ││  0x00007f93f523c781: mov    0x38(%rsp),%r9d
  0.32%    0.32%   │││││          ││││    ││  0x00007f93f523c786: add    $0xffffffbf,%r9d
  0.17%    0.11%   │││││          ││││    ││  0x00007f93f523c78a: cmp    $0x1a,%r11d
                   │││││╭         ││││    ││  0x00007f93f523c78e: jb     0x00007f93f523c7a3  ;*if_icmple
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.09%   ││││││         ││││    ││  0x00007f93f523c790: mov    0x60(%rsp),%r10d
  0.06%    0.02%   ││││││         ││││    ││  0x00007f93f523c795: add    $0xffffff9f,%r10d
  0.22%    0.25%   ││││││         ││││    ││  0x00007f93f523c799: cmp    $0x1a,%r10d
                   ││││││         ││││    ││  0x00007f93f523c79d: jae    0x00007f93f523cf3d  ;*iconst_1
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.15%    0.17%   │││││↘         ││││    ││  0x00007f93f523c7a3: mov    $0x1,%ebp          ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.18%    0.18%   │││││          ││││    ││  0x00007f93f523c7a8: cmp    $0x1a,%r9d
                   │││││ ╭        ││││    ││  0x00007f93f523c7ac: jb     0x00007f93f523c7c1  ;*if_icmple
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.06%    0.14%   │││││ │        ││││    ││  0x00007f93f523c7ae: mov    0x38(%rsp),%r10d
  0.27%    0.38%   │││││ │        ││││    ││  0x00007f93f523c7b3: add    $0xffffff9f,%r10d
  0.10%    0.18%   │││││ │        ││││    ││  0x00007f93f523c7b7: cmp    $0x1a,%r10d
                   │││││ │        ││││    ││  0x00007f93f523c7bb: jae    0x00007f93f523cf66  ;*iconst_1
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.23%    0.26%   │││││ ↘        ││││    ││  0x00007f93f523c7c1: mov    $0x1,%r11d         ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.29%    0.30%   │││││          ││││    ││  0x00007f93f523c7c7: cmp    %r11d,%ebp
                   │││││  ╭       ││││    ││  0x00007f93f523c7ca: jne    0x00007f93f523c7d7  ;*if_icmpeq
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.25%    0.29%   │││││  │       ││││    ││  0x00007f93f523c7cc: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.11%   │││││  │       ││││    ││  0x00007f93f523c7d0: mov    %r8d,0x34(%rsp)
  0.17%    0.19%   │││││  │╭      ││││    ││  0x00007f93f523c7d5: jmp    0x00007f93f523c7e0
  0.11%    0.13%   │││││  ↘│      ││││    ││  0x00007f93f523c7d7: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.01%   │││││   │      ││││    ││  0x00007f93f523c7db: mov    %r8d,0x34(%rsp)    ;*iload_2
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.16%    0.14%   │││││   ↘      ││││    ││  0x00007f93f523c7e0: mov    0x5c(%rsp),%r10d
  0.22%    0.26%   │││││          ││││    ││  0x00007f93f523c7e5: cmp    %ebx,%r10d
                   │││││    ╭     ││││    ││  0x00007f93f523c7e8: je     0x00007f93f523cabb  ;*if_icmpne
                   │││││    │     ││││    ││                                                ; - com.google.re2j.Machine::match@355 (line 248)
  0.21%    0.20%   │││││    │     ││││    ││  0x00007f93f523c7ee: xor    %r11d,%r11d
  0.13%    0.09%   │││││    │     ││││↗   ││  0x00007f93f523c7f1: mov    0x40(%rsp),%rsi
  0.14%    0.09%   │││││    │     │││││   ││  0x00007f93f523c7f6: mov    0x20(%rsp),%rdx
  0.19%    0.24%   │││││    │     │││││   ││  0x00007f93f523c7fb: mov    0x68(%rsp),%rcx
  0.17%    0.25%   │││││    │     │││││   ││  0x00007f93f523c800: mov    0x5c(%rsp),%r8d
  0.12%    0.13%   │││││    │     │││││   ││  0x00007f93f523c805: mov    0x64(%rsp),%r9d
  0.12%    0.09%   │││││    │     │││││   ││  0x00007f93f523c80a: mov    0x60(%rsp),%edi
  0.25%    0.21%   │││││    │     │││││   ││  0x00007f93f523c80e: mov    0x34(%rsp),%ebx
  0.10%    0.14%   │││││    │     │││││   ││  0x00007f93f523c812: mov    %ebx,(%rsp)
  0.26%    0.19%   │││││    │     │││││   ││  0x00007f93f523c815: xor    %ebx,%ebx
  0.06%    0.06%   │││││    │     │││││   ││  0x00007f93f523c817: mov    %ebx,0x8(%rsp)
  0.37%    0.28%   │││││    │     │││││   ││  0x00007f93f523c81b: mov    %r11d,0x10(%rsp)
  0.29%    0.21%   │││││    │     │││││   ││  0x00007f93f523c820: data16 xchg %ax,%ax
  0.09%    0.13%   │││││    │     │││││   ││  0x00007f93f523c823: callq  0x00007f93f5046020  ; OopMap{[24]=Oop [32]=Oop [40]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=968}
                   │││││    │     │││││   ││                                                ;*invokespecial step
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@363 (line 248)
                   │││││    │     │││││   ││                                                ;   {optimized virtual_call}
  0.07%    0.12%   │││││    │     │││││   ││  0x00007f93f523c828: mov    0x40(%rsp),%r10
  0.52%    0.48%   │││││    │     │││││   ││  0x00007f93f523c82d: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@375 (line 252)
  0.08%    0.02%   │││││    │     │││││   ││  0x00007f93f523c832: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@382 (line 252)
  0.08%    0.09%   │││││    │     │││││   ││  0x00007f93f523c837: mov    0x2c(%rsp),%r11d
  0.43%    0.55%   │││││    │     │││││   ││  0x00007f93f523c83c: test   %r11d,%r11d
                   │││││    │╭    │││││   ││  0x00007f93f523c83f: je     0x00007f93f523cac6  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@368 (line 249)
  0.00%            │││││    ││    │││││   ││  0x00007f93f523c845: test   %ebx,%ebx
                   │││││    ││    │││││   ││  0x00007f93f523c847: jne    0x00007f93f523d179  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@378 (line 252)
  0.04%    0.02%   │││││    ││    │││││   ││  0x00007f93f523c84d: test   %eax,%eax
                   │││││    ││    │││││   ││  0x00007f93f523c84f: jne    0x00007f93f523d3a5  ;*ifeq
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@385 (line 252)
  0.11%    0.10%   │││││    ││    │││││   ││  0x00007f93f523c855: mov    0x50(%rsp),%r10
  0.53%    0.47%   │││││    ││    │││││   ││  0x00007f93f523c85a: mov    0x10(%r10),%r11d   ;*getfield end
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.04%    0.04%   │││││    ││    │││││   ││  0x00007f93f523c85e: mov    0xc(%r10),%r8d     ;*getfield start
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.03%    0.02%   │││││    ││    │││││   ││  0x00007f93f523c862: mov    0x14(%r10),%r13d   ;*getfield str
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.16%    0.20%   │││││    ││    │││││   ││  0x00007f93f523c866: mov    0x38(%rsp),%r10d
  0.40%    0.59%   │││││    ││    │││││   ││  0x00007f93f523c86b: cmp    $0xffffffff,%r10d
                   │││││    ││╭   │││││   ││  0x00007f93f523c86f: je     0x00007f93f523cb05  ;*if_icmpeq
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 260)
  0.01%    0.01%   │││││    │││   │││││   ││  0x00007f93f523c875: mov    0x30(%rsp),%ecx
  0.03%    0.03%   │││││    │││   │││││   ││  0x00007f93f523c879: add    0x64(%rsp),%ecx
  0.10%    0.17%   │││││    │││   │││││   ││  0x00007f93f523c87d: add    %r8d,%ecx          ;*iadd
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.48%    0.65%   │││││    │││   │││││   ││  0x00007f93f523c880: cmp    %r11d,%ecx
                   │││││    │││╭  │││││   ││  0x00007f93f523c883: jge    0x00007f93f523cb14  ;*if_icmpge
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.04%   │││││    ││││  │││││   ││  0x00007f93f523c889: mov    0x8(%r12,%r13,8),%r9d  ; implicit exception: dispatches to 0x00007f93f523e4f5
  0.82%    1.08%   │││││    ││││  │││││   ││  0x00007f93f523c88e: cmp    $0xf80002da,%r9d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││    ││││  │││││   ││  0x00007f93f523c895: jne    0x00007f93f523d0b1
  0.43%    0.60%   │││││    ││││  │││││   ││  0x00007f93f523c89b: lea    (%r12,%r13,8),%rdi  ;*invokeinterface charAt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.19%    0.21%   │││││    ││││  │││││   ││  0x00007f93f523c89f: test   %ecx,%ecx
                   │││││    ││││  │││││   ││  0x00007f93f523c8a1: jl     0x00007f93f523d1c9  ;*iflt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.01%   │││││    ││││  │││││   ││  0x00007f93f523c8a7: mov    0xc(%rdi),%r14d    ;*getfield value
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.12%    0.15%   │││││    ││││  │││││   ││  0x00007f93f523c8ab: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
                   │││││    ││││  │││││   ││                                                ; implicit exception: dispatches to 0x00007f93f523e509
  2.63%    2.95%   │││││    ││││  │││││   ││  0x00007f93f523c8b0: cmp    %ebp,%ecx
                   │││││    ││││  │││││   ││  0x00007f93f523c8b2: jge    0x00007f93f523d3f5  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.71%    1.08%   │││││    ││││  │││││   ││  0x00007f93f523c8b8: cmp    %ebp,%ecx
                   │││││    ││││  │││││   ││  0x00007f93f523c8ba: jae    0x00007f93f523d046
  0.01%            │││││    ││││  │││││   ││  0x00007f93f523c8c0: lea    (%r12,%r14,8),%r10
                   │││││    ││││  │││││   ││  0x00007f93f523c8c4: movzwl 0x10(%r10,%rcx,2),%r9d  ;*caload
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.10%    0.12%   │││││    ││││  │││││   ││  0x00007f93f523c8ca: cmp    $0xd800,%r9d
                   │││││    ││││  │││││   ││  0x00007f93f523c8d1: jge    0x00007f93f523d46d  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.52%    0.76%   │││││    ││││  │││││   ││  0x00007f93f523c8d7: shl    $0x3,%r9d          ;*ishl
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 261)
  0.32%    0.36%   │││││    ││││  │││││   ││  0x00007f93f523c8db: mov    %r9d,%edi
                   │││││    ││││  │││││   ││  0x00007f93f523c8de: or     $0x1,%edi
  0.52%    0.60%   │││││    ││││  │││││   ││  0x00007f93f523c8e1: and    $0x7,%r9d
  0.18%    0.22%   │││││    ││││  │││││   ││  0x00007f93f523c8e5: sar    $0x3,%edi          ;*ishr
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@423 (line 262)
  0.31%    0.56%   │││││    ││││  │││││   ││  0x00007f93f523c8e8: or     $0x1,%r9d          ; OopMap{r13=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=1164}
                   │││││    ││││  │││││   ││                                                ;*goto
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@445 (line 268)
  0.02%    0.04%   │││││    ││││  │││││ ↗↗││  0x00007f93f523c8ec: test   %eax,0x15f9070e(%rip)        # 0x00007f940b1cd000
                   │││││    ││││  │││││ ││││                                                ;*goto
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@445 (line 268)
                   │││││    ││││  │││││ ││││                                                ;   {poll}
  0.03%    0.03%   │││││    ││││  │││││ ││││  0x00007f93f523c8f2: mov    0x40(%rsp),%r10
  0.17%    0.17%   │││││    ││││  │││││ ││││  0x00007f93f523c8f7: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@311 (line 245)
  0.44%    0.51%   │││││    ││││  │││││ ││││  0x00007f93f523c8fb: mov    0x14(%r10),%esi    ;*getfield re2
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@178 (line 222)
  0.05%    0.03%   │││││    ││││  │││││ ││││  0x00007f93f523c8ff: mov    0x68(%rsp),%r10
  0.04%    0.06%   │││││    ││││  │││││ ││││  0x00007f93f523c904: mov    %r10,%rcx
  0.11%    0.14%   │││││    ││││  │││││ ││││  0x00007f93f523c907: shr    $0x3,%rcx
  0.49%    0.58%   │││││    ││││  │││││ ││││  0x00007f93f523c90b: mov    %ecx,0x28(%rsp)
  0.02%    0.06%   │││││    ││││  │││││ ││││  0x00007f93f523c90f: mov    0x38(%rsp),%r10d
  0.03%    0.02%   │││││    ││││  │││││ ││││  0x00007f93f523c914: vmovd  %ebx,%xmm2
  0.14%    0.10%   │││││    ││││  │││││ ││││  0x00007f93f523c918: mov    0x20(%rsp),%rcx
  0.41%    0.54%   │││││    ││││  │││││ ││││  0x00007f93f523c91d: mov    %rcx,0x68(%rsp)
  0.04%    0.03%   │││││    ││││  │││││ ││││  0x00007f93f523c922: mov    0x30(%rsp),%ebx
  0.01%    0.03%   │││││    ││││  │││││ ││││  0x00007f93f523c926: mov    %ebx,0x2c(%rsp)
  0.17%    0.15%   │││││    ││││  │││││ ││││  0x00007f93f523c92a: mov    %r9d,0x30(%rsp)
  0.30%    0.36%   │││││    ││││  │││││ ││││  0x00007f93f523c92f: mov    %edi,0x38(%rsp)
  0.05%    0.05%   │││││    ││││  │││││ ││││  0x00007f93f523c933: mov    %r8d,0x70(%rsp)
  0.05%    0.03%   │││││    ││││  │││││ ││││  0x00007f93f523c938: mov    %r11d,0x74(%rsp)
  0.18%    0.16%   ↘││││    ││││  │││││ ││││  0x00007f93f523c93d: mov    0x28(%rsp),%r11d
  0.37%    0.50%    ││││    ││││  │││││ ││││  0x00007f93f523c942: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f93f523e4e6
  0.10%    0.09%    ││││    ││││  │││││ ││││  0x00007f93f523c948: mov    0x28(%rsp),%r8d
  0.01%    0.01%    ││││    ││││  │││││ ││││  0x00007f93f523c94d: shl    $0x3,%r8           ;*aload
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@145 (line 213)
  0.16%    0.10%    ││││    ││││  │││││ ││││  0x00007f93f523c951: mov    %r8,0x20(%rsp)
  0.42%    0.33%    ││││    ││││  │││││ ││││  0x00007f93f523c956: test   %r11d,%r11d
                    ││││    ││││╭ │││││ ││││  0x00007f93f523c959: je     0x00007f93f523c9a7  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@150 (line 213)
  0.02%    0.02%    ││││    │││││ │││││ ││││  0x00007f93f523c95b: mov    0x58(%rsp),%r11d
  0.02%    0.01%    ││││    │││││ │││││ ││││  0x00007f93f523c960: test   %r11d,%r11d
                    ││││    │││││ │││││ ││││  0x00007f93f523c963: jne    0x00007f93f523d5fd  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@157 (line 214)
  0.02%    0.02%    ││││    │││││ │││││ ││││  0x00007f93f523c969: test   %eax,%eax
                    ││││    │││││ │││││ ││││  0x00007f93f523c96b: jne    0x00007f93f523d659  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@171 (line 218)
  0.20%    0.20%    ││││    │││││ │││││ ││││  0x00007f93f523c971: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@181 (line 222)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007f93f523e529
  0.01%    0.01%    ││││    │││││ │││││ ││││  0x00007f93f523c976: mov    %r11d,%r8d
  0.02%             ││││    │││││ │││││ ││││  0x00007f93f523c979: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││││    │││││ │││││ ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007f93f523e539
  0.06%    0.07%    ││││    │││││ │││││ ││││  0x00007f93f523c97e: vmovd  %r11d,%xmm0
  0.15%    0.13%    ││││    │││││ │││││ ││││  0x00007f93f523c983: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││││    │││││ │││││ ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 222)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007f93f523e549
  0.10%    0.06%    ││││    │││││ │││││ ││││  0x00007f93f523c988: mov    %r11d,0x5c(%rsp)
  0.09%    0.12%    ││││    │││││ │││││ ││││  0x00007f93f523c98d: test   %r11d,%r11d
                    ││││    │││││ │││││ ││││  0x00007f93f523c990: jne    0x00007f93f523cbf0  ;*ifne
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@187 (line 222)
  0.02%    0.01%    ││││    │││││ │││││ ││││  0x00007f93f523c996: mov    %r10d,0x60(%rsp)
  0.14%    0.08%    ││││    │││││ │││││ ││││  0x00007f93f523c99b: mov    0x64(%rsp),%r11d
  0.01%    0.03%    ││││    │││││ │││││ ││││  0x00007f93f523c9a0: mov    %r11d,0x5c(%rsp)
  0.08%    0.02%    ││││    │││││╭│││││ ││││  0x00007f93f523c9a5: jmp    0x00007f93f523c9b6
  0.03%    0.05%    ││││    ││││↘││││││ ││││  0x00007f93f523c9a7: mov    %r10d,0x60(%rsp)
  0.01%    0.00%    ││││    ││││ ││││││ ││││  0x00007f93f523c9ac: mov    0x64(%rsp),%r10d
  0.11%    0.07%    ││││    ││││ ││││││ ││││  0x00007f93f523c9b1: mov    %r10d,0x5c(%rsp)   ;*iload_3
                    ││││    ││││ ││││││ ││││                                                ; - com.google.re2j.Machine::match@276 (line 239)
  0.25%    0.20%    ││││    ││││ ↘│││││ ││││  0x00007f93f523c9b6: test   %eax,%eax
                    ││││    ││││  │││││ ││││  0x00007f93f523c9b8: jne    0x00007f93f523d119  ;*ifne
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@288 (line 239)
  0.18%    0.06%    ││││    ││││  │││││ ││││  0x00007f93f523c9be: vmovd  %xmm2,%r10d
  0.02%    0.01%    ││││    ││││  │││││ ││││  0x00007f93f523c9c3: test   %r10d,%r10d
                    ││││    ││││  │││││ ││││  0x00007f93f523c9c6: jne    0x00007f93f523d299  ;*ifeq
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@295 (line 242)
  0.22%    0.15%    ││││    ││││  │││││ ││││  0x00007f93f523c9cc: mov    0x14(%rsp),%r11d
  0.26%    0.17%    ││││    ││││  │││││ ││││  0x00007f93f523c9d1: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││    ││││  ╰││││ ││││  0x00007f93f523c9d8: je     0x00007f93f523c6f3
  0.02%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523c9de: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││││    ││││   ││││ ││││  0x00007f93f523c9e5: jne    0x00007f93f523d2f9
                    ││││    ││││   ││││ ││││  0x00007f93f523c9eb: mov    0x18(%rsp),%r10    ;*invokevirtual add
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.07%    ││││    ││││   ││││ ││││  0x00007f93f523c9f0: mov    %r10,0x70(%rsp)
  0.17%    0.11%    ││││    ││││   ││││ ││││  0x00007f93f523c9f5: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523c9f9: cmp    $0x40,%ecx
                    ││││    ││││   ││││ ││││  0x00007f93f523c9fc: jg     0x00007f93f523d4d1  ;*if_icmpgt
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca02: mov    $0x1,%r9d
  0.06%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523ca08: shl    %cl,%r9            ;*lshl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.25%    0.06%    ││││    ││││   ││││ ││││  0x00007f93f523ca0b: mov    0x28(%rsp),%r10d
  0.08%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca10: mov    0x10(%r12,%r10,8),%r10  ;*getfield pcsl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca15: mov    %r10,%r11
  0.02%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca18: and    %r9,%r11           ;*land
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca1b: test   %r11,%r11
                    ││││    ││││   ││││ ││││  0x00007f93f523ca1e: jne    0x00007f93f523d52d  ;*ifeq
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%             ││││    ││││   ││││ ││││  0x00007f93f523ca24: cmp    $0x40,%ecx
                    ││││    ││││   ││││ ││││  0x00007f93f523ca27: jge    0x00007f93f523d5a1  ;*if_icmpge
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca2d: mov    0x28(%rsp),%r8d
  0.04%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523ca32: mov    %r12b,0x18(%r12,%r8,8)  ;*putfield empty
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca37: mov    0x20(%r12,%r8,8),%r8d  ;*getfield denseThreadsInstructions
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca3c: mov    0x28(%rsp),%ecx
  0.21%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca40: mov    0xc(%r12,%rcx,8),%ebp  ;*getfield size
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523ca45: or     %r10,%r9
  0.01%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca48: mov    %r9,0x10(%r12,%rcx,8)  ;*putfield pcsl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523ca4d: mov    %ebp,%r11d
  0.21%    0.17%    ││││    ││││   ││││ ││││  0x00007f93f523ca50: inc    %r11d
  0.02%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca53: mov    %r11d,0xc(%r12,%rcx,8)  ;*putfield size
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca58: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f93f523e519
  0.06%    0.03%    ││││    ││││   ││││ ││││  0x00007f93f523ca5d: cmp    %r11d,%ebp
                    ││││    ││││   ││││ ││││  0x00007f93f523ca60: jae    0x00007f93f523d231
  0.25%    0.29%    ││││    ││││   ││││ ││││  0x00007f93f523ca66: mov    0x8(%r12,%r8,8),%r11d
  0.03%    0.02%    ││││    ││││   ││││ ││││  0x00007f93f523ca6b: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││││    ││││   ││││ ││││  0x00007f93f523ca72: jne    0x00007f93f523d33d
           0.00%    ││││    ││││   ││││ ││││  0x00007f93f523ca78: mov    0x70(%rsp),%r10
  0.08%    0.11%    ││││    ││││   ││││ ││││  0x00007f93f523ca7d: mov    %r10,%r11
  0.23%    0.15%    ││││    ││││   ││││ ││││  0x00007f93f523ca80: shr    $0x3,%r11          ;*aastore
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%             ││││    ││││   ││││ ││││  0x00007f93f523ca84: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca88: lea    0x10(%r10,%rbp,4),%r10
  0.05%    0.08%    ││││    ││││   ││││ ││││  0x00007f93f523ca8d: mov    %r11d,(%r10)
  0.36%    0.29%    ││││    ││││   ││││ ││││  0x00007f93f523ca90: shr    $0x9,%r10
  0.01%    0.01%    ││││    ││││   ││││ ││││  0x00007f93f523ca94: movabs $0x7f93f0a2e000,%r11
                    ││││    ││││   ││││ ││││  0x00007f93f523ca9e: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.27%    ││││    ││││   ╰│││ ││││  0x00007f93f523caa2: jmpq   0x00007f93f523c72d
                    ↘│││    ││││    │││ ││││  0x00007f93f523caa7: mov    $0x5,%r8d
                     │││    ││││    ╰││ ││││  0x00007f93f523caad: jmpq   0x00007f93f523c73e
  0.00%    0.00%     │↘│    ││││     ││ ││││  0x00007f93f523cab2: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │ │    ││││     ││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%              │ │    ││││     ╰│ ││││  0x00007f93f523cab6: jmpq   0x00007f93f523c756
           0.01%     │ │    ↘│││      │ ││││  0x00007f93f523cabb: mov    $0x1,%r11d
                     │ │     │││      ╰ ││││  0x00007f93f523cac1: jmpq   0x00007f93f523c7f1
  0.01%    0.00%     │ │     ↘││        ││││  0x00007f93f523cac6: test   %ebx,%ebx
                     │ │      ││        ││││  0x00007f93f523cac8: jne    0x00007f93f523cf27  ;*getfield matched
                     │ │      ││        ││││                                                ; - com.google.re2j.Machine::match@455 (line 270)
  0.02%              │ │      ││        ││││  0x00007f93f523cace: mov    0x68(%rsp),%r10
  0.00%    0.01%     │ │      ││        ││││  0x00007f93f523cad3: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f93f523e5c1
  0.01%    0.00%     │ │      ││        ││││  0x00007f93f523cad8: test   %r11d,%r11d
                     │ │      ││       ╭││││  0x00007f93f523cadb: jne    0x00007f93f523caf6  ;*ifeq
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f93f523cadd: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f93f523cae2: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f93f523cae6: mov    %r12d,0xc(%r10)    ;*putfield size
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
  0.01%    0.00%     │ │      ││       │││││  0x00007f93f523caea: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │ │      ││       │││││  0x00007f93f523caee: test   %ebp,%ebp
                     │ │      ││       │││││  0x00007f93f523caf0: jne    0x00007f93f523de71  ;*if_icmpne
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
                     │ │      ││       ↘││││  0x00007f93f523caf6: add    $0x90,%rsp
                     │ │      ││        ││││  0x00007f93f523cafd: pop    %rbp
           0.00%     │ │      ││        ││││  0x00007f93f523cafe: test   %eax,0x15f904fc(%rip)        # 0x00007f940b1cd000
                     │ │      ││        ││││                                                ;   {poll_return}
                     │ │      ││        ││││  0x00007f93f523cb04: retq   
                     │ │      ↘│        ││││  0x00007f93f523cb05: mov    0x30(%rsp),%r9d
                     │ │       │        ││││  0x00007f93f523cb0a: mov    $0xffffffff,%edi
                     │ │       │        ╰│││  0x00007f93f523cb0f: jmpq   0x00007f93f523c8ec
  0.03%    0.03%     │ │       ↘         │││  0x00007f93f523cb14: mov    $0xffffffff,%edi
  0.01%    0.01%     │ │                 │││  0x00007f93f523cb19: xor    %r9d,%r9d
                     │ │                 ╰││  0x00007f93f523cb1c: jmpq   0x00007f93f523c8ec
                     ↘ │                  ││  0x00007f93f523cb21: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                       │                  ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
           0.00%       │                  ╰│  0x00007f93f523cb25: jmpq   0x00007f93f523c748
  0.00%                ↘                   │  0x00007f93f523cb2a: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                           │                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.01%                           ╰  0x00007f93f523cb2e: jmpq   0x00007f93f523c760
                                              0x00007f93f523cb33: nopw   0x0(%rax,%rax,1)
                                              0x00007f93f523cb3c: data16 data16 xchg %ax,%ax
  0.01%    0.01%                              0x00007f93f523cb40: mov    %r9d,%r10d
                                              0x00007f93f523cb43: jmpq   0x00007f93f523cd47
                                              0x00007f93f523cb48: add    $0x2,%r10d
  0.01%                                       0x00007f93f523cb4c: mov    %r10d,%r9d
                                              0x00007f93f523cb4f: inc    %r9d
                                              0x00007f93f523cb52: jmp    0x00007f93f523cb64
                                              0x00007f93f523cb54: mov    %r10d,%r9d
                                              0x00007f93f523cb57: add    $0x2,%r9d
                                              0x00007f93f523cb5b: jmp    0x00007f93f523cb61
                                              0x00007f93f523cb5d: add    $0x2,%r10d
                                              0x00007f93f523cb61: inc    %r10d              ;*iinc
                                                                                            ; - java.lang.String::indexOf@69 (line 1772)
                                                                                            ; - java.lang.String::indexOf@21 (line 1718)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
....................................................................................................
 28.86%   29.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (318 bytes) 

                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Machine::step@214 (line 319)
                                                                    ;   {optimized virtual_call}
                      0x00007f93f5214224: test   %rax,%rax
                      0x00007f93f5214227: jne    0x00007f93f5215111  ;*ifnull
                                                                    ; - com.google.re2j.Machine::step@221 (line 322)
                      0x00007f93f521422d: mov    0x30(%rsp),%r11
                  ╭   0x00007f93f5214232: jmp    0x00007f93f52142a3
  0.07%    0.08%  │   0x00007f93f5214234: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   0x00007f93f521423a: jne    0x00007f93f5214b61  ;*invokevirtual add
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.06%  │   0x00007f93f5214240: mov    0x18(%rbx),%ecx    ;*getfield pc
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.12%    0.10%  │   0x00007f93f5214243: cmp    $0x40,%ecx
                  │   0x00007f93f5214246: jg     0x00007f93f5214fd1  ;*if_icmpgt
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.05%  │   0x00007f93f521424c: mov    $0x1,%edi
  0.06%    0.03%  │   0x00007f93f5214251: shl    %cl,%rdi           ;*lshl
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.37%    0.25%  │   0x00007f93f5214254: mov    %rdx,%r10
  0.06%    0.08%  │   0x00007f93f5214257: and    %rdi,%r10          ;*land
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.05%  │   0x00007f93f521425a: test   %r10,%r10
                  │   0x00007f93f521425d: jne    0x00007f93f5215035  ;*ifeq
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.15%  │   0x00007f93f5214263: cmp    $0x40,%ecx
                  │   0x00007f93f5214266: jge    0x00007f93f52150ad  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.04%  │   0x00007f93f521426c: or     %rdi,%rdx
  0.05%    0.06%  │   0x00007f93f521426f: mov    0x30(%rsp),%r11
  0.03%    0.03%  │   0x00007f93f5214274: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                  │                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.16%  │   0x00007f93f5214278: add    $0x18,%r8
  0.07%    0.05%  │   0x00007f93f521427c: mov    %rbx,%r10
  0.03%    0.06%  │   0x00007f93f521427f: shr    $0x3,%r10
  0.03%    0.07%  │   0x00007f93f5214283: mov    %r10d,(%r8)        ;*aastore
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.14%  │   0x00007f93f5214286: mov    %r8,%r10
  0.04%    0.02%  │   0x00007f93f5214289: add    $0x3,%r13d
  0.05%    0.07%  │   0x00007f93f521428d: mov    %r13d,0xc(%r11)    ;*putfield size
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.08%  │   0x00007f93f5214291: shr    $0x9,%r10
  0.14%    0.09%  │   0x00007f93f5214295: movabs $0x7f93f0a2e000,%r8
  0.05%    0.05%  │   0x00007f93f521429f: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.08%  ↘   0x00007f93f52142a3: mov    0x28(%rsp),%r13
  0.01%    0.08%      0x00007f93f52142a8: mov    0xac(%rsp),%r9d
  0.12%    0.10%      0x00007f93f52142b0: mov    0xc(%rsp),%r14d
  0.04%    0.03%      0x00007f93f52142b5: mov    0x38(%rsp),%rbx
  0.08%    0.05%      0x00007f93f52142ba: mov    0xa4(%rsp),%edi
  0.03%    0.02%      0x00007f93f52142c1: mov    0x44(%rsp),%r10d   ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.10%      0x00007f93f52142c6: mov    0xa8(%rsp),%r8d
  0.03%    0.05%      0x00007f93f52142ce: mov    0xb0(%rsp),%edx    ;*aload
                                                                    ; - com.google.re2j.Machine::step@219 (line 322)
  1.16%    1.16%      0x00007f93f52142d5: inc    %r10d              ;*iinc
                                                                    ; - com.google.re2j.Machine::step@230 (line 288)
  0.26%    0.27%      0x00007f93f52142d8: cmp    %r9d,%r10d
                      0x00007f93f52142db: jge    0x00007f93f52143c5
  1.08%    1.08%      0x00007f93f52142e1: mov    %r11,%rax
  0.12%    0.08%      0x00007f93f52142e4: mov    %r8d,0xa8(%rsp)
  0.97%    0.87%      0x00007f93f52142ec: mov    %edx,0xb0(%rsp)    ;*iload
                                                                    ; - com.google.re2j.Machine::step@43 (line 291)
  0.44%    0.42%      0x00007f93f52142f3: mov    0x10(%rbx,%r10,4),%ecx  ;*aaload
                                                                    ; - com.google.re2j.Machine::step@99 (line 301)
  1.01%    1.02%      0x00007f93f52142f8: mov    0xc(%r12,%rcx,8),%r8d  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@104 (line 303)
                                                                    ; implicit exception: dispatches to 0x00007f93f5215171
  1.65%    1.43%      0x00007f93f52142fd: cmp    $0x6,%r8d
                      0x00007f93f5214301: je     0x00007f93f521440d  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@109 (line 303)
  1.61%    1.72%      0x00007f93f5214307: cmp    $0xa,%r8d
                      0x00007f93f521430b: je     0x00007f93f5213ebf  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.90%    0.77%      0x00007f93f5214311: cmp    $0xb,%r8d
                      0x00007f93f5214315: je     0x00007f93f5214465  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.73%    1.73%      0x00007f93f521431b: mov    0x1c(%r12,%rcx,8),%r11d  ;*getfield f0
                                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.10%    0.06%      0x00007f93f5214320: cmp    $0x9,%r8d
                   ╭  0x00007f93f5214324: jne    0x00007f93f5214339  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.11%    0.12%   │  0x00007f93f5214326: cmp    0x18(%rsp),%r11d
                   │  0x00007f93f521432b: je     0x00007f93f5214402  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   │                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.13%    0.11%   │  0x00007f93f5214331: xor    %r11d,%r11d
  0.35%    0.35%   │  0x00007f93f5214334: jmpq   0x00007f93f5213e13
  0.84%    0.68%   ↘  0x00007f93f5214339: cmp    $0xc,%r8d
                      0x00007f93f521433d: jne    0x00007f93f5214499  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.30%    1.40%      0x00007f93f5214343: cmp    0x18(%rsp),%r11d
                      0x00007f93f5214348: je     0x00007f93f52143f7  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.21%    1.11%      0x00007f93f521434e: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield f1
                                                                    ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.09%    0.06%      0x00007f93f5214353: cmp    0x18(%rsp),%r11d
                      0x00007f93f5214358: je     0x00007f93f52143f7  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.74%    1.71%      0x00007f93f521435e: mov    0x24(%r12,%rcx,8),%ebp  ;*getfield f2
                                                                    ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.32%    0.27%      0x00007f93f5214363: cmp    0x18(%rsp),%ebp
                      0x00007f93f5214367: je     0x00007f93f52144cd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  1.77%    1.95%      0x00007f93f521436d: mov    0x28(%r12,%rcx,8),%ebp  ;*getfield f3
                                                                    ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
  0.03%    0.02%      0x00007f93f5214372: cmp    0x18(%rsp),%ebp
                      0x00007f93f5214376: jne    0x00007f93f5213e10  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 318)
                      0x00007f93f521437c: mov    $0xffffff65,%esi
                      0x00007f93f5214381: mov    %r10d,0xa4(%rsp)
                      0x00007f93f5214389: mov    %ecx,0xac(%rsp)
                      0x00007f93f5214390: mov    %r13,0x28(%rsp)
                      0x00007f93f5214395: mov    %rax,0x30(%rsp)
....................................................................................................
 21.28%   20.70%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 512 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007f93f521e840: mov    0x8(%rsi),%r10d
                            0x00007f93f521e844: shl    $0x3,%r10
                            0x00007f93f521e848: cmp    %r10,%rax
                            0x00007f93f521e84b: jne    0x00007f93f5045e20  ;   {runtime_call}
                            0x00007f93f521e851: data16 xchg %ax,%ax
                            0x00007f93f521e854: nopl   0x0(%rax,%rax,1)
                            0x00007f93f521e85c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.21%    0.08%            0x00007f93f521e860: mov    %eax,-0x14000(%rsp)
  0.22%    0.10%            0x00007f93f521e867: push   %rbp
  0.04%    0.04%            0x00007f93f521e868: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.15%    0.09%            0x00007f93f521e86c: vmovd  %r9d,%xmm4
  0.14%    0.12%            0x00007f93f521e871: vmovq  %r8,%xmm3
  0.03%    0.01%            0x00007f93f521e876: vmovq  %rsi,%xmm2
  0.11%    0.07%            0x00007f93f521e87b: mov    %ecx,%r13d
  0.06%    0.07%            0x00007f93f521e87e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.13%    0.08%            0x00007f93f521e881: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f93f521f185
  0.04%    0.01%            0x00007f93f521e885: cmp    $0x40,%ecx
                            0x00007f93f521e888: jg     0x00007f93f521ed95  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.06%    0.10%            0x00007f93f521e88e: mov    $0x1,%esi
  0.02%    0.05%            0x00007f93f521e893: mov    $0x1,%r9d
  0.18%    0.17%            0x00007f93f521e899: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.16%    0.20%            0x00007f93f521e89c: mov    %r11,%r10
  0.14%    0.17%            0x00007f93f521e89f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.03%    0.02%            0x00007f93f521e8a2: test   %r10,%r10
                  ╭         0x00007f93f521e8a5: jne    0x00007f93f521ebc4  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.08%    0.08%  │         0x00007f93f521e8ab: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.03%  │   ↗     0x00007f93f521e8ad: test   %r10,%r10
                  │   │     0x00007f93f521e8b0: jne    0x00007f93f521edc9  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.16%    0.12%  │   │     0x00007f93f521e8b6: cmp    $0x40,%ecx
                  │   │     0x00007f93f521e8b9: jge    0x00007f93f521edf9  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%  │   │     0x00007f93f521e8bf: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.13%    0.11%  │   │     0x00007f93f521e8c3: vmovq  %xmm2,%r10
  0.03%    0.05%  │   │     0x00007f93f521e8c8: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.17%    0.18%  │   │     0x00007f93f521e8cc: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.02%  │   │     0x00007f93f521e8cf: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.14%    0.12%  │   │     0x00007f93f521e8d3: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f93f521f199
  0.08%    0.07%  │   │     0x00007f93f521e8d8: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f93f521e8df: jne    0x00007f93f521ec79
  0.18%    0.21%  │   │     0x00007f93f521e8e5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%  │   │     0x00007f93f521e8e9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.13%  │   │     0x00007f93f521e8ed: cmp    $0x40,%ecx
                  │   │     0x00007f93f521e8f0: jg     0x00007f93f521ee2d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.10%    0.09%  │   │     0x00007f93f521e8f6: mov    $0x1,%r10d
  0.11%    0.18%  │   │     0x00007f93f521e8fc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.33%    0.37%  │   │     0x00007f93f521e8ff: mov    %r9,%r8
  0.12%    0.17%  │   │     0x00007f93f521e902: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%  │   │     0x00007f93f521e905: test   %r8,%r8
                  │╭  │     0x00007f93f521e908: jne    0x00007f93f521ebce  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.16%    0.12%  ││  │     0x00007f93f521e90e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.08%  ││  │↗    0x00007f93f521e910: test   %r8,%r8
                  ││  ││    0x00007f93f521e913: jne    0x00007f93f521ee69  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.16%    0.24%  ││  ││    0x00007f93f521e919: cmp    $0x40,%ecx
                  ││  ││    0x00007f93f521e91c: jge    0x00007f93f521ee9d  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%  ││  ││    0x00007f93f521e922: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.11%  ││  ││    0x00007f93f521e925: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.07%  ││  ││    0x00007f93f521e929: mov    0x88(%rsp),%r8d
  0.13%    0.20%  ││  ││    0x00007f93f521e931: test   %r8d,%r8d
                  ││  ││    0x00007f93f521e934: jne    0x00007f93f521eedd  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%  ││  ││    0x00007f93f521e93a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.15%  ││  ││    0x00007f93f521e93d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.10%  ││  ││    0x00007f93f521e940: mov    %ecx,%edi
  0.16%    0.19%  ││  ││    0x00007f93f521e942: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.02%  ││  ││    0x00007f93f521e944: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.14%    0.12%  ││  ││    0x00007f93f521e947: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f93f521f1c1
  0.08%    0.10%  ││  ││    0x00007f93f521e94c: cmp    %r10d,%ecx
                  ││  ││    0x00007f93f521e94f: jae    0x00007f93f521ebfd
  0.18%    0.29%  ││  ││    0x00007f93f521e955: vmovd  %edi,%xmm0
  0.01%    0.01%  ││  ││    0x00007f93f521e959: mov    %ebx,%edi
  0.10%    0.15%  ││  ││    0x00007f93f521e95b: mov    %ecx,%eax
  0.05%    0.07%  ││  ││    0x00007f93f521e95d: mov    %r11,%rcx
  0.21%    0.18%  ││  ││    0x00007f93f521e960: mov    0x88(%rsp),%r11d
           0.01%  ││  ││    0x00007f93f521e968: mov    0x8(%r12,%rbx,8),%r8d
  0.12%    0.13%  ││  ││    0x00007f93f521e96d: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f93f521e974: jne    0x00007f93f521eca9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.07%  ││  ││    0x00007f93f521e97a: vmovq  %xmm2,%r11
  0.16%    0.18%  ││  ││    0x00007f93f521e97f: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.07%    0.06%  ││  ││    0x00007f93f521e983: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.09%  ││  ││    0x00007f93f521e987: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.07%  ││  ││    0x00007f93f521e98b: lea    0x10(%r11,%rax,4),%r8
  0.20%    0.18%  ││  ││    0x00007f93f521e990: mov    %ecx,(%r8)
  0.05%    0.05%  ││  ││    0x00007f93f521e993: mov    %r8,%rcx
  0.05%    0.09%  ││  ││    0x00007f93f521e996: shr    $0x9,%rcx
  0.03%    0.03%  ││  ││    0x00007f93f521e99a: movabs $0x7f93f0a2e000,%r8
  0.13%    0.05%  ││  ││    0x00007f93f521e9a4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%  ││  ││    0x00007f93f521e9a8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f93f521f1dd
  0.15%    0.13%  ││  ││    0x00007f93f521e9ad: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f93f521e9b3: jne    0x00007f93f521ece9
  0.09%    0.08%  ││  ││    0x00007f93f521e9b9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.16%    0.14%  ││  ││    0x00007f93f521e9bd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.14%    0.15%  ││  ││    0x00007f93f521e9c1: vmovd  %ecx,%xmm1
  0.14%    0.06%  ││  ││    0x00007f93f521e9c5: cmp    $0x40,%ecx
                  ││  ││    0x00007f93f521e9c8: jg     0x00007f93f521ef19  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.04%  ││  ││    0x00007f93f521e9ce: mov    $0x1,%ebx
  0.10%    0.15%  ││  ││    0x00007f93f521e9d3: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.26%    0.29%  ││  ││    0x00007f93f521e9d6: mov    %r9,%rcx
  0.07%    0.09%  ││  ││    0x00007f93f521e9d9: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.02%  ││  ││    0x00007f93f521e9dc: test   %rcx,%rcx
                  ││╭ ││    0x00007f93f521e9df: jne    0x00007f93f521ebd8  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.13%  │││ ││    0x00007f93f521e9e5: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.05%  │││ ││↗   0x00007f93f521e9e7: test   %rcx,%rcx
                  │││ │││   0x00007f93f521e9ea: jne    0x00007f93f521ef55  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.13%    0.11%  │││ │││   0x00007f93f521e9f0: vmovd  %xmm1,%ecx
  0.01%    0.02%  │││ │││   0x00007f93f521e9f4: cmp    $0x40,%ecx
                  │││ │││   0x00007f93f521e9f7: jge    0x00007f93f521ef89  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.12%  │││ │││   0x00007f93f521e9fd: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.05%  │││ │││   0x00007f93f521ea00: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.17%  │││ │││   0x00007f93f521ea04: mov    %eax,%ebx
  0.00%    0.05%  │││ │││   0x00007f93f521ea06: add    $0x2,%ebx
  0.19%    0.18%  │││ │││   0x00007f93f521ea09: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.09%  │││ │││   0x00007f93f521ea0c: mov    %eax,%ebx
  0.15%    0.20%  │││ │││   0x00007f93f521ea0e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.01%  │││ │││   0x00007f93f521ea11: cmp    %r10d,%ebx
                  │││ │││   0x00007f93f521ea14: jae    0x00007f93f521ec3d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.14%    0.11%  │││ │││   0x00007f93f521ea1a: vmovq  %xmm2,%r10
  0.06%    0.08%  │││ │││   0x00007f93f521ea1f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.17%    0.15%  │││ │││   0x00007f93f521ea23: mov    %r14,%rcx
  0.03%    0.03%  │││ │││   0x00007f93f521ea26: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.10%    0.15%  │││ │││   0x00007f93f521ea2a: movslq %eax,%r10
  0.03%    0.07%  │││ │││   0x00007f93f521ea2d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.11%    0.16%  │││ │││   0x00007f93f521ea31: mov    %rdi,%r10
  0.02%    0.03%  │││ │││   0x00007f93f521ea34: add    $0x14,%r10
  0.15%    0.09%  │││ │││   0x00007f93f521ea38: mov    %ecx,(%r10)
  0.06%    0.07%  │││ │││   0x00007f93f521ea3b: shr    $0x9,%r10
  0.11%    0.07%  │││ │││   0x00007f93f521ea3f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.08%  │││ │││   0x00007f93f521ea43: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f93f521f205
  0.16%    0.13%  │││ │││   0x00007f93f521ea48: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f93f521ea4e: jne    0x00007f93f521ed15
  0.03%    0.09%  │││ │││   0x00007f93f521ea54: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.13%  │││ │││   0x00007f93f521ea58: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.07%  │││ │││   0x00007f93f521ea5c: vmovd  %ecx,%xmm1
  0.15%    0.16%  │││ │││   0x00007f93f521ea60: cmp    $0x40,%ecx
                  │││ │││   0x00007f93f521ea63: jg     0x00007f93f521efc5  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.08%  │││ │││   0x00007f93f521ea69: mov    $0x1,%r10d
  0.16%    0.19%  │││ │││   0x00007f93f521ea6f: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.36%  │││ │││   0x00007f93f521ea72: mov    %r9,%rcx
  0.12%    0.13%  │││ │││   0x00007f93f521ea75: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.01%  │││ │││   0x00007f93f521ea78: test   %rcx,%rcx
                  │││╭│││   0x00007f93f521ea7b: jne    0x00007f93f521ebe2  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.16%    0.11%  │││││││   0x00007f93f521ea81: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.05%  │││││││↗  0x00007f93f521ea83: test   %rcx,%rcx
                  ││││││││  0x00007f93f521ea86: jne    0x00007f93f521f001  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.13%    0.11%  ││││││││  0x00007f93f521ea8c: vmovd  %xmm1,%ecx
  0.03%    0.05%  ││││││││  0x00007f93f521ea90: cmp    $0x40,%ecx
                  ││││││││  0x00007f93f521ea93: jge    0x00007f93f521f035  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.15%    0.13%  ││││││││  0x00007f93f521ea99: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.10%  ││││││││  0x00007f93f521ea9c: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.13%    0.15%  ││││││││  0x00007f93f521eaa0: vmovq  %xmm2,%r10
  0.03%    0.05%  ││││││││  0x00007f93f521eaa5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.14%    0.18%  ││││││││  0x00007f93f521eaa9: mov    %rdi,%r10
  0.06%    0.06%  ││││││││  0x00007f93f521eaac: add    $0x18,%r10
  0.08%    0.09%  ││││││││  0x00007f93f521eab0: mov    %r14,%rcx
  0.05%    0.04%  ││││││││  0x00007f93f521eab3: shr    $0x3,%rcx
  0.16%    0.11%  ││││││││  0x00007f93f521eab7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.09%  ││││││││  0x00007f93f521eaba: mov    %eax,%ecx
  0.13%    0.11%  ││││││││  0x00007f93f521eabc: add    $0x3,%ecx
  0.03%    0.01%  ││││││││  0x00007f93f521eabf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.12%    0.13%  ││││││││  0x00007f93f521eac2: shr    $0x9,%r10
  0.05%    0.04%  ││││││││  0x00007f93f521eac6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.16%  ││││││││  0x00007f93f521eaca: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f93f521f22d
  0.03%    0.05%  ││││││││  0x00007f93f521eacf: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f93f521ead5: jne    0x00007f93f521ed41
  0.13%    0.14%  ││││││││  0x00007f93f521eadb: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.08%  ││││││││  0x00007f93f521eadf: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.14%  ││││││││  0x00007f93f521eae3: vmovd  %ecx,%xmm0
  0.01%    0.04%  ││││││││  0x00007f93f521eae7: cmp    $0x40,%ecx
                  ││││││││  0x00007f93f521eaea: jg     0x00007f93f521f071  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.12%    0.09%  ││││││││  0x00007f93f521eaf0: mov    $0x1,%r10d
  0.01%    0.05%  ││││││││  0x00007f93f521eaf6: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.27%    0.32%  ││││││││  0x00007f93f521eaf9: mov    %r9,%rcx
  0.06%    0.03%  ││││││││  0x00007f93f521eafc: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.05%  ││││││││  0x00007f93f521eaff: test   %rcx,%rcx
                  ││││││││  0x00007f93f521eb02: jne    0x00007f93f521ebec  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  ││││││││  0x00007f93f521eb08: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.13%  ││││││││  0x00007f93f521eb0a: test   %rcx,%rcx
                  ││││││││  0x00007f93f521eb0d: jne    0x00007f93f521f0ad  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.09%  ││││││││  0x00007f93f521eb13: vmovd  %xmm0,%ecx
  0.11%    0.15%  ││││││││  0x00007f93f521eb17: cmp    $0x40,%ecx
                  ││││││││  0x00007f93f521eb1a: jge    0x00007f93f521f0e1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
           0.07%  ││││││││  0x00007f93f521eb20: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.12%    0.19%  ││││││││  0x00007f93f521eb23: vmovq  %xmm2,%rcx
  0.07%    0.11%  ││││││││  0x00007f93f521eb28: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.17%    0.28%  ││││││││  0x00007f93f521eb2b: mov    %rdi,%rcx
  0.05%    0.05%  ││││││││  0x00007f93f521eb2e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.11%  ││││││││  0x00007f93f521eb32: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.08%  ││││││││  0x00007f93f521eb35: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.15%    0.14%  ││││││││  0x00007f93f521eb39: mov    %r14,%r10
  0.02%    0.04%  ││││││││  0x00007f93f521eb3c: shr    $0x3,%r10
  0.11%    0.09%  ││││││││  0x00007f93f521eb40: mov    %r10d,(%rcx)
  0.06%    0.06%  ││││││││  0x00007f93f521eb43: mov    %rcx,%r10
  0.12%    0.15%  ││││││││  0x00007f93f521eb46: shr    $0x9,%r10
  0.04%    0.07%  ││││││││  0x00007f93f521eb4a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.21%  ││││││││  0x00007f93f521eb4e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f93f521f255
  0.09%    0.08%  ││││││││  0x00007f93f521eb53: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f93f521eb5a: jne    0x00007f93f521ed6d
  0.11%    0.14%  ││││││││  0x00007f93f521eb60: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.02%  ││││││││  0x00007f93f521eb64: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.13%    0.12%  ││││││││  0x00007f93f521eb68: cmp    $0x40,%ecx
                  ││││││││  0x00007f93f521eb6b: jg     0x00007f93f521f11d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.06%  ││││││││  0x00007f93f521eb71: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.28%    0.35%  ││││││││  0x00007f93f521eb74: mov    %r9,%rbx
  0.04%    0.05%  ││││││││  0x00007f93f521eb77: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.10%  ││││││││  0x00007f93f521eb7a: test   %rbx,%rbx
                  ││││││││  0x00007f93f521eb7d: jne    0x00007f93f521ebf6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.05%  ││││││││  0x00007f93f521eb7f: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.17%    0.21%  ││││││││  0x00007f93f521eb81: test   %rbx,%rbx
                  ││││││││  0x00007f93f521eb84: jne    0x00007f93f521f141  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.08%  ││││││││  0x00007f93f521eb8a: cmp    $0x40,%ecx
                  ││││││││  0x00007f93f521eb8d: jge    0x00007f93f521f161  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.18%  ││││││││  0x00007f93f521eb93: or     %rsi,%r9
  0.02%    0.04%  ││││││││  0x00007f93f521eb96: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.10%  ││││││││  0x00007f93f521eb9a: add    $0x20,%rdi
  0.04%    0.05%  ││││││││  0x00007f93f521eb9e: shr    $0x3,%r10
  0.11%    0.08%  ││││││││  0x00007f93f521eba2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.09%  ││││││││  0x00007f93f521eba5: mov    %rdi,%r10
  0.16%    0.10%  ││││││││  0x00007f93f521eba8: add    $0x5,%eax
  0.06%    0.06%  ││││││││  0x00007f93f521ebab: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.21%  ││││││││  0x00007f93f521ebae: shr    $0x9,%r10
  0.05%    0.09%  ││││││││  0x00007f93f521ebb2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.25%  ││││││││  0x00007f93f521ebb6: xor    %eax,%eax
  0.02%    0.05%  ││││││││  0x00007f93f521ebb8: add    $0x70,%rsp
  0.10%    0.18%  ││││││││  0x00007f93f521ebbc: pop    %rbp
  0.04%    0.04%  ││││││││  0x00007f93f521ebbd: test   %eax,0x15fae43d(%rip)        # 0x00007f940b1cd000
                  ││││││││                                                ;   {poll_return}
  0.08%    0.21%  ││││││││  0x00007f93f521ebc3: retq   
                  ↘│││││││  0x00007f93f521ebc4: mov    $0x1,%ebp
                   │││╰│││  0x00007f93f521ebc9: jmpq   0x00007f93f521e8ad
                   ↘││ │││  0x00007f93f521ebce: mov    $0x1,%ebp
                    ││ ╰││  0x00007f93f521ebd3: jmpq   0x00007f93f521e910
                    ↘│  ││  0x00007f93f521ebd8: mov    $0x1,%ebp
                     │  ╰│  0x00007f93f521ebdd: jmpq   0x00007f93f521e9e7
                     ↘   │  0x00007f93f521ebe2: mov    $0x1,%ebp
                         ╰  0x00007f93f521ebe7: jmpq   0x00007f93f521ea83
                            0x00007f93f521ebec: mov    $0x1,%ebp
....................................................................................................
 17.51%   19.36%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (790 bytes) 

                     0x00007f93f5213ea0: mov    %r11d,(%rdi)
                     0x00007f93f5213ea3: shr    $0x9,%r10
                     0x00007f93f5213ea7: movabs $0x7f93f0a2e000,%r11
                     0x00007f93f5213eb1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f5213eb5: mov    0x30(%rsp),%r11
                     0x00007f93f5213eba: jmpq   0x00007f93f52142a3
  0.12%    0.11%     0x00007f93f5213ebf: mov    0x2c(%r12,%rcx,8),%r11d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@199 (line 319)
  0.20%    0.07%     0x00007f93f5213ec4: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f93f5215181
  1.09%    0.95%     0x00007f93f5213ec9: lea    (%r12,%r11,8),%r8
                     0x00007f93f5213ecd: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007f93f5213ed3: je     0x00007f93f5213f7e
  0.09%    0.04%  │  0x00007f93f5213ed9: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f93f5213edf: jne    0x00007f93f5214a7d  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.08%    0.03%  │  0x00007f93f5213ee5: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f93f5213ee9: mov    %rax,%r11
                  │  0x00007f93f5213eec: mov    0x10(%rax),%rdx    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │                                                ; implicit exception: dispatches to 0x00007f93f5215249
  0.03%    0.00%  │  0x00007f93f5213ef0: cmp    $0x40,%ecx
                  │  0x00007f93f5213ef3: jg     0x00007f93f5214e61  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.06%    0.01%  │  0x00007f93f5213ef9: mov    $0x1,%esi
  0.00%           │  0x00007f93f5213efe: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.11%    0.08%  │  0x00007f93f5213f01: mov    %rdx,%rax
                  │  0x00007f93f5213f04: and    %rsi,%rax          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f93f5213f07: test   %rax,%rax
                  │  0x00007f93f5213f0a: jne    0x00007f93f5214ed9  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.06%    0.03%  │  0x00007f93f5213f10: cmp    $0x40,%ecx
                  │  0x00007f93f5213f13: jge    0x00007f93f5214f59  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.01%  │  0x00007f93f5213f19: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%           │  0x00007f93f5213f1d: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
           0.01%  │  0x00007f93f5213f21: or     %rdx,%rsi
  0.04%    0.01%  │  0x00007f93f5213f24: mov    %rsi,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.02%  │  0x00007f93f5213f28: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.01%  │  0x00007f93f5213f2c: mov    %ebp,%esi
                  │  0x00007f93f5213f2e: inc    %esi
  0.04%    0.07%  │  0x00007f93f5213f30: mov    %esi,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.04%    0.02%  │  0x00007f93f5213f34: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f93f521525d
  0.02%    0.01%  │  0x00007f93f5213f39: cmp    %esi,%ebp
                  │  0x00007f93f5213f3b: jae    0x00007f93f5214a01
  0.04%    0.03%  │  0x00007f93f5213f41: mov    0x8(%r12,%rcx,8),%esi
  0.02%    0.01%  │  0x00007f93f5213f46: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f93f5213f4c: jne    0x00007f93f5214ae5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.03%    0.01%  │  0x00007f93f5213f52: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
                  │  0x00007f93f5213f56: lea    0x10(%rcx,%rbp,4),%rcx
  0.06%    0.01%  │  0x00007f93f5213f5b: mov    %r8,%rdx
  0.02%    0.01%  │  0x00007f93f5213f5e: shr    $0x3,%rdx
  0.02%    0.00%  │  0x00007f93f5213f62: mov    %edx,(%rcx)
  0.26%    0.14%  │  0x00007f93f5213f64: mov    %rcx,%r8
  0.00%           │  0x00007f93f5213f67: shr    $0x9,%r8
                  │  0x00007f93f5213f6b: movabs $0x7f93f0a2e000,%rcx
  0.01%    0.01%  │  0x00007f93f5213f75: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.13%    0.11%  │  0x00007f93f5213f79: jmpq   0x00007f93f52142c6  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.24%    0.35%  ↘  0x00007f93f5213f7e: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f5213f82: mov    %rax,%r11
  0.02%    0.03%     0x00007f93f5213f85: mov    0x10(%rax),%rsi    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f93f52151b5
                     0x00007f93f5213f89: cmp    $0x40,%ecx
                     0x00007f93f5213f8c: jg     0x00007f93f52147c1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.34%     0x00007f93f5213f92: mov    $0x1,%edx
                     0x00007f93f5213f97: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.65%    0.68%     0x00007f93f5213f9a: mov    %rsi,%rax
  0.00%              0x00007f93f5213f9d: and    %rdx,%rax
  0.01%    0.01%     0x00007f93f5213fa0: test   %rax,%rax
                     0x00007f93f5213fa3: jne    0x00007f93f52142c6  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.09%     0x00007f93f5213fa9: cmp    $0x40,%ecx
                     0x00007f93f5213fac: jge    0x00007f93f5214831  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.19%     0x00007f93f5213fb2: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f5213fb6: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%     0x00007f93f5213fba: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.07%     0x00007f93f5213fbd: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.23%     0x00007f93f5213fc1: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f93f52151c9
  0.25%    0.30%     0x00007f93f5213fc6: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f93f5213fcc: jne    0x00007f93f52145a5
  0.30%    0.27%     0x00007f93f5213fd2: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%              0x00007f93f5213fd6: mov    0x18(%rax),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.27%     0x00007f93f5213fd9: cmp    $0x40,%ecx
                     0x00007f93f5213fdc: jg     0x00007f93f521489d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.27%    0.25%     0x00007f93f5213fe2: mov    $0x1,%esi
  0.02%    0.03%     0x00007f93f5213fe7: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.53%    0.60%     0x00007f93f5213fea: mov    %rdx,%rbp
  0.00%    0.00%     0x00007f93f5213fed: and    %rsi,%rbp          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%     0x00007f93f5213ff0: test   %rbp,%rbp
                     0x00007f93f5213ff3: jne    0x00007f93f5214911  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.24%     0x00007f93f5213ff9: cmp    $0x40,%ecx
                     0x00007f93f5213ffc: jge    0x00007f93f521498d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.03%     0x00007f93f5214002: mov    %r10d,0x44(%rsp)
  0.01%              0x00007f93f5214007: mov    %edi,0xa4(%rsp)
                     0x00007f93f521400e: mov    %rbx,0x38(%rsp)
  0.27%    0.24%     0x00007f93f5214013: mov    %r14d,0xc(%rsp)
  0.10%    0.00%     0x00007f93f5214018: mov    %r9d,0xac(%rsp)
  0.01%    0.01%     0x00007f93f5214020: mov    %r11,0x30(%rsp)
  0.00%    0.00%     0x00007f93f5214025: mov    %r13,0x28(%rsp)
  0.23%    0.29%     0x00007f93f521402a: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.08%     0x00007f93f521402d: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%     0x00007f93f5214031: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f5214035: mov    %r10d,%r14d
  0.27%    0.17%     0x00007f93f5214038: mov    0xc(%r11),%r10d    ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%              0x00007f93f521403c: mov    %r10d,%r13d
  0.01%    0.01%     0x00007f93f521403f: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f5214042: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.11%     0x00007f93f5214046: vmovd  %r10d,%xmm1
  0.06%    0.01%     0x00007f93f521404b: mov    %r14d,%r10d
  0.01%    0.02%     0x00007f93f521404e: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007f93f52151dd
  0.01%    0.02%     0x00007f93f5214053: mov    %r13d,%r10d
  0.17%    0.13%     0x00007f93f5214056: cmp    %ebx,%r10d
                     0x00007f93f5214059: jae    0x00007f93f521455d
  0.05%    0.02%     0x00007f93f521405f: mov    %r14d,%r10d
  0.00%              0x00007f93f5214062: mov    0x8(%r12,%r10,8),%r10d
  0.00%    0.00%     0x00007f93f5214067: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f93f521406e: jne    0x00007f93f5214615  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.31%     0x00007f93f5214074: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.07%     0x00007f93f5214078: vmovd  %r10d,%xmm0
  0.00%    0.00%     0x00007f93f521407d: mov    %rax,%r11
  0.00%              0x00007f93f5214080: shr    $0x3,%r11          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.18%     0x00007f93f5214084: mov    %r14d,%r10d
  0.04%    0.05%     0x00007f93f5214087: lea    (%r12,%r10,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.02%     0x00007f93f521408b: mov    %r13d,%r10d
           0.00%     0x00007f93f521408e: lea    0x10(%r9,%r10,4),%r10
  0.18%    0.07%     0x00007f93f5214093: mov    %r11d,(%r10)
  0.12%    0.03%     0x00007f93f5214096: shr    $0x9,%r10
           0.01%     0x00007f93f521409a: movabs $0x7f93f0a2e000,%r11
                     0x00007f93f52140a4: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.32%    0.20%     0x00007f93f52140a8: vmovd  %xmm0,%r10d
  0.07%    0.04%     0x00007f93f52140ad: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                                                                   ; implicit exception: dispatches to 0x00007f93f52151f9
  0.00%              0x00007f93f52140b2: movslq %r13d,%r10
                     0x00007f93f52140b5: lea    (%r9,%r10,4),%r8   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.17%     0x00007f93f52140b9: mov    %r8,%rdi
  0.08%    0.09%     0x00007f93f52140bc: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%     0x00007f93f52140c0: vmovd  %xmm0,%r10d
  0.00%    0.00%     0x00007f93f52140c5: lea    (%r12,%r10,8),%r11
  0.27%    0.16%     0x00007f93f52140c9: mov    %r13d,%r10d
  0.06%    0.04%     0x00007f93f52140cc: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%              0x00007f93f52140d0: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f93f52140d6: jne    0x00007f93f5213e33  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f52140dc: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.13%     0x00007f93f52140e0: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f93f521520d
  0.12%    0.08%     0x00007f93f52140e5: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f93f52140ec: jne    0x00007f93f521475d
  0.09%    0.05%     0x00007f93f52140f2: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f52140f6: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.13%     0x00007f93f52140fa: vmovd  %r11d,%xmm0
  0.14%    0.12%     0x00007f93f52140ff: cmp    $0x40,%r11d
                     0x00007f93f5214103: jg     0x00007f93f5214d05  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f5214109: mov    $0x1,%esi
                     0x00007f93f521410e: mov    %r11d,%ecx
  0.17%    0.04%     0x00007f93f5214111: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.33%    0.24%     0x00007f93f5214114: mov    %rdx,%r11
  0.01%    0.05%     0x00007f93f5214117: and    %rsi,%r11
  0.02%    0.03%     0x00007f93f521411a: test   %r11,%r11
                     0x00007f93f521411d: jne    0x00007f93f521444a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.07%     0x00007f93f5214123: mov    %ecx,%r11d
  0.03%    0.00%     0x00007f93f5214126: cmp    $0x40,%r11d
                     0x00007f93f521412a: jge    0x00007f93f5214d45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.10%    0.07%     0x00007f93f5214130: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.01%     0x00007f93f5214133: mov    0x30(%rsp),%r11
  0.02%    0.02%     0x00007f93f5214138: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.08%     0x00007f93f521413c: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.23%     0x00007f93f521413f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f93f5215221
  0.26%    0.34%     0x00007f93f5214144: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f93f521414b: jne    0x00007f93f521478d
  0.23%    0.21%     0x00007f93f5214151: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%              0x00007f93f5214155: vmovq  %r11,%xmm0
  0.07%    0.04%     0x00007f93f521415a: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.11%    0.17%     0x00007f93f521415e: mov    %r11d,%ecx
  0.13%    0.15%     0x00007f93f5214161: cmp    $0x40,%r11d
                     0x00007f93f5214165: jg     0x00007f93f5214d81  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.12%     0x00007f93f521416b: mov    $0x1,%esi
  0.05%    0.03%     0x00007f93f5214170: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.53%    0.65%     0x00007f93f5214173: mov    %rdx,%r11
  0.02%    0.02%     0x00007f93f5214176: and    %rsi,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.03%     0x00007f93f5214179: test   %r11,%r11
                     0x00007f93f521417c: jne    0x00007f93f5214dc5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.23%     0x00007f93f5214182: mov    %ecx,%r11d
  0.06%    0.07%     0x00007f93f5214185: cmp    $0x40,%r11d
                     0x00007f93f5214189: jge    0x00007f93f5214e1d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.06%     0x00007f93f521418f: mov    0x30(%rsp),%r11
  0.02%    0.06%     0x00007f93f5214194: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.21%     0x00007f93f5214198: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.02%     0x00007f93f521419b: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.10%     0x00007f93f521419f: cmp    %ebx,%r10d
                     0x00007f93f52141a2: jae    0x00007f93f52146dd  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.02%     0x00007f93f52141a8: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.16%    0.18%     0x00007f93f52141ac: mov    %rdi,%r11
  0.03%    0.06%     0x00007f93f52141af: vmovq  %xmm0,%rcx
  0.07%    0.09%     0x00007f93f52141b4: shr    $0x3,%rcx
  0.02%    0.08%     0x00007f93f52141b8: mov    %ecx,(%rdi)
  0.14%    0.15%     0x00007f93f52141ba: shr    $0x9,%r11
  0.04%    0.03%     0x00007f93f52141be: movabs $0x7f93f0a2e000,%rcx
  0.05%    0.08%     0x00007f93f52141c8: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.05%     0x00007f93f52141cc: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f93f5215235
  0.16%    0.11%     0x00007f93f52141d1: lea    (%r12,%r10,8),%rbx
  0.04%    0.05%     0x00007f93f52141d5: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f93f52141db: jne    0x00007f93f5214234  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 282)
                     0x00007f93f52141dd: mov    0x2c(%rbx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 14.67%   13.27%  <total for region 4>

....[Hottest Regions]...............................................................................
 28.86%   29.17%         C2, level 4  com.google.re2j.Machine::match, version 538 (1333 bytes) 
 21.28%   20.70%         C2, level 4  com.google.re2j.Machine::step, version 496 (318 bytes) 
 17.51%   19.36%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 512 (867 bytes) 
 14.67%   13.27%         C2, level 4  com.google.re2j.Machine::step, version 496 (790 bytes) 
  9.58%   10.31%         C2, level 4  com.google.re2j.Machine::step, version 496 (174 bytes) 
  3.05%    2.89%         C2, level 4  com.google.re2j.Machine::step, version 496 (61 bytes) 
  1.64%    1.68%         C2, level 4  com.google.re2j.Machine::match, version 538 (83 bytes) 
  0.30%    0.30%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (73 bytes) 
  0.11%                  C2, level 4  com.google.re2j.Pattern::find, version 543 (190 bytes) 
  0.11%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 538 (218 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 543 (28 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 543 (28 bytes) 
  0.09%                  C2, level 4  com.google.re2j.Pattern::find, version 543 (58 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 543 (0 bytes) 
  0.07%    0.05%         C2, level 4  java.util.Collections::shuffle, version 568 (133 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 543 (8 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.05%    0.00%         C2, level 4  java.util.Collections::shuffle, version 568 (97 bytes) 
  2.05%    1.93%  <...other 395 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.59%   47.19%         C2, level 4  com.google.re2j.Machine::step, version 496 
 30.79%   31.02%         C2, level 4  com.google.re2j.Machine::match, version 538 
 17.51%   19.36%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 512 
  1.35%    1.09%   [kernel.kallsyms]  [unknown] 
  0.69%    0.27%         C2, level 4  com.google.re2j.Pattern::find, version 543 
  0.14%    0.06%         C2, level 4  java.util.Collections::shuffle, version 568 
  0.08%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 621 
  0.07%    0.04%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.07%    0.07%                      <unknown> 
  0.05%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.04%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.02%        libc-2.26.so  _IO_fflush 
  0.02%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.39%    0.22%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 97.81%   97.92%         C2, level 4
  1.35%    1.09%   [kernel.kallsyms]
  0.49%    0.58%           libjvm.so
  0.14%    0.27%        libc-2.26.so
  0.07%    0.07%                    
  0.07%    0.06%  libpthread-2.26.so
  0.03%    0.01%              [vdso]
  0.03%    0.00%         interpreter
  0.00%    0.00%        runtime stub
  0.00%             Unknown, level 0
  0.00%               perf-16847.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  9173.542 ± 759.013  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
