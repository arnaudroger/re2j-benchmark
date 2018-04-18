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
# Warmup Iteration   1: 3992.107 ops/s
# Warmup Iteration   2: 9166.989 ops/s
# Warmup Iteration   3: 9167.699 ops/s
# Warmup Iteration   4: 9162.468 ops/s
# Warmup Iteration   5: 9170.087 ops/s
# Warmup Iteration   6: 9170.732 ops/s
# Warmup Iteration   7: 9167.928 ops/s
# Warmup Iteration   8: 9114.399 ops/s
# Warmup Iteration   9: 9133.407 ops/s
# Warmup Iteration  10: 9168.230 ops/s
# Warmup Iteration  11: 9171.403 ops/s
# Warmup Iteration  12: 9180.908 ops/s
# Warmup Iteration  13: 8790.727 ops/s
# Warmup Iteration  14: 9190.359 ops/s
# Warmup Iteration  15: 9199.664 ops/s
# Warmup Iteration  16: 9194.265 ops/s
# Warmup Iteration  17: 8972.361 ops/s
# Warmup Iteration  18: 8958.733 ops/s
# Warmup Iteration  19: 9061.791 ops/s
# Warmup Iteration  20: 9146.636 ops/s
Iteration   1: 9147.481 ops/s
Iteration   2: 9046.012 ops/s
Iteration   3: 9010.291 ops/s
Iteration   4: 8962.451 ops/s
Iteration   5: 9143.785 ops/s
Iteration   6: 9144.304 ops/s
Iteration   7: 9146.428 ops/s
Iteration   8: 9146.333 ops/s
Iteration   9: 9157.017 ops/s
Iteration  10: 9206.084 ops/s
Iteration  11: 9207.274 ops/s
Iteration  12: 9172.867 ops/s
Iteration  13: 9206.729 ops/s
Iteration  14: 9207.948 ops/s
Iteration  15: 9208.822 ops/s
Iteration  16: 9209.222 ops/s
Iteration  17: 7426.632 ops/s
Iteration  18: 5100.134 ops/s
Iteration  19: 5101.239 ops/s
Iteration  20: 6012.575 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  8498.181 ±(99.9%) 1214.982 ops/s [Average]
  (min, avg, max) = (5100.134, 8498.181, 9209.222), stdev = 1399.175
  CI (99.9%): [7283.200, 9713.163] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 193333 total address lines.
Perf output processed (skipped 23.249 seconds):
 Column 1: cycles (20408 events)
 Column 2: instructions (20381 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 524 (1195 bytes) 

                                               0x00007f6ad9237f51: jl     0x00007f6ad9238845  ;*ifge
                                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                                               0x00007f6ad9237f57: mov    $0x5,%r9d          ;*iload_1
                                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
                                               0x00007f6ad9237f5d: cmp    $0xa,%r10d
                                               0x00007f6ad9237f61: je     0x00007f6ad923886b  ;*iload_0
                                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%                               0x00007f6ad9237f67: mov    %r10d,%r8d
                                               0x00007f6ad9237f6a: add    $0xffffffbf,%r8d
                                               0x00007f6ad9237f6e: cmp    $0x1a,%r8d
                  ╭                            0x00007f6ad9237f72: jb     0x00007f6ad9237f85  ;*if_icmple
                  │                                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                  │                            0x00007f6ad9237f74: mov    %r10d,%r11d
           0.01%  │                            0x00007f6ad9237f77: add    $0xffffff9f,%r11d
                  │                            0x00007f6ad9237f7b: cmp    $0x1a,%r11d
                  │                            0x00007f6ad9237f7f: jae    0x00007f6ad923887a  ;*iconst_1
                  │                                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                            0x00007f6ad9237f85: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                        0x00007f6ad9237f89: mov    %r9d,0x38(%rsp)    ;*iload_2
                                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                             ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                               0x00007f6ad9237f8e: mov    0x40(%rsp),%r11
                                               0x00007f6ad9237f93: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                                             ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%    0.00%                               0x00007f6ad9237f98: mov    0x48(%rsp),%r11d
  0.01%                                        0x00007f6ad9237f9d: and    $0x4,%r11d         ;*iand
                                                                                             ; - com.google.re2j.Machine::match@147 (line 212)
                                               0x00007f6ad9237fa1: mov    %r11d,0x4c(%rsp)
                                               0x00007f6ad9237fa6: mov    %rcx,%r11
                                               0x00007f6ad9237fa9: shl    $0x3,%r11          ;*getfield q1
                                                                                             ; - com.google.re2j.Machine::match@53 (line 192)
                                               0x00007f6ad9237fad: mov    %r11,0x20(%rsp)
           0.00%                               0x00007f6ad9237fb2: xor    %eax,%eax
                                               0x00007f6ad9237fb4: mov    $0x1,%r11d
                                               0x00007f6ad9237fba: xor    %ecx,%ecx
                                               0x00007f6ad9237fbc: mov    %r11d,0x14(%rsp)
                                               0x00007f6ad9237fc1: mov    %ecx,0x64(%rsp)
                   ╭                           0x00007f6ad9237fc5: jmpq   0x00007f6ad9238208  ;*ifeq
                   │                                                                         ; - com.google.re2j.Machine::match@286 (line 240)
  0.28%    0.17%   │               ↗           0x00007f6ad9237fca: mov    %rdi,%r8
  0.03%    0.01%   │               │           0x00007f6ad9237fcd: shl    $0x3,%r8           ;*getfield matchcap
                   │               │                                                         ; - com.google.re2j.Machine::match@307 (line 243)
  0.02%    0.02%   │               │           0x00007f6ad9237fd1: mov    %r10,%rsi
  0.01%    0.01%   │               │           0x00007f6ad9237fd4: mov    0x18(%rsp),%rdx
  0.17%    0.21%   │               │           0x00007f6ad9237fd9: mov    0x64(%rsp),%ecx
  0.01%    0.02%   │               │           0x00007f6ad9237fdd: mov    0x38(%rsp),%r9d
  0.06%    0.05%   │               │           0x00007f6ad9237fe2: xor    %edi,%edi
  0.02%    0.00%   │               │           0x00007f6ad9237fe4: mov    0x40(%rsp),%r10
  0.26%    0.24%   │               │           0x00007f6ad9237fe9: mov    %r10,(%rsp)
  0.04%    0.05%   │               │           0x00007f6ad9237fed: xchg   %ax,%ax
  0.04%    0.02%   │               │           0x00007f6ad9237fef: callq  0x00007f6ad9046020  ; OopMap{[24]=Oop [32]=Oop [48]=NarrowOop [64]=Oop [80]=Oop off=628}
                   │               │                                                         ;*invokevirtual add
                   │               │                                                         ; - com.google.re2j.Machine::match@314 (line 243)
                   │               │                                                         ;   {optimized virtual_call}
  0.06%    0.02%   │               │↗          0x00007f6ad9237ff4: mov    0x58(%rsp),%r10d
  0.20%    0.20%   │               ││          0x00007f6ad9237ff9: test   %r10d,%r10d
                   │╭              ││          0x00007f6ad9237ffc: jl     0x00007f6ad9238377  ;*ifge
                   ││              ││                                                        ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││              ││                                                        ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.12%   ││              ││          0x00007f6ad9238002: xor    %r11d,%r11d        ;*iload_0
                   ││              ││                                                        ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││              ││                                                        ; - com.google.re2j.Machine::match@322 (line 245)
  0.24%    0.29%   ││              ││↗         0x00007f6ad9238005: cmp    $0xa,%r10d
                   ││╭             │││         0x00007f6ad9238009: je     0x00007f6ad92383f3  ;*iload_1
                   │││             │││                                                       ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││             │││                                                       ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.09%   │││             │││     ↗   0x00007f6ad923800f: mov    0x2c(%rsp),%r9d
  0.09%    0.04%   │││             │││     │   0x00007f6ad9238014: test   %r9d,%r9d
                   │││╭            │││     │   0x00007f6ad9238017: jl     0x00007f6ad9238382  ;*iload_1
                   ││││            │││     │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││            │││     │                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.15%   ││││            │││↗    │   0x00007f6ad923801d: cmp    $0xa,%r9d
                   ││││╭           ││││    │   0x00007f6ad9238021: je     0x00007f6ad92383fc  ;*iload_0
                   │││││           ││││    │                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││││           ││││    │                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.26%    0.24%   │││││           ││││    │↗  0x00007f6ad9238027: mov    0x58(%rsp),%ecx
  0.15%    0.11%   │││││           ││││    ││  0x00007f6ad923802b: add    $0xffffffbf,%ecx
  0.04%    0.03%   │││││           ││││    ││  0x00007f6ad923802e: cmp    $0x1a,%ecx
                   │││││╭          ││││    ││  0x00007f6ad9238031: jb     0x00007f6ad9238046  ;*if_icmple
                   ││││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││          ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.14%   ││││││          ││││    ││  0x00007f6ad9238033: mov    0x58(%rsp),%r8d
  0.23%    0.30%   ││││││          ││││    ││  0x00007f6ad9238038: add    $0xffffff9f,%r8d
  0.16%    0.16%   ││││││          ││││    ││  0x00007f6ad923803c: cmp    $0x1a,%r8d
  0.06%    0.04%   ││││││          ││││    ││  0x00007f6ad9238040: jae    0x00007f6ad92387d5  ;*iconst_1
                   ││││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││          ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.10%   │││││↘          ││││    ││  0x00007f6ad9238046: mov    $0x1,%ebp          ;*ireturn
                   │││││           ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││           ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││           ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.30%   │││││           ││││    ││  0x00007f6ad923804b: mov    %r11d,%r8d
  0.16%    0.17%   │││││           ││││    ││  0x00007f6ad923804e: add    $0xffffffbf,%r9d
  0.06%    0.08%   │││││           ││││    ││  0x00007f6ad9238052: cmp    $0x1a,%r9d
                   │││││ ╭         ││││    ││  0x00007f6ad9238056: jb     0x00007f6ad923806b  ;*if_icmple
                   │││││ │         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││ │         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │         ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.20%   │││││ │         ││││    ││  0x00007f6ad9238058: mov    0x2c(%rsp),%r11d
  0.23%    0.32%   │││││ │         ││││    ││  0x00007f6ad923805d: add    $0xffffff9f,%r11d
  0.19%    0.14%   │││││ │         ││││    ││  0x00007f6ad9238061: cmp    $0x1a,%r11d
                   │││││ │         ││││    ││  0x00007f6ad9238065: jae    0x00007f6ad92387f6  ;*iconst_1
                   │││││ │         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││ │         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │         ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.10%   │││││ ↘         ││││    ││  0x00007f6ad923806b: mov    $0x1,%r9d          ;*ireturn
                   │││││           ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││           ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││           ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.35%    0.39%   │││││           ││││    ││  0x00007f6ad9238071: cmp    %r9d,%ebp
                   │││││  ╭        ││││    ││  0x00007f6ad9238074: je     0x00007f6ad9238081  ;*if_icmpeq
                   │││││  │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││  │        ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%   │││││  │        ││││    ││  0x00007f6ad9238076: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││  │        ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%   │││││  │        ││││    ││  0x00007f6ad923807a: mov    %r8d,0x38(%rsp)
  0.10%    0.09%   │││││  │╭       ││││    ││  0x00007f6ad923807f: jmp    0x00007f6ad923808a
  0.30%    0.18%   │││││  ↘│       ││││    ││  0x00007f6ad9238081: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││││   │       ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.14%   │││││   │       ││││    ││  0x00007f6ad9238085: mov    %r8d,0x38(%rsp)    ;*iload_2
                   │││││   │       ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││││   │       ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.22%   │││││   ↘       ││││    ││  0x00007f6ad923808a: mov    0x50(%rsp),%r11
  0.09%    0.10%   │││││           ││││    ││  0x00007f6ad923808f: mov    0x10(%r11),%r8d    ;*getfield end
                   │││││           ││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││││           ││││    ││                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.70%    0.47%   │││││           ││││    ││  0x00007f6ad9238093: mov    0x64(%rsp),%ecx
  0.13%    0.13%   │││││           ││││    ││  0x00007f6ad9238097: cmp    %r8d,%ecx
                   │││││    ╭      ││││    ││  0x00007f6ad923809a: je     0x00007f6ad923838b  ;*if_icmpne
                   │││││    │      ││││    ││                                                ; - com.google.re2j.Machine::match@347 (line 246)
  0.43%    0.23%   │││││    │      ││││    ││  0x00007f6ad92380a0: xor    %eax,%eax          ;*invokespecial step
                   │││││    │      ││││    ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.10%    0.08%   │││││    │      ││││↗   ││  0x00007f6ad92380a2: mov    %rax,-0x8(%rsp)
  0.15%    0.19%   │││││    │      │││││   ││  0x00007f6ad92380a7: mov    0x64(%rsp),%eax
  0.07%    0.08%   │││││    │      │││││   ││  0x00007f6ad92380ab: mov    %eax,0x58(%rsp)
  0.23%    0.15%   │││││    │      │││││   ││  0x00007f6ad92380af: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │││││    │      │││││   ││                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.31%    0.23%   │││││    │      │││││   ││  0x00007f6ad92380b4: add    0x28(%rsp),%ecx    ;*iadd
                   │││││    │      │││││   ││                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.11%    0.22%   │││││    │      │││││   ││  0x00007f6ad92380b8: mov    %ecx,0x64(%rsp)
  0.15%    0.09%   │││││    │      │││││   ││  0x00007f6ad92380bc: mov    0x40(%rsp),%rsi
  0.14%    0.14%   │││││    │      │││││   ││  0x00007f6ad92380c1: mov    0x18(%rsp),%rdx
  0.19%    0.12%   │││││    │      │││││   ││  0x00007f6ad92380c6: mov    0x20(%rsp),%rcx
  0.20%    0.11%   │││││    │      │││││   ││  0x00007f6ad92380cb: mov    0x58(%rsp),%r8d
  0.13%    0.16%   │││││    │      │││││   ││  0x00007f6ad92380d0: mov    0x64(%rsp),%r9d
  0.65%    0.38%   │││││    │      │││││   ││  0x00007f6ad92380d5: mov    %r10d,%edi
  0.04%    0.07%   │││││    │      │││││   ││  0x00007f6ad92380d8: mov    0x38(%rsp),%r10d
  0.15%    0.16%   │││││    │      │││││   ││  0x00007f6ad92380dd: mov    %r10d,(%rsp)
  0.04%    0.10%   │││││    │      │││││   ││  0x00007f6ad92380e1: mov    0x3c(%rsp),%r11d
  0.21%    0.16%   │││││    │      │││││   ││  0x00007f6ad92380e6: mov    %r11d,0x8(%rsp)
  0.11%    0.07%   │││││    │      │││││   ││  0x00007f6ad92380eb: mov    %eax,0x10(%rsp)
  0.11%    0.22%   │││││    │      │││││   ││  0x00007f6ad92380ef: callq  0x00007f6ad9046020  ; OopMap{[24]=Oop [32]=Oop [48]=NarrowOop [64]=Oop [80]=Oop off=884}
                   │││││    │      │││││   ││                                                ;*invokespecial step
                   │││││    │      │││││   ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                   │││││    │      │││││   ││                                                ;   {optimized virtual_call}
  0.29%    0.41%   │││││    │      │││││   ││  0x00007f6ad92380f4: mov    0x40(%rsp),%r10
  0.29%    0.35%   │││││    │      │││││   ││  0x00007f6ad92380f9: movzbl 0x11(%r10),%r8d    ;*getfield captures
                   │││││    │      │││││   ││                                                ; - com.google.re2j.Machine::match@367 (line 250)
  0.11%    0.04%   │││││    │      │││││   ││  0x00007f6ad92380fe: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││││    │      │││││   ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.27%    0.39%   │││││    │      │││││   ││  0x00007f6ad9238103: mov    0x28(%rsp),%r10d
  0.24%    0.28%   │││││    │      │││││   ││  0x00007f6ad9238108: test   %r10d,%r10d
                   │││││    │╭     │││││   ││  0x00007f6ad923810b: je     0x00007f6ad9238395  ;*ifne
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.Machine::match@360 (line 247)
           0.01%   │││││    ││     │││││   ││  0x00007f6ad9238111: test   %r8d,%r8d
                   │││││    ││     │││││   ││  0x00007f6ad9238114: jne    0x00007f6ad9238a61  ;*ifne
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.Machine::match@370 (line 250)
  0.02%    0.01%   │││││    ││     │││││   ││  0x00007f6ad923811a: test   %eax,%eax
                   │││││    ││     │││││   ││  0x00007f6ad923811c: jne    0x00007f6ad9238cc9  ;*ifeq
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.Machine::match@377 (line 250)
  0.29%    0.32%   │││││    ││     │││││   ││  0x00007f6ad9238122: mov    0x50(%rsp),%r10
  0.28%    0.31%   │││││    ││     │││││   ││  0x00007f6ad9238127: mov    0x10(%r10),%r10d   ;*getfield end
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.04%    0.02%   │││││    ││     │││││   ││  0x00007f6ad923812b: mov    %r10d,0x68(%rsp)
  0.03%    0.02%   │││││    ││     │││││   ││  0x00007f6ad9238130: mov    0x50(%rsp),%r10
  0.36%    0.35%   │││││    ││     │││││   ││  0x00007f6ad9238135: mov    0xc(%r10),%r13d    ;*getfield start
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.34%    0.26%   │││││    ││     │││││   ││  0x00007f6ad9238139: mov    0x14(%r10),%r14d   ;*getfield str
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││    ││     │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%            │││││    ││     │││││   ││  0x00007f6ad923813d: mov    0x2c(%rsp),%r11d
  0.00%    0.00%   │││││    ││     │││││   ││  0x00007f6ad9238142: cmp    $0xffffffff,%r11d
                   │││││    ││╭    │││││   ││  0x00007f6ad9238146: je     0x00007f6ad92383d5  ;*if_icmpeq
                   │││││    │││    │││││   ││                                                ; - com.google.re2j.Machine::match@399 (line 258)
  0.30%    0.35%   │││││    │││    │││││   ││  0x00007f6ad923814c: mov    0x34(%rsp),%ecx
  0.25%    0.31%   │││││    │││    │││││   ││  0x00007f6ad9238150: add    0x64(%rsp),%ecx
  0.04%    0.03%   │││││    │││    │││││   ││  0x00007f6ad9238154: add    %r13d,%ecx         ;*iadd
                   │││││    │││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││    │││    │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.05%   │││││    │││    │││││   ││  0x00007f6ad9238157: cmp    0x68(%rsp),%ecx
                   │││││    │││╭   │││││   ││  0x00007f6ad923815b: jge    0x00007f6ad92383e5  ;*if_icmpge
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.65%    0.81%   │││││    ││││   │││││   ││  0x00007f6ad9238161: mov    0x8(%r12,%r14,8),%r11d  ; implicit exception: dispatches to 0x00007f6ad9239da5
  0.17%    0.26%   │││││    ││││   │││││   ││  0x00007f6ad9238166: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││    ││││   │││││   ││  0x00007f6ad923816d: jne    0x00007f6ad9238955
  0.01%    0.02%   │││││    ││││   │││││   ││  0x00007f6ad9238173: lea    (%r12,%r14,8),%rbx  ;*invokeinterface charAt
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
                   │││││    ││││   │││││   ││  0x00007f6ad9238177: test   %ecx,%ecx
                   │││││    ││││   │││││   ││  0x00007f6ad9238179: jl     0x00007f6ad9238ab5  ;*iflt
                   │││││    ││││   │││││   ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.30%    0.37%   │││││    ││││   │││││   ││  0x00007f6ad923817f: mov    0xc(%rbx),%r9d     ;*getfield value
                   │││││    ││││   │││││   ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.21%    0.22%   │││││    ││││   │││││   ││  0x00007f6ad9238183: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │││││    ││││   │││││   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
                   │││││    ││││   │││││   ││                                                ; implicit exception: dispatches to 0x00007f6ad9239db9
  1.43%    1.32%   │││││    ││││   │││││   ││  0x00007f6ad9238188: cmp    %ebp,%ecx
                   │││││    ││││   │││││   ││  0x00007f6ad923818a: jge    0x00007f6ad9238d1d  ;*if_icmplt
                   │││││    ││││   │││││   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.46%    0.46%   │││││    ││││   │││││   ││  0x00007f6ad9238190: cmp    %ebp,%ecx
                   │││││    ││││   │││││   ││  0x00007f6ad9238192: jae    0x00007f6ad92388d6
  0.21%    0.16%   │││││    ││││   │││││   ││  0x00007f6ad9238198: lea    (%r12,%r9,8),%r10
  0.07%    0.06%   │││││    ││││   │││││   ││  0x00007f6ad923819c: movzwl 0x10(%r10,%rcx,2),%r9d  ;*caload
                   │││││    ││││   │││││   ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.04%    0.06%   │││││    ││││   │││││   ││  0x00007f6ad92381a2: cmp    $0xd800,%r9d
                   │││││    ││││   │││││   ││  0x00007f6ad92381a9: jge    0x00007f6ad9238d95  ;*if_icmplt
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││    ││││   │││││   ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.39%    0.37%   │││││    ││││   │││││   ││  0x00007f6ad92381af: shl    $0x3,%r9d          ;*ishl
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.18%    0.21%   │││││    ││││   │││││   ││  0x00007f6ad92381b3: mov    %r9d,%r11d
  0.06%    0.10%   │││││    ││││   │││││   ││  0x00007f6ad92381b6: or     $0x1,%r11d
  0.46%    0.55%   │││││    ││││   │││││   ││  0x00007f6ad92381ba: and    $0x7,%r9d
  0.15%    0.14%   │││││    ││││   │││││   ││  0x00007f6ad92381be: sar    $0x3,%r11d         ;*ishr
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 260)
  0.35%    0.43%   │││││    ││││   │││││   ││  0x00007f6ad92381c2: or     $0x1,%r9d          ; OopMap{r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=1094}
                   │││││    ││││   │││││   ││                                                ;*goto
                   │││││    ││││   │││││   ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.12%    0.13%   │││││    ││││   │││││ ↗↗││  0x00007f6ad92381c6: test   %eax,0x18734e34(%rip)        # 0x00007f6af196d000
                   │││││    ││││   │││││ ││││                                                ;*goto
                   │││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                   │││││    ││││   │││││ ││││                                                ;   {poll}
  0.03%    0.02%   │││││    ││││   │││││ ││││  0x00007f6ad92381cc: mov    0x40(%rsp),%r10
  0.08%    0.11%   │││││    ││││   │││││ ││││  0x00007f6ad92381d1: mov    0x28(%r10),%edi    ;*getfield matchcap
                   │││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.41%    0.48%   │││││    ││││   │││││ ││││  0x00007f6ad92381d5: mov    0x14(%r10),%esi    ;*getfield re2
                   │││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.12%    0.12%   │││││    ││││   │││││ ││││  0x00007f6ad92381d9: mov    0x20(%rsp),%r10
  0.02%    0.04%   │││││    ││││   │││││ ││││  0x00007f6ad92381de: shr    $0x3,%r10
  0.05%    0.12%   │││││    ││││   │││││ ││││  0x00007f6ad92381e2: mov    %r10d,0x30(%rsp)
  0.43%    0.44%   │││││    ││││   │││││ ││││  0x00007f6ad92381e7: mov    0x2c(%rsp),%r10d
  0.10%    0.14%   │││││    ││││   │││││ ││││  0x00007f6ad92381ec: mov    %r11d,0x2c(%rsp)
  0.01%    0.01%   │││││    ││││   │││││ ││││  0x00007f6ad92381f1: mov    0x18(%rsp),%r11
  0.07%    0.09%   │││││    ││││   │││││ ││││  0x00007f6ad92381f6: mov    %r11,0x20(%rsp)
  0.37%    0.49%   │││││    ││││   │││││ ││││  0x00007f6ad92381fb: mov    0x34(%rsp),%ecx
  0.14%    0.11%   │││││    ││││   │││││ ││││  0x00007f6ad92381ff: mov    %ecx,0x28(%rsp)
  0.03%    0.03%   │││││    ││││   │││││ ││││  0x00007f6ad9238203: mov    %r9d,0x34(%rsp)
  0.09%    0.08%   ↘││││    ││││   │││││ ││││  0x00007f6ad9238208: mov    0x30(%rsp),%r9d
  0.43%    0.45%    ││││    ││││   │││││ ││││  0x00007f6ad923820d: movzbl 0x18(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f6ad9239d72
  0.21%    0.20%    ││││    ││││   │││││ ││││  0x00007f6ad9238213: mov    0x30(%rsp),%r11d
  0.01%             ││││    ││││   │││││ ││││  0x00007f6ad9238218: shl    $0x3,%r11          ;*aload
                    ││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.08%    0.05%    ││││    ││││   │││││ ││││  0x00007f6ad923821c: mov    %r11,0x18(%rsp)
  0.36%    0.44%    ││││    ││││   │││││ ││││  0x00007f6ad9238221: test   %r9d,%r9d
                    ││││    ││││╭  │││││ ││││  0x00007f6ad9238224: je     0x00007f6ad9238268  ;*ifeq
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.10%    0.05%    ││││    │││││  │││││ ││││  0x00007f6ad9238226: mov    0x4c(%rsp),%r9d
           0.00%    ││││    │││││  │││││ ││││  0x00007f6ad923822b: test   %r9d,%r9d
                    ││││    │││││  │││││ ││││  0x00007f6ad923822e: jne    0x00007f6ad9238f3d  ;*ifeq
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.05%    0.05%    ││││    │││││  │││││ ││││  0x00007f6ad9238234: test   %eax,%eax
                    ││││    │││││  │││││ ││││  0x00007f6ad9238236: jne    0x00007f6ad9238f99  ;*ifeq
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.12%    0.17%    ││││    │││││  │││││ ││││  0x00007f6ad923823c: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                    ││││    │││││  │││││ ││││                                                ; implicit exception: dispatches to 0x00007f6ad9239ddd
  0.06%    0.07%    ││││    │││││  │││││ ││││  0x00007f6ad9238241: mov    %r11d,%ecx
           0.00%    ││││    │││││  │││││ ││││  0x00007f6ad9238244: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││││    │││││  │││││ ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││││    │││││  │││││ ││││                                                ; implicit exception: dispatches to 0x00007f6ad9239ded
  0.08%    0.06%    ││││    │││││  │││││ ││││  0x00007f6ad9238249: vmovd  %r11d,%xmm1
  0.13%    0.14%    ││││    │││││  │││││ ││││  0x00007f6ad923824e: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││││    │││││  │││││ ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││││    │││││  │││││ ││││                                                ; implicit exception: dispatches to 0x00007f6ad9239dfd
  0.28%    0.24%    ││││    │││││  │││││ ││││  0x00007f6ad9238253: mov    %r11d,0x58(%rsp)
  0.13%    0.15%    ││││    │││││  │││││ ││││  0x00007f6ad9238258: test   %r11d,%r11d
                    ││││    │││││  │││││ ││││  0x00007f6ad923825b: jne    0x00007f6ad92384af  ;*ifne
                    ││││    │││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.02%    0.04%    ││││    │││││  │││││ ││││  0x00007f6ad9238261: mov    %r10d,0x58(%rsp)
  0.08%    0.07%    ││││    │││││╭ │││││ ││││  0x00007f6ad9238266: jmp    0x00007f6ad923826d
  0.04%    0.09%    ││││    ││││↘│ │││││ ││││  0x00007f6ad9238268: mov    %r10d,0x58(%rsp)   ;*aload_0
                    ││││    ││││ │ │││││ ││││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.06%    0.07%    ││││    ││││ ↘ │││││ ││││  0x00007f6ad923826d: test   %eax,%eax
                    ││││    ││││   │││││ ││││  0x00007f6ad923826f: jne    0x00007f6ad92389bd  ;*ifne
                    ││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.12%    0.11%    ││││    ││││   │││││ ││││  0x00007f6ad9238275: mov    0x64(%rsp),%r10d
  0.31%    0.35%    ││││    ││││   │││││ ││││  0x00007f6ad923827a: test   %r10d,%r10d
                    ││││    ││││  ╭│││││ ││││  0x00007f6ad923827d: je     0x00007f6ad923828d  ;*ifeq
                    ││││    ││││  ││││││ ││││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.10%    0.17%    ││││    ││││  ││││││ ││││  0x00007f6ad923827f: mov    0x3c(%rsp),%r11d
  0.05%    0.06%    ││││    ││││  ││││││ ││││  0x00007f6ad9238284: test   %r11d,%r11d
                    ││││    ││││  ││││││ ││││  0x00007f6ad9238287: jne    0x00007f6ad9238a11  ;*aload_0
                    ││││    ││││  ││││││ ││││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.13%    0.12%    ││││    ││││  ↘│││││ ││││  0x00007f6ad923828d: test   %r8d,%r8d
                    ││││    ││││   │││││ ││││  0x00007f6ad9238290: jne    0x00007f6ad9238ba1  ;*ifeq
                    ││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.28%    0.28%    ││││    ││││   │││││ ││││  0x00007f6ad9238296: mov    0x40(%rsp),%r10
  0.13%    0.17%    ││││    ││││   │││││ ││││  0x00007f6ad923829b: mov    0x18(%r10),%r11d   ;*getfield prog
                    ││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.04%    0.09%    ││││    ││││   │││││ ││││  0x00007f6ad923829f: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                    ││││    ││││   │││││ ││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││││    ││││   │││││ ││││                                                ; implicit exception: dispatches to 0x00007f6ad9239d81
  0.29%    0.30%    ││││    ││││   │││││ ││││  0x00007f6ad92382a4: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f6ad9239d91
  1.01%    0.98%    ││││    ││││   │││││ ││││  0x00007f6ad92382a9: lea    (%r12,%rbp,8),%r10
  0.04%    0.01%    ││││    ││││   │││││ ││││  0x00007f6ad92382ad: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││    ││││   ╰││││ ││││  0x00007f6ad92382b4: je     0x00007f6ad9237fca
  0.13%    0.20%    ││││    ││││    ││││ ││││  0x00007f6ad92382ba: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││││    ││││    ││││ ││││  0x00007f6ad92382c1: jne    0x00007f6ad9238bf5  ;*invokevirtual add
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.05%    ││││    ││││    ││││ ││││  0x00007f6ad92382c7: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.09%    0.05%    ││││    ││││    ││││ ││││  0x00007f6ad92382cb: cmp    $0x40,%ecx
                    ││││    ││││    ││││ ││││  0x00007f6ad92382ce: jg     0x00007f6ad9238e01  ;*if_icmpgt
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.16%    0.19%    ││││    ││││    ││││ ││││  0x00007f6ad92382d4: mov    %r10,%r9
  0.01%    0.02%    ││││    ││││    ││││ ││││  0x00007f6ad92382d7: mov    $0x1,%ebx
  0.03%    0.02%    ││││    ││││    ││││ ││││  0x00007f6ad92382dc: shl    %cl,%rbx           ;*lshl
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.49%    0.50%    ││││    ││││    ││││ ││││  0x00007f6ad92382df: mov    0x30(%rsp),%r11d
  0.00%             ││││    ││││    ││││ ││││  0x00007f6ad92382e4: mov    0x10(%r12,%r11,8),%r10  ;*getfield pcsl
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.01%    ││││    ││││    ││││ ││││  0x00007f6ad92382e9: mov    %r10,%r11
  0.03%    0.00%    ││││    ││││    ││││ ││││  0x00007f6ad92382ec: and    %rbx,%r11          ;*land
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.28%    0.16%    ││││    ││││    ││││ ││││  0x00007f6ad92382ef: test   %r11,%r11
                    ││││    ││││    ││││ ││││  0x00007f6ad92382f2: jne    0x00007f6ad9238e6d  ;*ifeq
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
           0.01%    ││││    ││││    ││││ ││││  0x00007f6ad92382f8: cmp    $0x40,%ecx
                    ││││    ││││    ││││ ││││  0x00007f6ad92382fb: jge    0x00007f6ad9238ed1  ;*if_icmpge
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.02%    0.01%    ││││    ││││    ││││ ││││  0x00007f6ad9238301: mov    0x30(%rsp),%r11d
  0.02%    0.02%    ││││    ││││    ││││ ││││  0x00007f6ad9238306: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.25%    0.26%    ││││    ││││    ││││ ││││  0x00007f6ad923830b: mov    0x20(%r12,%r11,8),%r8d  ;*getfield denseThreadsInstructions
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%             ││││    ││││    ││││ ││││  0x00007f6ad9238310: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.03%    ││││    ││││    ││││ ││││  0x00007f6ad9238315: or     %r10,%rbx
  0.03%    0.01%    ││││    ││││    ││││ ││││  0x00007f6ad9238318: mov    %rbx,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.25%    0.26%    ││││    ││││    ││││ ││││  0x00007f6ad923831d: mov    %ebp,%r11d
                    ││││    ││││    ││││ ││││  0x00007f6ad9238320: inc    %r11d
  0.02%    0.03%    ││││    ││││    ││││ ││││  0x00007f6ad9238323: mov    0x30(%rsp),%r10d
  0.02%    0.01%    ││││    ││││    ││││ ││││  0x00007f6ad9238328: mov    %r11d,0xc(%r12,%r10,8)  ;*putfield size
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.22%    0.21%    ││││    ││││    ││││ ││││  0x00007f6ad923832d: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f6ad9239dc9
  0.02%    0.00%    ││││    ││││    ││││ ││││  0x00007f6ad9238332: cmp    %r11d,%ebp
                    ││││    ││││    ││││ ││││  0x00007f6ad9238335: jae    0x00007f6ad9238b31
  0.05%    0.03%    ││││    ││││    ││││ ││││  0x00007f6ad923833b: mov    0x8(%r12,%r8,8),%r11d
  0.00%    0.01%    ││││    ││││    ││││ ││││  0x00007f6ad9238340: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││││    ││││    ││││ ││││  0x00007f6ad9238347: jne    0x00007f6ad9238c59
  0.21%    0.18%    ││││    ││││    ││││ ││││  0x00007f6ad923834d: mov    %r9,%r11
  0.00%    0.00%    ││││    ││││    ││││ ││││  0x00007f6ad9238350: shr    $0x3,%r11          ;*aastore
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%    0.02%    ││││    ││││    ││││ ││││  0x00007f6ad9238354: lea    (%r12,%r8,8),%r10  ;*getfield denseThreadsInstructions
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.04%    ││││    ││││    ││││ ││││  0x00007f6ad9238358: lea    0x10(%r10,%rbp,4),%r10
  0.25%    0.20%    ││││    ││││    ││││ ││││  0x00007f6ad923835d: mov    %r11d,(%r10)
  0.03%    0.03%    ││││    ││││    ││││ ││││  0x00007f6ad9238360: shr    $0x9,%r10
  0.04%    0.03%    ││││    ││││    ││││ ││││  0x00007f6ad9238364: movabs $0x7f6aea375000,%r11
  0.01%             ││││    ││││    ││││ ││││  0x00007f6ad923836e: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                    ││││    ││││    ││││ ││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.44%    0.51%    ││││    ││││    ╰│││ ││││  0x00007f6ad9238372: jmpq   0x00007f6ad9237ff4
  0.00%             ↘│││    ││││     │││ ││││  0x00007f6ad9238377: mov    $0x5,%r11d
                     │││    ││││     ╰││ ││││  0x00007f6ad923837d: jmpq   0x00007f6ad9238005
  0.00%              │↘│    ││││      ││ ││││  0x00007f6ad9238382: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │ │    ││││      ││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.01%     │ │    ││││      ╰│ ││││  0x00007f6ad9238386: jmpq   0x00007f6ad923801d
                     │ │    ↘│││       │ ││││  0x00007f6ad923838b: mov    $0x1,%eax
                     │ │     │││       ╰ ││││  0x00007f6ad9238390: jmpq   0x00007f6ad92380a2
           0.00%     │ │     ↘││         ││││  0x00007f6ad9238395: test   %r8d,%r8d
                     │ │      ││         ││││  0x00007f6ad9238398: jne    0x00007f6ad92387b0  ;*getfield matched
                     │ │      ││         ││││                                                ; - com.google.re2j.Machine::match@447 (line 268)
           0.00%     │ │      ││         ││││  0x00007f6ad923839e: mov    0x20(%rsp),%r11
           0.00%     │ │      ││         ││││  0x00007f6ad92383a3: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f6ad9239e65
  0.01%    0.01%     │ │      ││         ││││  0x00007f6ad92383a8: test   %r10d,%r10d
                     │ │      ││        ╭││││  0x00007f6ad92383ab: jne    0x00007f6ad92383c6  ;*ifeq
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │ │      ││        │││││  0x00007f6ad92383ad: movb   $0x1,0x18(%r11)    ;*putfield empty
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │ │      ││        │││││  0x00007f6ad92383b2: mov    0x1c(%r11),%ebp    ;*getfield pcs
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
  0.00%              │ │      ││        │││││  0x00007f6ad92383b6: mov    %r12d,0xc(%r11)    ;*putfield size
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
  0.00%              │ │      ││        │││││  0x00007f6ad92383ba: mov    %r12,0x10(%r11)    ;*putfield pcsl
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │ │      ││        │││││  0x00007f6ad92383be: test   %ebp,%ebp
                     │ │      ││        │││││  0x00007f6ad92383c0: jne    0x00007f6ad92396f9  ;*if_icmpne
                     │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
                     │ │      ││        ↘││││  0x00007f6ad92383c6: add    $0x80,%rsp
                     │ │      ││         ││││  0x00007f6ad92383cd: pop    %rbp
                     │ │      ││         ││││  0x00007f6ad92383ce: test   %eax,0x18734c2c(%rip)        # 0x00007f6af196d000
                     │ │      ││         ││││                                                ;   {poll_return}
  0.00%              │ │      ││         ││││  0x00007f6ad92383d4: retq   
  0.00%              │ │      ↘│         ││││  0x00007f6ad92383d5: mov    0x34(%rsp),%r9d
  0.01%              │ │       │         ││││  0x00007f6ad92383da: mov    $0xffffffff,%r11d
                     │ │       │         ╰│││  0x00007f6ad92383e0: jmpq   0x00007f6ad92381c6
  0.04%    0.04%     │ │       ↘          │││  0x00007f6ad92383e5: xor    %r9d,%r9d
           0.00%     │ │                  │││  0x00007f6ad92383e8: mov    $0xffffffff,%r11d
  0.01%    0.01%     │ │                  ╰││  0x00007f6ad92383ee: jmpq   0x00007f6ad92381c6
                     ↘ │                   ││  0x00007f6ad92383f3: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                       │                   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.00%       │                   ╰│  0x00007f6ad92383f7: jmpq   0x00007f6ad923800f
  0.01%    0.01%       ↘                    │  0x00007f6ad92383fc: or     $0x2,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                            │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%                                     ╰  0x00007f6ad9238400: jmpq   0x00007f6ad9238027
                                               0x00007f6ad9238405: data16 data16 nopw 0x0(%rax,%rax,1)
  0.01%    0.00%                               0x00007f6ad9238410: mov    %ebx,%ecx
           0.00%                               0x00007f6ad9238412: jmpq   0x00007f6ad9238600
                                               0x00007f6ad9238417: add    $0x2,%ecx
                                               0x00007f6ad923841a: mov    %ecx,%r9d
                                               0x00007f6ad923841d: inc    %r9d
                                               0x00007f6ad9238420: mov    %r9d,%ebx
                                               0x00007f6ad9238423: jmp    0x00007f6ad9238436
                                               0x00007f6ad9238425: mov    %ecx,%r9d
                                               0x00007f6ad9238428: add    $0x2,%r9d
                                               0x00007f6ad923842c: mov    %r9d,%ebx
                                               0x00007f6ad923842f: jmp    0x00007f6ad9238434
                                               0x00007f6ad9238431: add    $0x2,%ecx
....................................................................................................
 28.33%   28.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 483 (350 bytes) 

                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                                                                    ;   {optimized virtual_call}
                      0x00007f6ad92172c8: test   %rax,%rax
                      0x00007f6ad92172cb: jne    0x00007f6ad9217f71  ;*ifnull
                                                                    ; - com.google.re2j.Machine::step@209 (line 315)
                      0x00007f6ad92172d1: mov    0x10(%rsp),%r11
                  ╭   0x00007f6ad92172d6: jmp    0x00007f6ad9217355
  0.09%    0.06%  │   0x00007f6ad92172d8: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   0x00007f6ad92172df: jne    0x00007f6ad9217b65  ;*invokevirtual add
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.09%  │   0x00007f6ad92172e5: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.17%  │   0x00007f6ad92172e9: cmp    $0x40,%ecx
                  │   0x00007f6ad92172ec: jg     0x00007f6ad9217ef5  ;*if_icmpgt
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%  │   0x00007f6ad92172f2: mov    $0x1,%r11d
  0.05%    0.05%  │   0x00007f6ad92172f8: shl    %cl,%r11           ;*lshl
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.23%  │   0x00007f6ad92172fb: mov    %rbx,%rdi
  0.05%    0.08%  │   0x00007f6ad92172fe: and    %r11,%rdi          ;*land
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.06%  │   0x00007f6ad9217301: test   %rdi,%rdi
                  │   0x00007f6ad9217304: jne    0x00007f6ad9217556  ;*ifeq
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.17%  │   0x00007f6ad921730a: xor    %ebp,%ebp          ;*ireturn
                  │                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%  │   0x00007f6ad921730c: test   %rdi,%rdi
                  │   0x00007f6ad921730f: jne    0x00007f6ad9217f21  ;*ifeq
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%  │   0x00007f6ad9217315: cmp    $0x40,%ecx
                  │   0x00007f6ad9217318: jge    0x00007f6ad9217f45  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.07%  │   0x00007f6ad921731e: or     %r11,%rbx
  0.13%    0.20%  │   0x00007f6ad9217321: mov    %r13,%r11
  0.04%    0.04%  │   0x00007f6ad9217324: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.08%  │   0x00007f6ad9217328: add    $0x18,%r8
  0.06%    0.07%  │   0x00007f6ad921732c: shr    $0x3,%r10
  0.11%    0.13%  │   0x00007f6ad9217330: mov    %r10d,(%r8)        ;*aastore
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%  │   0x00007f6ad9217333: mov    %r8,%r10
  0.06%    0.08%  │   0x00007f6ad9217336: vmovd  %xmm1,%r8d
  0.10%    0.08%  │   0x00007f6ad921733b: add    $0x3,%r8d
  0.05%    0.16%  │   0x00007f6ad921733f: mov    %r8d,0xc(%r11)     ;*putfield size
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%  │   0x00007f6ad9217343: shr    $0x9,%r10
  0.07%    0.03%  │   0x00007f6ad9217347: movabs $0x7f6aea375000,%r8
  0.07%    0.05%  │   0x00007f6ad9217351: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.15%  ↘   0x00007f6ad9217355: mov    0x30(%rsp),%rdx
  0.01%    0.03%      0x00007f6ad921735a: mov    0x9c(%rsp),%r13d
  0.05%    0.03%      0x00007f6ad9217362: mov    0x94(%rsp),%r10d   ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%      0x00007f6ad921736a: mov    0x98(%rsp),%r8d
  0.17%    0.18%      0x00007f6ad9217372: mov    0xa0(%rsp),%ecx    ;*aload
                                                                    ; - com.google.re2j.Machine::step@207 (line 315)
  0.49%    0.52%      0x00007f6ad9217379: inc    %r10d              ;*iinc
                                                                    ; - com.google.re2j.Machine::step@218 (line 282)
  0.99%    0.93%      0x00007f6ad921737c: cmp    %r13d,%r10d
                      0x00007f6ad921737f: jge    0x00007f6ad921748d
  0.27%    0.41%      0x00007f6ad9217385: mov    %r8d,0x98(%rsp)
  0.97%    0.93%      0x00007f6ad921738d: mov    %ecx,0xa0(%rsp)    ;*aload_0
                                                                    ; - com.google.re2j.Machine::step@25 (line 285)
  0.53%    0.48%      0x00007f6ad9217394: mov    0x8(%rsp),%r8
  1.20%    0.96%      0x00007f6ad9217399: movzbl 0x11(%r8),%r8d     ;*getfield captures
                                                                    ; - com.google.re2j.Machine::step@26 (line 285)
  2.20%    2.40%      0x00007f6ad921739e: test   %r8d,%r8d
                      0x00007f6ad92173a1: jne    0x00007f6ad921759d  ;*ifne
                                                                    ; - com.google.re2j.Machine::step@29 (line 285)
  1.16%    1.25%      0x00007f6ad92173a7: mov    0x20(%rdx),%ebp    ;*getfield denseThreadsInstructions
                                                                    ; - com.google.re2j.Machine::step@82 (line 295)
  0.47%    0.37%      0x00007f6ad92173aa: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f6ad9217fbd
  1.17%    0.86%      0x00007f6ad92173af: cmp    %r8d,%r10d
                      0x00007f6ad92173b2: jae    0x00007f6ad9217574
  0.52%    0.49%      0x00007f6ad92173b8: lea    (%r12,%rbp,8),%r8
  1.14%    1.07%      0x00007f6ad92173bc: mov    0x10(%r8,%r10,4),%r8d  ;*aaload
                                                                    ; - com.google.re2j.Machine::step@87 (line 295)
  0.64%    0.65%      0x00007f6ad92173c1: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@92 (line 297)
                                                                    ; implicit exception: dispatches to 0x00007f6ad9217fd1
  3.03%    2.88%      0x00007f6ad92173c6: cmp    $0x6,%ebp
                      0x00007f6ad92173c9: je     0x00007f6ad92174d3  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@97 (line 297)
  0.97%    0.92%      0x00007f6ad92173cf: cmp    $0xa,%ebp
                      0x00007f6ad92173d2: je     0x00007f6ad9216ed5  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.91%    0.92%      0x00007f6ad92173d8: cmp    $0xb,%ebp
                      0x00007f6ad92173db: je     0x00007f6ad92175e5  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.40%    1.49%      0x00007f6ad92173e1: mov    0x1c(%r12,%r8,8),%r9d  ;*getfield f0
                                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.24%    0.38%      0x00007f6ad92173e6: cmp    $0x9,%ebp
                   ╭  0x00007f6ad92173e9: jne    0x00007f6ad92173fe  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.27%    0.43%   │  0x00007f6ad92173eb: cmp    0x20(%rsp),%r9d
                   │  0x00007f6ad92173f0: je     0x00007f6ad92174c8  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   │                                                ; - com.google.re2j.Machine::step@181 (line 312)
  0.18%    0.16%   │  0x00007f6ad92173f6: xor    %r9d,%r9d
  0.06%    0.04%   │  0x00007f6ad92173f9: jmpq   0x00007f6ad9216e33
  0.57%    0.65%   ↘  0x00007f6ad92173fe: cmp    $0xc,%ebp
                      0x00007f6ad9217401: jne    0x00007f6ad9217631  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.15%    1.34%      0x00007f6ad9217407: cmp    0x20(%rsp),%r9d
                      0x00007f6ad921740c: je     0x00007f6ad92174bd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.63%    0.71%      0x00007f6ad9217412: mov    0x20(%r12,%r8,8),%r9d  ;*getfield f1
                                                                    ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.19%    0.34%      0x00007f6ad9217417: cmp    0x20(%rsp),%r9d
                      0x00007f6ad921741c: je     0x00007f6ad92174bd  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.95%    1.24%      0x00007f6ad9217422: mov    0x24(%r12,%r8,8),%ebp  ;*getfield f2
                                                                    ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.46%    0.58%      0x00007f6ad9217427: cmp    0x20(%rsp),%ebp
                      0x00007f6ad921742b: je     0x00007f6ad921767d  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.03%    1.09%      0x00007f6ad9217431: mov    0x28(%r12,%r8,8),%ebp  ;*getfield f3
                                                                    ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.14%    0.21%      0x00007f6ad9217436: cmp    0x20(%rsp),%ebp
                      0x00007f6ad921743a: jne    0x00007f6ad9216e30  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                    ; - com.google.re2j.Machine::step@181 (line 312)
                      0x00007f6ad9217440: mov    $0xffffff65,%esi
                      0x00007f6ad9217445: mov    %r10d,0x94(%rsp)
                      0x00007f6ad921744d: mov    %rdx,0x10(%rsp)
                      0x00007f6ad9217452: mov    %r11,0x18(%rsp)
                      0x00007f6ad9217457: mov    0x28(%rsp),%r10d
....................................................................................................
 26.32%   27.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 501 (893 bytes) 

                            # parm4:    rdi:rdi   = &apos;[I&apos;
                            # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            0x00007f6ad921c7c0: mov    0x8(%rsi),%r10d
                            0x00007f6ad921c7c4: shl    $0x3,%r10
                            0x00007f6ad921c7c8: cmp    %r10,%rax
                            0x00007f6ad921c7cb: jne    0x00007f6ad9045e20  ;   {runtime_call}
                            0x00007f6ad921c7d1: data16 xchg %ax,%ax
                            0x00007f6ad921c7d4: nopl   0x0(%rax,%rax,1)
                            0x00007f6ad921c7dc: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.24%    0.20%            0x00007f6ad921c7e0: mov    %eax,-0x14000(%rsp)
  0.11%    0.04%            0x00007f6ad921c7e7: push   %rbp
  0.03%    0.02%            0x00007f6ad921c7e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.24%    0.24%            0x00007f6ad921c7ec: vmovd  %r9d,%xmm5
  0.02%    0.02%            0x00007f6ad921c7f1: vmovq  %r8,%xmm4
  0.02%    0.00%            0x00007f6ad921c7f6: vmovq  %rsi,%xmm3
  0.28%    0.26%            0x00007f6ad921c7fb: mov    %ecx,%r13d
  0.03%    0.06%            0x00007f6ad921c7fe: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.02%    0.04%            0x00007f6ad921c801: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f6ad921d159
  0.03%    0.02%            0x00007f6ad921c805: cmp    $0x40,%ecx
                            0x00007f6ad921c808: jg     0x00007f6ad921cd3d  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.25%    0.23%            0x00007f6ad921c80e: mov    $0x1,%esi
  0.02%    0.02%            0x00007f6ad921c813: mov    $0x1,%r9d
  0.03%    0.01%            0x00007f6ad921c819: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.25%    0.36%            0x00007f6ad921c81c: mov    %r11,%r10
  0.02%    0.02%            0x00007f6ad921c81f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.05%    0.02%            0x00007f6ad921c822: test   %r10,%r10
                  ╭         0x00007f6ad921c825: jne    0x00007f6ad921cb5e  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.26%    0.23%  │         0x00007f6ad921c82b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.04%  │   ↗     0x00007f6ad921c82d: test   %r10,%r10
                  │   │     0x00007f6ad921c830: jne    0x00007f6ad921cd71  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.02%    0.01%  │   │     0x00007f6ad921c836: cmp    $0x40,%ecx
                  │   │     0x00007f6ad921c839: jge    0x00007f6ad921cda1  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.04%    0.04%  │   │     0x00007f6ad921c83f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.19%    0.29%  │   │     0x00007f6ad921c843: vmovq  %xmm3,%r10
  0.03%    0.04%  │   │     0x00007f6ad921c848: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.00%    0.02%  │   │     0x00007f6ad921c84c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.03%  │   │     0x00007f6ad921c84f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.23%    0.26%  │   │     0x00007f6ad921c853: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f6ad921d16d
  0.14%    0.14%  │   │     0x00007f6ad921c858: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f6ad921c85f: jne    0x00007f6ad921cc15
  0.01%    0.01%  │   │     0x00007f6ad921c865: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.03%  │   │     0x00007f6ad921c869: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.22%    0.27%  │   │     0x00007f6ad921c86d: cmp    $0x40,%ecx
                  │   │     0x00007f6ad921c870: jg     0x00007f6ad921cdd5  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.06%    0.05%  │   │     0x00007f6ad921c876: mov    $0x1,%r10d
  0.00%    0.00%  │   │     0x00007f6ad921c87c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.37%    0.40%  │   │     0x00007f6ad921c87f: mov    %r9,%r8
  0.02%    0.00%  │   │     0x00007f6ad921c882: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.02%  │   │     0x00007f6ad921c885: test   %r8,%r8
                  │╭  │     0x00007f6ad921c888: jne    0x00007f6ad921cb68  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.24%    0.29%  ││  │     0x00007f6ad921c88e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.07%    0.02%  ││  │↗    0x00007f6ad921c890: test   %r8,%r8
                  ││  ││    0x00007f6ad921c893: jne    0x00007f6ad921ce11  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.10%    0.09%  ││  ││    0x00007f6ad921c899: cmp    $0x40,%ecx
                  ││  ││    0x00007f6ad921c89c: jge    0x00007f6ad921ce45  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.03%    0.01%  ││  ││    0x00007f6ad921c8a2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.14%    0.20%  ││  ││    0x00007f6ad921c8a5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.05%    0.04%  ││  ││    0x00007f6ad921c8a9: mov    0x70(%rsp),%rax
  0.10%    0.10%  ││  ││    0x00007f6ad921c8ae: movzbl 0x11(%rax),%ebp    ;*getfield captures
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                  ││  ││                                                  ; implicit exception: dispatches to 0x00007f6ad921d195
  0.01%    0.06%  ││  ││    0x00007f6ad921c8b2: test   %ebp,%ebp
                  ││  ││    0x00007f6ad921c8b4: jne    0x00007f6ad921ce85  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@27 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.15%    0.20%  ││  ││    0x00007f6ad921c8ba: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.04%    0.06%  ││  ││    0x00007f6ad921c8bd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.10%    0.03%  ││  ││    0x00007f6ad921c8c0: mov    %ecx,%r8d
  0.03%    0.03%  ││  ││    0x00007f6ad921c8c3: inc    %r8d               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.14%    0.10%  ││  ││    0x00007f6ad921c8c6: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.03%  ││  ││    0x00007f6ad921c8ca: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f6ad921d1a5
  0.17%    0.10%  ││  ││    0x00007f6ad921c8cf: cmp    %r10d,%ecx
                  ││  ││    0x00007f6ad921c8d2: jae    0x00007f6ad921cb9a
  0.04%    0.08%  ││  ││    0x00007f6ad921c8d8: vmovd  %r8d,%xmm2
  0.18%    0.15%  ││  ││    0x00007f6ad921c8dd: vmovd  %ebx,%xmm0
  0.03%    0.04%  ││  ││    0x00007f6ad921c8e1: mov    %ecx,%r14d
  0.11%    0.08%  ││  ││    0x00007f6ad921c8e4: mov    %r11,%r8
  0.03%    0.05%  ││  ││    0x00007f6ad921c8e7: mov    0x8(%r12,%rbx,8),%r11d
  0.14%    0.14%  ││  ││    0x00007f6ad921c8ec: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f6ad921c8f3: jne    0x00007f6ad921cc45  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.06%    0.06%  ││  ││    0x00007f6ad921c8f9: vmovq  %xmm3,%r11
  0.07%    0.10%  ││  ││    0x00007f6ad921c8fe: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 266)
  0.05%    0.04%  ││  ││    0x00007f6ad921c902: mov    %r8,%rcx
  0.14%    0.18%  ││  ││    0x00007f6ad921c905: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.01%    0.03%  ││  ││    0x00007f6ad921c909: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.08%    0.05%  ││  ││    0x00007f6ad921c90d: lea    0x10(%r11,%r14,4),%r8
  0.05%    0.02%  ││  ││    0x00007f6ad921c912: mov    %ecx,(%r8)
  0.31%    0.26%  ││  ││    0x00007f6ad921c915: mov    %r8,%rcx
  0.02%    0.04%  ││  ││    0x00007f6ad921c918: shr    $0x9,%rcx
  0.07%    0.03%  ││  ││    0x00007f6ad921c91c: movabs $0x7f6aea375000,%r8
  0.00%    0.00%  ││  ││    0x00007f6ad921c926: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.19%    0.21%  ││  ││    0x00007f6ad921c92a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6ad921d1bd
  0.02%    0.01%  ││  ││    0x00007f6ad921c92f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f6ad921c935: jne    0x00007f6ad921cc81
  0.09%    0.05%  ││  ││    0x00007f6ad921c93b: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.01%    0.03%  ││  ││    0x00007f6ad921c93f: vmovq  %rcx,%xmm1
  0.15%    0.16%  ││  ││    0x00007f6ad921c944: mov    0x18(%rcx),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.18%    0.23%  ││  ││    0x00007f6ad921c947: mov    %ecx,%edi
  0.09%    0.07%  ││  ││    0x00007f6ad921c949: cmp    $0x40,%ecx
                  ││  ││    0x00007f6ad921c94c: jg     0x00007f6ad921cec1  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.09%    0.10%  ││  ││    0x00007f6ad921c952: mov    $0x1,%ebx
  0.12%    0.16%  ││  ││    0x00007f6ad921c957: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.20%    0.32%  ││  ││    0x00007f6ad921c95a: mov    %r9,%rcx
  0.17%    0.19%  ││  ││    0x00007f6ad921c95d: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.00%    0.01%  ││  ││    0x00007f6ad921c960: test   %rcx,%rcx
                  ││╭ ││    0x00007f6ad921c963: jne    0x00007f6ad921cb72  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.13%    0.14%  │││ ││    0x00007f6ad921c969: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.03%    0.03%  │││ ││↗   0x00007f6ad921c96b: test   %rcx,%rcx
                  │││ │││   0x00007f6ad921c96e: jne    0x00007f6ad921cf01  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.17%    0.14%  │││ │││   0x00007f6ad921c974: mov    %edi,%ecx
  0.04%    0.06%  │││ │││   0x00007f6ad921c976: cmp    $0x40,%ecx
                  │││ │││   0x00007f6ad921c979: jge    0x00007f6ad921cf39  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.05%    0.13%  │││ │││   0x00007f6ad921c97f: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.03%    0.04%  │││ │││   0x00007f6ad921c982: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.21%    0.27%  │││ │││   0x00007f6ad921c986: mov    %r14d,%ecx
  0.02%    0.04%  │││ │││   0x00007f6ad921c989: add    $0x2,%ecx
  0.07%    0.07%  │││ │││   0x00007f6ad921c98c: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.06%    0.03%  │││ │││   0x00007f6ad921c98f: mov    %r14d,%edi
  0.24%    0.19%  │││ │││   0x00007f6ad921c992: add    $0x4,%edi          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.01%    0.01%  │││ │││   0x00007f6ad921c995: cmp    %r10d,%edi
                  │││ │││   0x00007f6ad921c998: jae    0x00007f6ad921cbd5  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.09%    0.11%  │││ │││   0x00007f6ad921c99e: vmovq  %xmm3,%r10
  0.03%    0.08%  │││ │││   0x00007f6ad921c9a3: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 267)
  0.23%    0.21%  │││ │││   0x00007f6ad921c9a7: vmovq  %xmm1,%r10
  0.02%    0.00%  │││ │││   0x00007f6ad921c9ac: mov    %r10,%rcx
  0.07%    0.06%  │││ │││   0x00007f6ad921c9af: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.03%    0.02%  │││ │││   0x00007f6ad921c9b3: movslq %r14d,%r10
  0.12%    0.19%  │││ │││   0x00007f6ad921c9b6: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.01%    0.00%  │││ │││   0x00007f6ad921c9ba: mov    %rbx,%r10
  0.09%    0.07%  │││ │││   0x00007f6ad921c9bd: add    $0x14,%r10
  0.02%    0.02%  │││ │││   0x00007f6ad921c9c1: mov    %ecx,(%r10)
  0.22%    0.17%  │││ │││   0x00007f6ad921c9c4: shr    $0x9,%r10
           0.01%  │││ │││   0x00007f6ad921c9c8: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.08%    0.10%  │││ │││   0x00007f6ad921c9cc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6ad921d1e5
  0.05%    0.04%  │││ │││   0x00007f6ad921c9d1: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f6ad921c9d7: jne    0x00007f6ad921ccb1
  0.16%    0.31%  │││ │││   0x00007f6ad921c9dd: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.01%    0.02%  │││ │││   0x00007f6ad921c9e1: vmovq  %r10,%xmm0
  0.06%    0.15%  │││ │││   0x00007f6ad921c9e6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.04%    0.02%  │││ │││   0x00007f6ad921c9ea: vmovd  %ecx,%xmm2
  0.22%    0.15%  │││ │││   0x00007f6ad921c9ee: cmp    $0x40,%ecx
                  │││ │││   0x00007f6ad921c9f1: jg     0x00007f6ad921cf79  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.02%  │││ │││   0x00007f6ad921c9f7: mov    $0x1,%r10d
  0.04%    0.10%  │││ │││   0x00007f6ad921c9fd: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.34%    0.37%  │││ │││   0x00007f6ad921ca00: mov    %r9,%rcx
  0.04%    0.09%  │││ │││   0x00007f6ad921ca03: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.02%  │││ │││   0x00007f6ad921ca06: test   %rcx,%rcx
                  │││╭│││   0x00007f6ad921ca09: jne    0x00007f6ad921cb7c  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.14%    0.21%  │││││││   0x00007f6ad921ca0f: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.02%  │││││││↗  0x00007f6ad921ca11: test   %rcx,%rcx
                  ││││││││  0x00007f6ad921ca14: jne    0x00007f6ad921cfb9  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.14%    0.17%  ││││││││  0x00007f6ad921ca1a: vmovd  %xmm2,%ecx
  0.04%    0.03%  ││││││││  0x00007f6ad921ca1e: cmp    $0x40,%ecx
                  ││││││││  0x00007f6ad921ca21: jge    0x00007f6ad921cff1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.17%    0.16%  ││││││││  0x00007f6ad921ca27: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.02%  ││││││││  0x00007f6ad921ca2a: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.12%    0.13%  ││││││││  0x00007f6ad921ca2e: vmovq  %xmm3,%r10
  0.03%    0.01%  ││││││││  0x00007f6ad921ca33: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 268)
  0.26%    0.26%  ││││││││  0x00007f6ad921ca37: mov    %rbx,%r10
  0.02%    0.05%  ││││││││  0x00007f6ad921ca3a: add    $0x18,%r10
  0.12%    0.07%  ││││││││  0x00007f6ad921ca3e: vmovq  %xmm0,%rcx
  0.03%    0.02%  ││││││││  0x00007f6ad921ca43: shr    $0x3,%rcx
  0.16%    0.13%  ││││││││  0x00007f6ad921ca47: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.06%    0.05%  ││││││││  0x00007f6ad921ca4a: mov    %r14d,%ecx
  0.08%    0.04%  ││││││││  0x00007f6ad921ca4d: add    $0x3,%ecx
  0.02%    0.00%  ││││││││  0x00007f6ad921ca50: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.18%    0.10%  ││││││││  0x00007f6ad921ca53: shr    $0x9,%r10
  0.04%    0.02%  ││││││││  0x00007f6ad921ca57: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.10%    0.11%  ││││││││  0x00007f6ad921ca5b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6ad921d20d
  0.07%    0.02%  ││││││││  0x00007f6ad921ca60: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f6ad921ca66: jne    0x00007f6ad921cce1
  0.15%    0.15%  ││││││││  0x00007f6ad921ca6c: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
           0.02%  ││││││││  0x00007f6ad921ca70: vmovq  %r10,%xmm0
  0.10%    0.07%  ││││││││  0x00007f6ad921ca75: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.05%    0.06%  ││││││││  0x00007f6ad921ca79: vmovd  %ecx,%xmm1
  0.14%    0.18%  ││││││││  0x00007f6ad921ca7d: cmp    $0x40,%ecx
  0.00%    0.02%  ││││││││  0x00007f6ad921ca80: jg     0x00007f6ad921d031  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.13%    0.10%  ││││││││  0x00007f6ad921ca86: mov    $0x1,%r10d
  0.03%    0.02%  ││││││││  0x00007f6ad921ca8c: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.27%    0.25%  ││││││││  0x00007f6ad921ca8f: mov    %r9,%rcx
  0.03%    0.01%  ││││││││  0x00007f6ad921ca92: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.17%    0.25%  ││││││││  0x00007f6ad921ca95: test   %rcx,%rcx
                  ││││││││  0x00007f6ad921ca98: jne    0x00007f6ad921cb86  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.07%    0.05%  ││││││││  0x00007f6ad921ca9e: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.08%    0.10%  ││││││││  0x00007f6ad921caa0: test   %rcx,%rcx
                  ││││││││  0x00007f6ad921caa3: jne    0x00007f6ad921d06d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.05%    0.06%  ││││││││  0x00007f6ad921caa9: vmovd  %xmm1,%ecx
  0.08%    0.23%  ││││││││  0x00007f6ad921caad: cmp    $0x40,%ecx
                  ││││││││  0x00007f6ad921cab0: jge    0x00007f6ad921d0a5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.04%    0.07%  ││││││││  0x00007f6ad921cab6: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.09%    0.10%  ││││││││  0x00007f6ad921cab9: vmovq  %xmm3,%rcx
  0.05%    0.03%  ││││││││  0x00007f6ad921cabe: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 269)
  0.17%    0.18%  ││││││││  0x00007f6ad921cac1: mov    %rbx,%rcx
  0.06%    0.05%  ││││││││  0x00007f6ad921cac4: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.09%    0.08%  ││││││││  0x00007f6ad921cac8: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.03%    0.02%  ││││││││  0x00007f6ad921cacb: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.16%    0.19%  ││││││││  0x00007f6ad921cacf: vmovq  %xmm0,%r10
  0.04%    0.03%  ││││││││  0x00007f6ad921cad4: shr    $0x3,%r10
  0.08%    0.08%  ││││││││  0x00007f6ad921cad8: mov    %r10d,(%rcx)
  0.02%    0.02%  ││││││││  0x00007f6ad921cadb: mov    %rcx,%r10
  0.17%    0.14%  ││││││││  0x00007f6ad921cade: shr    $0x9,%r10
  0.02%    0.03%  ││││││││  0x00007f6ad921cae2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.14%    0.12%  ││││││││  0x00007f6ad921cae6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f6ad921d235
  0.05%    0.07%  ││││││││  0x00007f6ad921caeb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f6ad921caf2: jne    0x00007f6ad921cd11
  0.12%    0.13%  ││││││││  0x00007f6ad921caf8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.02%    0.04%  ││││││││  0x00007f6ad921cafc: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.08%    0.11%  ││││││││  0x00007f6ad921cb00: cmp    $0x40,%ecx
                  ││││││││  0x00007f6ad921cb03: jg     0x00007f6ad921d0e5  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.07%    0.05%  ││││││││  0x00007f6ad921cb09: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.36%    0.41%  ││││││││  0x00007f6ad921cb0c: mov    %r9,%rdi
  0.01%    0.01%  ││││││││  0x00007f6ad921cb0f: and    %rsi,%rdi          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.16%    0.14%  ││││││││  0x00007f6ad921cb12: test   %rdi,%rdi
                  ││││││││  0x00007f6ad921cb15: jne    0x00007f6ad921cb90  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.09%    0.07%  ││││││││  0x00007f6ad921cb17: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.10%    0.10%  ││││││││  0x00007f6ad921cb19: test   %rdi,%rdi
                  ││││││││  0x00007f6ad921cb1c: jne    0x00007f6ad921d10d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.02%    0.02%  ││││││││  0x00007f6ad921cb22: cmp    $0x40,%ecx
                  ││││││││  0x00007f6ad921cb25: jge    0x00007f6ad921d131  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.12%    0.16%  ││││││││  0x00007f6ad921cb2b: or     %rsi,%r9
  0.03%    0.05%  ││││││││  0x00007f6ad921cb2e: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.13%    0.08%  ││││││││  0x00007f6ad921cb32: add    $0x20,%rbx
  0.01%    0.01%  ││││││││  0x00007f6ad921cb36: shr    $0x3,%r10
  0.12%    0.14%  ││││││││  0x00007f6ad921cb3a: mov    %r10d,(%rbx)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.07%    0.10%  ││││││││  0x00007f6ad921cb3d: mov    %rbx,%r10
  0.11%    0.12%  ││││││││  0x00007f6ad921cb40: add    $0x5,%r14d
  0.03%    0.05%  ││││││││  0x00007f6ad921cb44: mov    %r14d,0xc(%rdx)    ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.10%    0.19%  ││││││││  0x00007f6ad921cb48: shr    $0x9,%r10
  0.03%    0.05%  ││││││││  0x00007f6ad921cb4c: mov    %r12b,(%r8,%r10,1)  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.13%    0.21%  ││││││││  0x00007f6ad921cb50: xor    %eax,%eax
  0.02%    0.04%  ││││││││  0x00007f6ad921cb52: add    $0x60,%rsp
  0.12%    0.10%  ││││││││  0x00007f6ad921cb56: pop    %rbp
  0.04%    0.05%  ││││││││  0x00007f6ad921cb57: test   %eax,0x187504a3(%rip)        # 0x00007f6af196d000
                  ││││││││                                                ;   {poll_return}
  0.08%    0.14%  ││││││││  0x00007f6ad921cb5d: retq   
                  ↘│││││││  0x00007f6ad921cb5e: mov    $0x1,%ebp
                   │││╰│││  0x00007f6ad921cb63: jmpq   0x00007f6ad921c82d
                   ↘││ │││  0x00007f6ad921cb68: mov    $0x1,%ebp
                    ││ ╰││  0x00007f6ad921cb6d: jmpq   0x00007f6ad921c890
                    ↘│  ││  0x00007f6ad921cb72: mov    $0x1,%ebp
                     │  ╰│  0x00007f6ad921cb77: jmpq   0x00007f6ad921c96b
                     ↘   │  0x00007f6ad921cb7c: mov    $0x1,%ebp
                         ╰  0x00007f6ad921cb81: jmpq   0x00007f6ad921ca11
                            0x00007f6ad921cb86: mov    $0x1,%ebp
....................................................................................................
 17.23%   18.31%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 483 (865 bytes) 

                     0x00007f6ad9216eb7: shr    $0x3,%r8
                     0x00007f6ad9216ebb: mov    %r8d,(%rdi)
                     0x00007f6ad9216ebe: shr    $0x9,%r10
                     0x00007f6ad9216ec2: movabs $0x7f6aea375000,%r8
                     0x00007f6ad9216ecc: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6ad9216ed0: jmpq   0x00007f6ad9217355
  0.31%    0.25%     0x00007f6ad9216ed5: mov    0x2c(%r12,%r8,8),%r9d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@189 (line 313)
  0.25%    0.08%     0x00007f6ad9216eda: mov    0x8(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007f6ad9217fe1
  0.57%    0.29%     0x00007f6ad9216edf: lea    (%r12,%r9,8),%r8
           0.00%     0x00007f6ad9216ee3: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007f6ad9216ee9: je     0x00007f6ad9216fa3
  0.06%    0.01%  │  0x00007f6ad9216eef: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f6ad9216ef5: jne    0x00007f6ad9217ac9  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.04%    0.00%  │  0x00007f6ad9216efb: mov    0x18(%r8),%eax     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%           │  0x00007f6ad9216eff: mov    0x10(%r11),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
                  │                                                ; implicit exception: dispatches to 0x00007f6ad92180c1
                  │  0x00007f6ad9216f03: cmp    $0x40,%eax
                  │  0x00007f6ad9216f06: jg     0x00007f6ad9217d85  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.05%    0.02%  │  0x00007f6ad9216f0c: mov    $0x1,%ebx
  0.03%    0.00%  │  0x00007f6ad9216f11: mov    %eax,%ecx
                  │  0x00007f6ad9216f13: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.12%    0.04%  │  0x00007f6ad9216f16: mov    %r9,%rcx
                  │  0x00007f6ad9216f19: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%           │  0x00007f6ad9216f1c: test   %rcx,%rcx
                  │  0x00007f6ad9216f1f: jne    0x00007f6ad9217542  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.05%    0.00%  │  0x00007f6ad9216f25: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.01%  │  0x00007f6ad9216f27: test   %rcx,%rcx
                  │  0x00007f6ad9216f2a: jne    0x00007f6ad9217dd9  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.03%  │  0x00007f6ad9216f30: cmp    $0x40,%eax
                  │  0x00007f6ad9216f33: jge    0x00007f6ad9217e25  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.02%  │  0x00007f6ad9216f39: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.00%  │  0x00007f6ad9216f3d: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%           │  0x00007f6ad9216f41: or     %r9,%rbx
  0.01%    0.02%  │  0x00007f6ad9216f44: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.03%    0.01%  │  0x00007f6ad9216f48: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%           │  0x00007f6ad9216f4c: mov    %ebp,%r9d
  0.05%           │  0x00007f6ad9216f4f: inc    %r9d
  0.04%    0.00%  │  0x00007f6ad9216f52: mov    %r9d,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.02%    0.01%  │  0x00007f6ad9216f56: mov    0xc(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007f6ad92180d5
  0.03%    0.01%  │  0x00007f6ad9216f5b: cmp    %r9d,%ebp
                  │  0x00007f6ad9216f5e: jae    0x00007f6ad9217a79
  0.03%    0.02%  │  0x00007f6ad9216f64: mov    0x8(%r12,%rcx,8),%r9d
  0.01%    0.01%  │  0x00007f6ad9216f69: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f6ad9216f70: jne    0x00007f6ad9217b15  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%           │  0x00007f6ad9216f76: lea    (%r12,%rcx,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.01%    0.01%  │  0x00007f6ad9216f7a: lea    0x10(%r9,%rbp,4),%r9
  0.02%    0.01%  │  0x00007f6ad9216f7f: mov    %r8,%rcx
  0.02%    0.00%  │  0x00007f6ad9216f82: shr    $0x3,%rcx
  0.00%    0.01%  │  0x00007f6ad9216f86: mov    %ecx,(%r9)
  0.16%    0.05%  │  0x00007f6ad9216f89: mov    %r9,%r8
  0.00%    0.00%  │  0x00007f6ad9216f8c: shr    $0x9,%r8
  0.02%    0.00%  │  0x00007f6ad9216f90: movabs $0x7f6aea375000,%r9
           0.00%  │  0x00007f6ad9216f9a: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.07%    0.06%  │  0x00007f6ad9216f9e: jmpq   0x00007f6ad921736a  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.25%    0.29%  ↘  0x00007f6ad9216fa3: mov    0x18(%r8),%eax     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f6ad9216fa7: mov    0x10(%r11),%r9     ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f6ad9218019
  0.02%    0.02%     0x00007f6ad9216fab: cmp    $0x40,%eax
                     0x00007f6ad9216fae: jg     0x00007f6ad92178cd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.11%     0x00007f6ad9216fb4: mov    $0x1,%ebx
  0.09%    0.07%     0x00007f6ad9216fb9: mov    %eax,%ecx
  0.00%              0x00007f6ad9216fbb: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.45%     0x00007f6ad9216fbe: mov    %r9,%rcx
                     0x00007f6ad9216fc1: and    %rbx,%rcx
  0.01%    0.02%     0x00007f6ad9216fc4: test   %rcx,%rcx
                     0x00007f6ad9216fc7: jne    0x00007f6ad921736a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.09%     0x00007f6ad9216fcd: cmp    $0x40,%eax
                     0x00007f6ad9216fd0: jge    0x00007f6ad9217921  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.18%     0x00007f6ad9216fd6: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f6ad9216fda: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%     0x00007f6ad9216fde: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.05%     0x00007f6ad9216fe1: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.22%     0x00007f6ad9216fe5: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f6ad921802d
  0.30%    0.31%     0x00007f6ad9216fea: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f6ad9216ff1: jne    0x00007f6ad9217721
  0.25%    0.16%     0x00007f6ad9216ff7: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f6ad9216ffb: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.17%     0x00007f6ad9216fff: cmp    $0x40,%ecx
                     0x00007f6ad9217002: jg     0x00007f6ad9217975  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.14%     0x00007f6ad9217008: mov    $0x1,%edi
  0.07%    0.04%     0x00007f6ad921700d: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.34%     0x00007f6ad9217010: mov    %rbx,%rsi
  0.01%    0.01%     0x00007f6ad9217013: and    %rdi,%rsi          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f6ad9217016: test   %rsi,%rsi
                     0x00007f6ad9217019: jne    0x00007f6ad9217512  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.16%     0x00007f6ad921701f: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.02%     0x00007f6ad9217021: test   %rsi,%rsi
                     0x00007f6ad9217024: jne    0x00007f6ad92179cd  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.11%     0x00007f6ad921702a: cmp    $0x40,%ecx
                     0x00007f6ad921702d: jge    0x00007f6ad9217a21  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%     0x00007f6ad9217033: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f6ad9217036: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.02%     0x00007f6ad921703a: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.08%     0x00007f6ad921703e: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007f6ad9217042: mov    %ecx,%ebp
  0.02%    0.00%     0x00007f6ad9217044: inc    %ebp               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.04%     0x00007f6ad9217046: mov    %ebp,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.08%     0x00007f6ad921704a: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f6ad9218045
  0.02%    0.02%     0x00007f6ad921704f: cmp    %eax,%ecx
                     0x00007f6ad9217051: jae    0x00007f6ad92176c9
  0.02%    0.02%     0x00007f6ad9217057: mov    0x8(%r12,%rdi,8),%esi
  0.07%    0.06%     0x00007f6ad921705c: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f6ad9217062: jne    0x00007f6ad9217771  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.14%     0x00007f6ad9217068: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6ad921706c: mov    %r9,%rsi
  0.04%    0.01%     0x00007f6ad921706f: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.07%     0x00007f6ad9217073: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.15%     0x00007f6ad9217077: lea    0x10(%r9,%rcx,4),%r14
  0.00%    0.02%     0x00007f6ad921707c: mov    %esi,(%r14)
  0.06%    0.11%     0x00007f6ad921707f: mov    %r14,%rsi
  0.04%    0.04%     0x00007f6ad9217082: shr    $0x9,%rsi
  0.17%    0.19%     0x00007f6ad9217086: movabs $0x7f6aea375000,%r14
                     0x00007f6ad9217090: mov    %r12b,(%r14,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.06%     0x00007f6ad9217094: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f6ad9218061
  0.05%    0.08%     0x00007f6ad9217099: vmovd  %r8d,%xmm3
  0.15%    0.24%     0x00007f6ad921709e: vmovd  %ebp,%xmm0
           0.00%     0x00007f6ad92170a2: mov    %edi,%r14d
  0.04%    0.06%     0x00007f6ad92170a5: mov    %r10d,0x94(%rsp)
  0.07%    0.03%     0x00007f6ad92170ad: mov    %r13d,0x9c(%rsp)
  0.16%    0.18%     0x00007f6ad92170b5: mov    %r11,%r13
           0.00%     0x00007f6ad92170b8: mov    %rdx,0x30(%rsp)
  0.05%    0.01%     0x00007f6ad92170bd: vmovd  %ecx,%xmm1
  0.07%    0.06%     0x00007f6ad92170c1: movslq %ecx,%r10
  0.16%    0.20%     0x00007f6ad92170c4: lea    (%r9,%r10,4),%r8   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6ad92170c8: mov    %r8,%rdi
  0.05%    0.04%     0x00007f6ad92170cb: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f6ad92170cf: vmovd  %xmm3,%r10d
  0.25%    0.16%     0x00007f6ad92170d4: lea    (%r12,%r10,8),%r11
                     0x00007f6ad92170d8: mov    %ecx,%r10d
  0.03%    0.04%     0x00007f6ad92170db: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.09%     0x00007f6ad92170df: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f6ad92170e5: jne    0x00007f6ad9216e50  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.11%     0x00007f6ad92170eb: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f6ad92170ef: cmp    $0x40,%ecx
                     0x00007f6ad92170f2: jg     0x00007f6ad9217ba9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%     0x00007f6ad92170f8: vmovq  %r11,%xmm2
  0.06%    0.02%     0x00007f6ad92170fd: mov    $0x1,%edx
  0.15%    0.12%     0x00007f6ad9217102: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.06%     0x00007f6ad9217105: mov    %rbx,%r11
  0.23%    0.11%     0x00007f6ad9217108: and    %rdx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6ad921710b: test   %r11,%r11
                     0x00007f6ad921710e: jne    0x00007f6ad921751c  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%     0x00007f6ad9217114: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.02%     0x00007f6ad9217116: test   %r11,%r11
                     0x00007f6ad9217119: jne    0x00007f6ad9217bd1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.09%     0x00007f6ad921711f: cmp    $0x40,%ecx
                     0x00007f6ad9217122: jge    0x00007f6ad9217bf5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007f6ad9217128: vmovq  %xmm2,%r11
  0.04%    0.03%     0x00007f6ad921712d: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@83 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.04%     0x00007f6ad9217131: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.19%     0x00007f6ad9217134: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6ad9217138: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6ad9218079
  0.16%    0.09%     0x00007f6ad921713d: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f6ad9217143: jne    0x00007f6ad921788d
  0.06%    0.04%     0x00007f6ad9217149: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.01%     0x00007f6ad921714d: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%              0x00007f6ad9217151: cmp    $0x40,%ecx
                     0x00007f6ad9217154: jg     0x00007f6ad9217c95  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%     0x00007f6ad921715a: vmovq  %r11,%xmm2
  0.05%    0.00%     0x00007f6ad921715f: mov    $0x1,%edx
  0.17%    0.11%     0x00007f6ad9217164: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.19%     0x00007f6ad9217167: mov    %rbx,%r11
  0.10%    0.13%     0x00007f6ad921716a: and    %rdx,%r11
  0.01%    0.01%     0x00007f6ad921716d: test   %r11,%r11
                     0x00007f6ad9217170: jne    0x00007f6ad9217530  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%     0x00007f6ad9217176: cmp    $0x40,%ecx
                     0x00007f6ad9217179: jge    0x00007f6ad9217cc1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.12%     0x00007f6ad921717f: vmovq  %xmm2,%r11
  0.14%    0.24%     0x00007f6ad9217184: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f6ad9217188: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.09%     0x00007f6ad921718b: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.13%     0x00007f6ad921718f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f6ad9218091
  0.38%    0.44%     0x00007f6ad9217194: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f6ad921719b: jne    0x00007f6ad92178ad
  0.08%    0.15%     0x00007f6ad92171a1: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007f6ad92171a5: vmovq  %r11,%xmm3
  0.04%    0.08%     0x00007f6ad92171aa: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.23%     0x00007f6ad92171ae: vmovd  %r11d,%xmm4
  0.14%    0.18%     0x00007f6ad92171b3: cmp    $0x40,%r11d
                     0x00007f6ad92171b7: jg     0x00007f6ad9217cf1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007f6ad92171bd: mov    $0x1,%edx
  0.03%    0.04%     0x00007f6ad92171c2: mov    %r11d,%ecx
  0.12%    0.17%     0x00007f6ad92171c5: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.27%     0x00007f6ad92171c8: mov    %rbx,%r11
  0.07%    0.07%     0x00007f6ad92171cb: and    %rdx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.05%     0x00007f6ad92171ce: test   %r11,%r11
                     0x00007f6ad92171d1: jne    0x00007f6ad9217538  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.06%     0x00007f6ad92171d7: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.05%     0x00007f6ad92171d9: test   %r11,%r11
                     0x00007f6ad92171dc: jne    0x00007f6ad9217d29  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.12%     0x00007f6ad92171e2: mov    %ecx,%r11d
  0.01%    0.01%     0x00007f6ad92171e5: cmp    $0x40,%r11d
                     0x00007f6ad92171e9: jge    0x00007f6ad9217d51  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%     0x00007f6ad92171ef: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.07%     0x00007f6ad92171f3: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.15%     0x00007f6ad92171f6: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%     0x00007f6ad92171fa: cmp    %eax,%r10d
                     0x00007f6ad92171fd: jae    0x00007f6ad9217835  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%     0x00007f6ad9217203: vmovq  %xmm2,%r10
  0.05%    0.06%     0x00007f6ad9217208: mov    0x34(%r10),%ecx    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.19%     0x00007f6ad921720c: mov    %rdi,%r11
  0.05%    0.06%     0x00007f6ad921720f: vmovq  %xmm3,%r10
  0.04%    0.04%     0x00007f6ad9217214: shr    $0x3,%r10
  0.05%    0.08%     0x00007f6ad9217218: mov    %r10d,(%rdi)
  0.14%    0.13%     0x00007f6ad921721b: shr    $0x9,%r11
  0.03%    0.03%     0x00007f6ad921721f: movabs $0x7f6aea375000,%r10
  0.05%    0.05%     0x00007f6ad9217229: mov    %r12b,(%r10,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.11%     0x00007f6ad921722d: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f6ad92180a9
  0.14%    0.17%     0x00007f6ad9217232: lea    (%r12,%rcx,8),%r10
  0.04%    0.05%     0x00007f6ad9217236: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f6ad921723d: jne    0x00007f6ad92172d8  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007f6ad9217243: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@95 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 13.92%   11.96%  <total for region 4>

....[Hottest Regions]...............................................................................
 28.33%   28.71%         C2, level 4  com.google.re2j.Machine::match, version 524 (1195 bytes) 
 26.32%   27.43%         C2, level 4  com.google.re2j.Machine::step, version 483 (350 bytes) 
 17.23%   18.31%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 501 (893 bytes) 
 13.92%   11.96%         C2, level 4  com.google.re2j.Machine::step, version 483 (865 bytes) 
  5.92%    6.67%         C2, level 4  com.google.re2j.Machine::step, version 483 (107 bytes) 
  2.56%    2.53%         C2, level 4  com.google.re2j.Machine::step, version 483 (59 bytes) 
  1.51%    1.52%         C2, level 4  com.google.re2j.Machine::match, version 524 (73 bytes) 
  0.63%    0.57%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.13%    0.02%   [kernel.kallsyms]  [unknown] (134 bytes) 
  0.12%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 533 (8 bytes) 
  0.12%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 524 (421 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 533 (28 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 533 (23 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Pattern::find, version 533 (116 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 533 (0 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 533 (52 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.Pattern::find, version 533 (99 bytes) 
  2.50%    1.86%  <...other 462 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.72%   48.60%         C2, level 4  com.google.re2j.Machine::step, version 483 
 30.14%   30.45%         C2, level 4  com.google.re2j.Machine::match, version 524 
 17.23%   18.31%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 501 
  2.25%    1.35%   [kernel.kallsyms]  [unknown] 
  0.70%    0.34%         C2, level 4  com.google.re2j.Pattern::find, version 533 
  0.08%    0.05%         C2, level 4  java.util.Collections::shuffle, version 553 
  0.06%    0.01%              [vdso]  [unknown] 
  0.04%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.02%      hsdis-amd64.so  decode_instructions 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 607 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%                    libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.01%    0.02%        libc-2.26.so  _IO_fflush 
  0.01%                 libc-2.26.so  __GI___libc_write 
  0.01%    0.01%           libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.45%    0.34%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.84%  <totals>

....[Distribution by Source]........................................................................
 96.92%   97.77%         C2, level 4
  2.25%    1.35%   [kernel.kallsyms]
  0.41%    0.47%           libjvm.so
  0.20%    0.29%        libc-2.26.so
  0.06%    0.06%  libpthread-2.26.so
  0.06%    0.01%              [vdso]
  0.05%    0.02%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%    0.00%         C1, level 3
  0.00%                             
  0.00%    0.00%        runtime stub
  0.00%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score      Error  Units
Re2jFindRegex.testCombine       thrpt   20  8498.181 ± 1214.982  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN               ---
